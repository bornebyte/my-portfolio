# Bornebyte Portfolio

The main portfolio is a cinematic landing page with independent, full-page portfolio sites behind its doors.

## Main entry points

- `index.live.html` — interactive main portfolio and cinematic door navigation.
- `index.html` — alternate rendered main page.

Serve the project root with a static server, then open `/index.live.html`. The live page keeps each portfolio in its own folder and navigates to its HTML file as a normal page load.

## Portfolio doors

| Door | Standalone entry point |
| --- | --- |
| Web Developer | `webdev_portfolio/index.live.html` |
| AI Engineer | `appdev_portfolio/index.live.html` |
| DevOps Engineerer | `UIUX_portfolio/index.live.html` |
| BlockChain Engineerer | `graphic/index.live.html` |

BlockChain Engineer and UI/UX are distinct portfolios. `graphic/index.live.html` is the BlockChain Engineer folder's interactive entry point; `graphic/index.html` is its rendered capture. Graphic assets, styles, and scripts remain within `graphic/`.

DevOps and Blockchain have no standalone destinations and are not assigned doors. Captured HTML under `assets/other/` is legacy material, not a portfolio route.

## Local preview

From the project root, run a static server such as:

```sh
npx serve .
```

Use the same server origin for refresh and browser history checks. Directly opening the standalone entry-point URLs should load each portfolio independently.

## Project notes

- `REPORT.md` records the current integration and route status.
- `REBUILD.md` and capture folders contain source/reference material from earlier reconstruction work.
- Backups of files changed during integration are in `backups/`.
