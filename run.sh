#!/usr/bin/env bash
#
# Run the portfolio locally.
#
# Usage:
#   ./run.sh [PORT]
#   PORT=9000 ./run.sh
#
# Behaviour:
#   * Stops any previous instance of this project (and any process still
#     holding the chosen port) before starting a fresh one.
#   * Prints the URL to open and keeps the server in the foreground; press
#     Ctrl+C to stop it.
#   * Falls back to the next free port if the requested one stays busy.
#   * Cleans up its pid file and child process on exit or interruption.
#

set -u

PROJECT_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
DEFAULT_PORT="${PORT:-${1:-8000}}"
PID_FILE="${PROJECT_ROOT}/.run.pid"
LOG_FILE="${PROJECT_ROOT}/.run.log"
MAX_PORT_TRIES=21

# ---------- helpers -----------------------------------------------------------

log() { printf '%s\n' "$*"; }
err() { printf 'ERROR: %s\n' "$*" >&2; }

port_in_use() {
    local port="$1"
    # LISTEN sockets only; ss is available on virtually all Linux setups.
    ss -ltn 2>/dev/null | awk '{print $4}' | grep -Eq "[:.]${port}$"
}

kill_pid() {
    local pid="$1"
    [[ -z "$pid" || "$pid" == "$$" ]] && return 0
    if ! kill -0 "$pid" 2>/dev/null; then
        return 0
    fi
    kill -TERM "$pid" 2>/dev/null || true
    local i
    for i in $(seq 1 25); do
        kill -0 "$pid" 2>/dev/null || return 0
        sleep 0.2
    done
    kill -KILL "$pid" 2>/dev/null || true
    wait "$pid" 2>/dev/null || true
}

kill_port_listeners() {
    local port="$1"
    local pids
    pids="$(lsof -tiTCP:""$port"" -sTCP:LISTEN 2>/dev/null || true)"
    if [[ -n "$pids" ]]; then
        local pid
        for pid in $pids; do
            [[ "$pid" == "$$" ]] && continue
            kill_pid "$pid"
        done
    fi
    # fuser as a safety net (ignores failures).
    fuser -k "${port}/tcp" >/dev/null 2>&1 || true
}

cleanup() {
    if [[ -n "${SERVER_PID:-}" ]] && kill -0 "$SERVER_PID" 2>/dev/null; then
        kill_pid "$SERVER_PID"
    fi
    rm -f "$PID_FILE"
}

# ---------- pre-flight --------------------------------------------------------

if ! command -v python3 >/dev/null 2>&1; then
    err "python3 is required but was not found on PATH."
    exit 1
fi

if [[ ! -f "${PROJECT_ROOT}/index.live.html" ]]; then
    err "index.live.html not found in ${PROJECT_ROOT}."
    exit 1
fi

# Validate the requested port.
PORT="$DEFAULT_PORT"
if ! [[ "$PORT" =~ ^[0-9]+$ ]]; then
    err "Port must be a number (got '${PORT}')."
    exit 1
fi
if (( PORT < 1 || PORT > 65535 )); then
    err "Port must be between 1 and 65535 (got ${PORT})."
    exit 1
fi

# Ports below 1024 need root on most systems.
if (( PORT < 1024 )) && (( EUID != 0 )); then
    log "Port ${PORT} requires elevated privileges; using 8080 instead."
    PORT=8080
fi

# ---------- stop any previous instance ---------------------------------------

if [[ -f "$PID_FILE" ]]; then
    old_pid="$(cat "$PID_FILE" 2>/dev/null | tr -d '[:space:]')"
    if [[ -n "$old_pid" ]]; then
        kill_pid "$old_pid"
    fi
    rm -f "$PID_FILE"
fi

# Kill anything still listening on the chosen port (a previous instance that
# lost its pid file, or a leftover process).
kill_port_listeners "$PORT"

# Wait for the port to become free; if it stays busy, bump the port.
i=0
while port_in_use "$PORT" && (( i < MAX_PORT_TRIES )); do
    kill_port_listeners "$PORT"
    sleep 0.3
    i=$((i + 1))
done

if port_in_use "$PORT"; then
    # Try a few neighbouring ports instead of failing hard.
    found=0
    for j in $(seq 1 20); do
        try=$((PORT + j))
        if (( try > 65535 )); then break; fi
        if ! port_in_use "$try"; then
            log "Port ${PORT} is still busy; using ${try} instead."
            PORT="$try"
            found=1
            break
        fi
    done
    if (( found == 0 )); then
        err "Could not find a free port near ${DEFAULT_PORT}. Stop the process using it and retry."
        exit 1
    fi
fi

# ---------- start the server --------------------------------------------------

trap cleanup INT TERM EXIT

log "Starting portfolio from ${PROJECT_ROOT}"
log "Open: http://localhost:${PORT}/index.live.html"
log "Press Ctrl+C to stop."

# Run in the background so we can wait on it and clean up on signals, while
# still showing output in the terminal.
python3 -m http.server "$PORT" --directory "$PROJECT_ROOT" >"$LOG_FILE" 2>&1 &
SERVER_PID=$!
printf '%s\n' "$SERVER_PID" > "$PID_FILE"

# Give it a moment to bind and fail fast with a readable error.
sleep 0.6
if ! kill -0 "$SERVER_PID" 2>/dev/null; then
    err "Server exited immediately."
    if [[ -s "$LOG_FILE" ]]; then
        err "Last log output:"
        tail -n 20 "$LOG_FILE" >&2
    fi
    exit 1
fi
if grep -qi "address already in use\|permission denied" "$LOG_FILE" 2>/dev/null; then
    err "Server reported a bind error:"
    tail -n 20 "$LOG_FILE" >&2
    # try once more on the next port
    kill_pid "$SERVER_PID"
    SERVER_PID=""
    exit 1
fi

# Follow the log so the user sees requests, but keep the server as the
# foreground job identity-wise (Ctrl+C still stops everything).
tail -f "$LOG_FILE" --pid="$SERVER_PID" 2>/dev/null &
TAIL_PID=$!
wait "$SERVER_PID" 2>/dev/null
STATUS=$?
kill "$TAIL_PID" 2>/dev/null || true
wait "$TAIL_PID" 2>/dev/null || true

if (( STATUS != 0 )); then
    err "Server stopped with exit code ${STATUS}."
    [[ -s "$LOG_FILE" ]] && tail -n 20 "$LOG_FILE" >&2
fi
exit "$STATUS"
