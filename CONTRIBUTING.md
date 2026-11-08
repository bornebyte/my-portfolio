# Contributing to Bornebyte

Thanks for your interest in contributing.

## Before You Start

- Open an issue describing the change before large edits.
- Keep changes focused and avoid unrelated refactors.
- Preserve the static-site nature of the project (no build system, no
  runtime dependencies) unless discussed first.

## Development Setup

```bash
./run.sh
```

Open `http://localhost:8000/index.live.html`.

## Making Changes

1. Create a branch from `main`.
2. Make your change.
3. Run the server and exercise the affected page manually.
4. Check for broken local asset references in any HTML you edited.
5. Commit with a clear conventional or descriptive message.

## Guidelines

- Match existing formatting, naming, and animation patterns.
- Keep HTML, CSS, and JavaScript inline unless there is a clear reason to
  extract a file.
- Do not delete or rename hashed assets without updating all references.
- Do not commit generated local files such as `.run.pid` or `.run.log`.

## Pull Requests

- Describe the motivation and user-visible effect.
- List manual verification performed.
- Include screenshots or recordings for visual changes when possible.

## Reporting Bugs

Include the page URL, browser/version, reproduction steps, and expected vs.
actual behavior.
