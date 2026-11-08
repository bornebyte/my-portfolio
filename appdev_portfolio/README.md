# therishithakor.com — captured by Enrichr

Captured 2026-11-02T11:55:32.324Z from https://therishithakor.com/app-developer/

## Open it

Two entry points, for two purposes:

- `index.live.html` — the page as the server sent it, before any script ran,
  with the scripts and every asset pointed at local copies. The site's own
  JavaScript (GSAP, ScrollTrigger, Lenis, three.js…) runs and the page plays
  the way the original does. **Open this one to see it animate.**
- `index.html` — the page **as rendered**, a frozen snapshot after the scripts
  had run. Exact for how it looked at capture, but scripts re-running on a DOM
  they already modified can leave scroll-driven sections blank.

Both need no network.

**Serve it rather than double-clicking it.** Browsers refuse to run
`<script type="module">` from a `file://` address, and most modern sites (Vite,
Next, Astro) are built from modules — opened directly, their scripts, animation
libraries included, silently do not run and everything they reveal stays hidden.
From this folder:

    python3 -m http.server 8000     # then open http://localhost:8000/
    # or: npx serve

What will not work: scripts that call an API, anything needing a session, and
streamed video. Those fail against a filesystem in any static capture. The
scripts are included under `assets/js/` so you can read them.

## What is here

| Path | What it is |
|---|---|
| `index.html` | Rendered DOM, asset references rewritten to local paths |
| `original/` | Untouched rendered and server-side HTML |
| `styles/used.css` | Only the CSS that actually applied — 57% of what shipped |
| `assets/` | 18 downloaded files (1.1 MB) |
| `screenshots/` | Viewport captures, including each responsive breakpoint |
| `analysis/motion-frames/` | One frame per scroll stop, in order — what the page looks like in motion |
| `analysis/` | The machine-readable findings below |
| `REPORT.md` | Human-readable summary of everything found |
| `REBUILD.md` | Structured rebuild brief — design system, motion, structure |
| `analysis/motion-score.json`, `analysis/motion-score.gsap.js` | Every GSAP animation placed on the scroll and ordered, and the same arrangement as runnable code |
| `analysis/full-result.json` | The complete raw extraction, nothing elided |

## What was found

- **320** DOM elements, **18** assets, **20** requests
- **0** scripted animations, **3** `@keyframes` rules, **0** scroll triggers
- **14** motion tracks measured by scrolling — see below
- **86** design tokens, **2** font faces
- **4** viewports measured, **192** responsive style changes
- **14** hover/focus/active states captured
- **4** videos, **252** words read off the pixels by OCR
- Technologies: Netlify

## Rebuilding from this

Start with `styles/used.css` and `analysis/design-tokens.json` — together they
are the design system. `analysis/responsive.json` names every element whose
layout changes and what it changes to at each breakpoint;
`analysis/interaction-states.json` has the hover, focus, and active styling that
a static snapshot cannot show. `analysis/animations.json` carries the motion.

For motion, read `analysis/scroll-motion.json` before `analysis/animations.json`.
The first was measured by scrolling this page and diffing computed styles, so it
holds regardless of which library produced the motion — and on a site that
bundles its animation library, it is the only one of the two with anything in it.

If `scroll-motion.json` reports no tracks on a page that plainly moves, the
motion is inside a canvas: the DOM genuinely does not move, and
`analysis/motion-frames/` is the only record of what happens. Those frames are
also the right thing to hand a model — read as images, not as a video file.
