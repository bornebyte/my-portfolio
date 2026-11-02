# Enrichr Extraction Report

**URL:** `https://theBornebytethakor.com/`
**Request ID:** `extract-1793551144260-j0kyllsb`
**Completed:** 2026-11-01T16:39:44.815Z
**Load time:** 40.55s

## Executive Summary

| Metric | Value |
| --- | --- |
| DOM elements | 623 |
| Images | 5 |
| Animations | 0 |
| Keyframes (GSAP) | 5 |
| ScrollTriggers (GSAP) | 0 |
| Media / video elements | 0 |
| Total artefacts | 74 |
| Tech detected | Animation: lenis, 3D: custom-webgl, Netlify, Canvas 2D animation |

## Layer 1 — DOM

- **Elements:** 623
- **Links:** 11
- **Images:** 5
- **Headings:** 15
- **Markers:** Title, Meta, Links, Images, Headings, SVG
- **Technologies:** none
- **Time:** 96ms

_No <video>/<audio>/<source> media elements found on the page._

## Layer 2 — Animations

- **Libraries:** lenis
- **Animation count:** 0
- **Time:** 6808ms
- **Screenshot:** `/captures/extract-1793551144260-j0kyllsb-layer2.png`

## Layer 3 — WebGL

- **Libraries:** custom-webgl
- **WebGL version:** v2
- **Canvases:** 4
- **Shaders:** 0
- **Draw calls:** 0
- **Has WebGL rendering:** yes
- **Time:** 3345ms
- **Screenshot:** `/captures/extract-1793551144260-j0kyllsb-layer3.png`

### Artefacts

| Name | Type | Confidence |
| --- | --- | --- |
| custom-webgl | library | 0.9 |
| 4 canvas | canvas | 1 |

## Design System

### CSS custom properties (57)

```css
:root {
  --font: 'Onest',ui-sans-serif,system-ui,-apple-system,'Segoe UI',sans-serif;
  --chip-bg: rgba(242,238,235,.5);
  --base: #EAE6E2;
  --wall-hi: #E4DFDB;
  --scrim: rgba(26,24,24,.3);
  --text-watermark: 13rem;
  --surface-2: #D3CBC8;
  --lift: rgba(26,24,24,.3);
  --accent: #6B5C5C;
  --e-soft: cubic-bezier(.16,1,.3,1);
  --floor: #C2AE98;
  --bar-h: 3.5rem;
  --hero-from: #EEEAE6;
  --radius-card-sm: 1.25rem;
  --paint: #1A1818;
  --radius-control: .875rem;
  --line: #D5CDCA;
  --radius-pill: 9999px;
  --vig: rgba(240,236,232,.35);
  --ink: #1A1818;
  --floor-2: #A8937E;
  --room: #FBFAF8;
  --room-in: #ffdcae;
  --panel: #F0ECE9;
  --accent-to: #6B5C5C;
  --room-out: #22160d;
  --muted: #857878;
  --background: #E8E4E0;
  --outline-h: rgba(196,176,176,.18);
  --hero-mid: #E8E4E0;
  --fg-rgb: 26,24,24;
  --cord-shadow: .2;
  --radius-card: 2rem;
  --btn-badge-bg: #E8E4E0;
  --e-line: cubic-bezier(.215,.61,.355,1);
  --gut-lg: 5.5rem;
  --field: rgba(196,176,176,.12);
  --room-mid: #c98447;
  --e-spring: cubic-bezier(.22,1,.36,1);
  --casing: #F2EFEC;
  --subtle: #B5A8A8;
  --hero-to: #D8CDCA;
  --e-snap: cubic-bezier(.2,.8,.2,1);
  --spill: 255,196,128;
  --surface: #DED8D4;
  --rim: rgba(255,255,255,.95);
  --btn-bg: #1A1818;
  --container-shell: 88rem;
  --btn-badge-fg: #1A1818;
  --wall: #DAD4CF;
  --accent-from: #C4B0B0;
  --chip-bg-h: rgba(242,238,235,.85);
  --room-sh: rgba(26,24,24,.1);
  --btn-fg: #E8E4E0;
  --foreground: #1A1818;
  --chip-line: rgba(196,176,176,.45);
  --lamp: rgba(255,250,242,.9);
}
```

### Palette

| Colour | Elements | Seen on |
| --- | ---: | --- |
| `rgb(0, 0, 0)` | 457 | html.lenis, body.ready, a.skip |
| `rgb(26, 24, 24)` | 327 | html.lenis, body.ready, a.skip |
| `rgb(27, 27, 27)` | 48 | i |
| `rgb(232, 228, 224)` | 40 | body.ready, span.pill__in, span.pill__badge |
| `rgb(255, 255, 255)` | 18 | div.shell.navm__top, span.brand, nav.shell.navm__nav |
| `rgba(26, 24, 24, 0.6)` | 14 | svg, path, button#mClose |
| `rgba(255, 255, 255, 0.7)` | 13 | button#navClose, svg, path |
| `rgba(232, 228, 224, 0.85)` | 12 | a, button, li.st |
| `rgba(26, 24, 24, 0.9)` | 10 | li |
| `rgb(196, 176, 176)` | 9 | svg, path, div.msuccess__badge |
| `rgba(26, 24, 24, 0.72)` | 8 | button#holoOpen, div.shell.hero__bar, span |
| `rgba(255, 255, 255, 0.3)` | 7 | small |
| `rgba(232, 228, 224, 0.68)` | 6 | div.sf__bot, span, span.sf__legal |
| `rgb(213, 205, 202)` | 5 | span.pill__in, input, input#f-name |
| `rgba(26, 24, 24, 0.78)` | 5 | p.ch__date |
| `rgba(26, 24, 24, 0.82)` | 5 | p.ch__org |
| `rgba(26, 24, 24, 0.7)` | 4 | div.chip.clock, span.clock__date, p.eyebrow.rv |
| `rgba(26, 24, 24, 0.5)` | 4 | span.soft, span |
| `rgb(242, 239, 236)` | 4 | span.casing |
| `rgb(251, 250, 248)` | 4 | span.room |
| `rgb(43, 33, 18)` | 4 | span.plate |
| `rgba(196, 176, 176, 0.12)` | 4 | input, input#f-name, input#f-email |
| `rgba(232, 228, 224, 0.66)` | 3 | h3 |
| `rgba(255, 255, 255, 0.45)` | 3 | div.shell.navm__bot, span |

### Type scale

| Size / line-height | Weight | Family | Elements |
| --- | --- | --- | ---: |
| 184px / 184px | 700 | Onest, ui-sans-serif, system-ui, -apple-system, "Segoe UI", sans-serif | 40 |
| 16px / 24.8px | 400 | Onest, ui-sans-serif, system-ui, -apple-system, "Segoe UI", sans-serif | 10 |
| 16px / normal | 400 | Onest, ui-sans-serif, system-ui, -apple-system, "Segoe UI", sans-serif | 9 |
| 14px / normal | 500 | Onest, ui-sans-serif, system-ui, -apple-system, "Segoe UI", sans-serif | 9 |
| 15px / normal | 500 | Onest, ui-sans-serif, system-ui, -apple-system, "Segoe UI", sans-serif | 8 |
| 12px / normal | 500 | Onest, ui-sans-serif, system-ui, -apple-system, "Segoe UI", sans-serif | 7 |
| 16px / normal | 400 | Onest, ui-sans-serif, system-ui, -apple-system, "Segoe UI", sans-serif | 7 |
| 60px / normal | 600 | Onest, ui-sans-serif, system-ui, -apple-system, "Segoe UI", sans-serif | 7 |
| 13px / normal | 400 | Onest, ui-sans-serif, system-ui, -apple-system, "Segoe UI", sans-serif | 6 |
| 12px / normal | 600 | ui-monospace, "SF Mono", Menlo, Consolas, monospace | 5 |
| 34.4px / 37.152px | 600 | Onest, ui-sans-serif, system-ui, -apple-system, "Segoe UI", sans-serif | 5 |
| 17px / normal | 500 | Onest, ui-sans-serif, system-ui, -apple-system, "Segoe UI", sans-serif | 5 |
| 14.6888px / 16.8922px | 600 | Onest, ui-sans-serif, system-ui, -apple-system, "Segoe UI", sans-serif | 4 |
| 15px / normal | 400 | Onest, ui-sans-serif, system-ui, -apple-system, "Segoe UI", sans-serif | 4 |
| 14px / normal | 400 | Onest, ui-sans-serif, system-ui, -apple-system, "Segoe UI", sans-serif | 3 |

**Spacing:** `16px` / `8px` / `12px` / `4px` / `9.6px` / `24px` / `88px` / `8.8px` / `48px` / `17.6px` / `6.4px` / `28px`

**Radii:** `50%` / `9999px` / `115.607px 115.607px 0px 0px` / `136.008px 136.008px 0px 0px` / `14px` / `13.68px` / `999px` / `93.8454px 93.8454px 3.26419px 3.26419px` / `2.44814px` / `6.52838px 4.35225px 4.35225px 6.52838px` / `7.34442px` / `2.72016px`

**Shadows:** `rgba(255, 255, 255, 0.3) 0px 0.684px 0.684px 0px inset` / `rgba(255, 255, 255, 0.28) 0px 0px 0px 2.99217px inset, rgba(0, 0, 0, 0.07) 0px 0px 0px 4.08023px inset, rgba(255, 255, 255, 0.12) 0px 0px 0px 9.79256px inset, rgba(0, 0, 0, 0.08) 0px 0px 0px 11.1526px inset, rgba(0, 0, 0, 0.06) 0px 0px 0px 1px, rgba(26, 24, 24, 0.2) 4.08023px 6.80039px 12.2407px 0px, rgba(26, 24, 24, 0.08) -1.36008px 2.72016px 8.16047px 0px` / `rgba(26, 24, 24, 0.1) 5.44031px 0px 10.8806px 0px inset, rgba(26, 24, 24, 0.1) 0px 5.44031px 10.8806px 0px inset` / `rgba(0, 0, 0, 0.28) 0px 0px 0px 0.816047px inset, rgba(255, 255, 255, 0.05) 1.63209px 0px 0px 0px inset` / `rgba(0, 0, 0, 0.16) 0px 0px 0px 0.816047px inset, rgba(0, 0, 0, 0.28) 2.72016px 3.26419px 5.44031px 0px inset, rgba(255, 255, 255, 0.07) -1.63209px -1.63209px 2.72016px 0px inset` / `rgba(0, 0, 0, 0.4) 0px 1.36008px 2.72016px 0px, rgba(255, 250, 228, 0.7) 0px 0.816047px 0px 0px inset, rgba(88, 62, 22, 0.45) 0px -0.816047px 0px 0px inset` / `rgba(255, 238, 196, 0.55) 0px 0.761644px 0px, rgba(0, 0, 0, 0.25) 0px -0.408023px 0px` / `rgba(0, 0, 0, 0.22) 0px 0px 0px 0.952055px, rgba(0, 0, 0, 0.45) 2.44814px 4.08023px 5.44031px 0px, rgba(40, 26, 6, 0.55) -1.90411px -2.44814px 2.99217px 0px inset, rgba(255, 248, 222, 0.5) 1.36008px 1.63209px 2.17613px 0px inset` / `rgba(0, 0, 0, 0.38) 0.816047px 6.52838px 5.98434px 0px, rgba(0, 0, 0, 0.25) 0px 1.08806px 1.08806px 0px, rgba(50, 32, 8, 0.45) 0px -0.816047px 1.08806px 0px inset` / `rgba(0, 0, 0, 0.2) 0px 0px 0px 0.816047px, rgba(0, 0, 0, 0.42) 1.63209px 2.72016px 3.80822px 0px, rgba(40, 26, 6, 0.5) -1.08806px -1.63209px 2.17613px 0px inset, rgba(255, 248, 222, 0.45) 0.816047px 1.08806px 1.36008px 0px inset` / `rgba(26, 24, 24, 0.1) 0px 1px 0px 0px, rgba(26, 24, 24, 0.3) 0px 28px 48px -24px` / `rgba(0, 0, 0, 0.6) 0px 10px 24px -12px`

**Easings:** `ease` / `cubic-bezier(0.16, 1, 0.3, 1)` / `cubic-bezier(0.16, 1, 0.3, 1), cubic-bezier(0.16, 1, 0.3, 1)` / `ease-out` / `ease, ease` / `ease-in-out` / `cubic-bezier(0.3, 0.7, 0.4, 1)` / `cubic-bezier(0.65, 0, 0.2, 1)` / `cubic-bezier(0.215, 0.61, 0.355, 1), cubic-bezier(0.215, 0.61, 0.355, 1)` / `ease, ease, ease, cubic-bezier(0.16, 1, 0.3, 1)` / `cubic-bezier(0.16, 1, 0.3, 1), ease` / `cubic-bezier(0.2, 0.8, 0.2, 1)`

**Durations:** `0.5s` / `0.3s` / `0.2s` / `0.18s` / `1.2s` / `24s` / `0.45s` / `0.2s, 0.2s` / `0.9s, 1.1s` / `0.5s, 0.5s` / `0.6s` / `0.9s`

**Breakpoints:** `539.98px` / `639.98px` / `640px` / `767.98px` / `768px` / `1023.98px` / `1024px` / `1199.98px` / `1200px` / `1280px` / `1440px` / `1920px`

_Sampled 472 of 602 elements._

## Fonts

| Family | Weight | Style | Status | File |
| --- | --- | --- | --- | --- |
| Onest | 100 900 | normal | loaded | `https://theBornebytethakor.com/fonts/onest-latin-ext.woff2` |
| Onest | 100 900 | normal | unloaded | `https://theBornebytethakor.com/fonts/onest-latin-ext.woff2` |

## CSS & Web Animations

7 CSS animations, 0 transitions, 0 scripted (WAAPI).

| Name | Kind | Duration | Delay | Easing | Iterations | Target |
| --- | --- | ---: | ---: | --- | --- | --- |
| nudge | css-animation | 1800ms | 0ms | cubic-bezier(0.2, 0.8, 0.2, 1) | infinite | `i` |
| ambDrift | css-animation | 24000ms | 0ms | ease-in-out | infinite | `i` |
| ambDrift | css-animation | 24000ms | 0ms | ease-in-out | infinite | `i` |
| ambDrift | css-animation | 24000ms | 0ms | ease-in-out | infinite | `i` |
| ambDrift | css-animation | 24000ms | 0ms | ease-in-out | infinite | `i` |
| ambDrift | css-animation | 24000ms | 0ms | ease-in-out | infinite | `i` |
| sfPulse | css-animation | 2200ms | 0ms | ease-out | infinite | `i` |

### Declared CSS animations

_Attached to elements via animation-name, whether or not running at capture time._

| Name | Elements | Duration | Delay | Easing | Iterations |
| --- | ---: | --- | --- | --- | --- |
| ambDrift | 5 | 24s | 0s | ease-in-out | infinite |
| nudge | 1 | 1.8s | 0s | cubic-bezier(0.2, 0.8, 0.2, 1) | infinite |
| sfPulse | 1 | 2.2s | 0s | ease-out | infinite |

### Authored @keyframes

```css
@keyframes clIn {
  0% { opacity: 0; transform: translateY(10px) scale(0.96); }
}
```

```css
@keyframes ambDrift {
  0% { transform: translate3d(-2%, -1.5%, 0px) scale(1); }
  100% { transform: translate3d(2.5%, 2%, 0px) scale(1.06); }
}
```

```css
@keyframes nudge {
  0%, 100% { transform: translateY(0px); }
  50% { transform: translateY(3px); }
}
```

```css
@keyframes liIn {
  0% { opacity: 0; transform: translateX(-0.5rem); }
}
```

```css
@keyframes sfPulse {
  70% { box-shadow: rgba(143, 191, 122, 0) 0px 0px 0px 0.55rem; }
  100% { box-shadow: rgba(143, 191, 122, 0) 0px 0px 0px 0px; }
}
```

## Infrastructure & Metadata

**Platform:** Netlify
**Security headers:** 7 of 8
Missing: cross-origin-resource-policy

**robots.txt:** 0 disallow rules, 1 sitemap(s)
**Sitemap:** 7 URLs at `https://theBornebytethakor.com/sitemap.xml`

**Structured data:** 1 JSON-LD blocks, 10 OpenGraph tags

## Asset Inventory

62 assets - 49 loaded, 13 declared but never fetched.

| Kind | Count | Bytes |
| --- | ---: | ---: |
| image | 49 | 1.7 MB |
| font | 2 | 35.4 KB |
| script | 4 | 24.1 KB |
| other | 7 | 0 B |

## Network

79 requests, 2.2 MB transferred.

| Resource type | Requests | Bytes |
| --- | ---: | ---: |
| image | 44 | 1.7 MB |
| document | 6 | 316.8 KB |
| other | 10 | 93.9 KB |
| script | 8 | 77.6 KB |
| font | 1 | 35.4 KB |
| media | 10 | 0 B |

### Heaviest assets

| Size | Type | URL |
| ---: | --- | --- |
| 187.2 KB | image | `https://theBornebytethakor.com/Traveller/p/20.webp` |
| 144.8 KB | image | `https://theBornebytethakor.com/card/plate.webp` |
| 119.2 KB | image | `https://theBornebytethakor.com/web-developer/1-zerodha.webp` |
| 94.3 KB | image | `https://theBornebytethakor.com/card/back.webp` |
| 88.9 KB | image | `https://theBornebytethakor.com/Traveller/p/11.webp` |
| 70.8 KB | image | `https://theBornebytethakor.com/Traveller/p/13.webp` |
| 58.5 KB | image | `https://theBornebytethakor.com/graphic-designer/qod-16.webp` |
| 57.3 KB | image | `https://theBornebytethakor.com/Traveller/p/06.webp` |
| 52.0 KB | image | `https://theBornebytethakor.com/Traveller/p/03.webp` |
| 48.2 KB | image | `https://theBornebytethakor.com/app-developer/app-brick.webp` |
| 47.6 KB | image | `https://theBornebytethakor.com/ui-ux-designer/ux-1.webp` |
| 45.9 KB | image | `https://theBornebytethakor.com/graphic-designer/qod-1.webp` |
| 45.3 KB | image | `https://theBornebytethakor.com/Traveller/p/22.webp` |
| 41.1 KB | image | `https://theBornebytethakor.com/card/win_sub.webp` |
| 39.6 KB | image | `https://theBornebytethakor.com/Traveller/p/08.webp` |

## Raw Layer Data

<details>
<summary>Click to expand full JSON</summary>

```json
{
  "dom": {
    "elementCount": 623,
    "links": 11,
    "images": 5,
    "headings": 15,
    "media": [],
    "captured": [
      "Title",
      "Meta",
      "Links",
      "Images",
      "Headings",
      "SVG"
    ],
    "technologies": [],
    "timing": {
      "durationMs": 96
    }
  },
  "animations": {
    "libraries": [
      "lenis"
    ],
    "animationCount": 0,
    "animations": [],
    "keyframes": [],
    "scrollTriggers": [],
    "captured": [
      "Lenis"
    ],
    "screenshot": "/captures/extract-1793551144260-j0kyllsb-layer2.png",
    "timing": {
      "durationMs": 6808
    }
  },
  "webgl": {
    "libraries": [
      "custom-webgl"
    ],
    "shaderCount": 0,
    "drawCallCount": 0,
    "webglVersion": 2,
    "canvasCount": 4,
    "hasWebGL": true,
    "frameCapture": {
      "captured": false,
      "drawCalls": 0,
      "actions": 0,
      "programSwitches": 0,
      "triangles": 0,
      "textures": 0,
      "error": "Failed to load Spector.js SDK (CDN unreachable, blocked, or too slow)",
      "timing": {
        "durationMs": 7
      }
    },
    "artefacts": [
      {
        "name": "custom-webgl",
        "type": "library",
        "confidence": 0.9
      },
      {
        "name": "4 canvas",
        "type": "canvas",
        "confidence": 1
      }
    ],
    "captured": [
      "Custom-webgl",
      "4 canvas elements",
      "WebGL 2"
    ],
    "screenshot": "/captures/extract-1793551144260-j0kyllsb-layer3.png",
    "timing": {
      "durationMs": 3345
    }
  }
}
```
</details>

---
_Generated by Enrichr._

## Current multi-portfolio integration

The active main page is `index.live.html`. Its cinematic doors navigate to separate standalone entry points:

| Door | Destination |
| --- | --- |
| Web Developer | `webdev_portfolio/index.live.html` |
| AI Engineer | `appdev_portfolio/index.live.html` |
| DevOps Engineerer | `UIUX_portfolio/index.live.html` |
| BlockChain Engineerer | `graphic/index.live.html` |

BlockChain Engineer and UI/UX are separate categories with separate folders and destinations. The `graphic/` folder was inspected: `index.live.html` is the interactive page and `index.html` is the rendered capture. Its styles, scripts and assets are kept under `graphic/`; the main page does not merge its CSS or JavaScript. The BlockChain Engineerer door and the Work link both point at the local interactive entry point. No main route points BlockChain Engineer at `assets/other/`.

Direct page loads and refresh use the standalone HTML URLs. Navigation uses full-page browser history, so Back and Forward remain native browser actions. DevOps and Blockchain currently have no standalone destinations and are not mapped to other portfolios.

The older capture findings above describe the original Enrichr extraction, not the present route map. See `README.md` for the current preview instructions.
