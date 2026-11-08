# Bornebyte Portfolio

Bornebyte is a static portfolio site for Shubham Shah — freelance web/app
developer, UI/UX designer, graphic designer, and traveller. It is a
single-page experience with standalone project portfolios for each discipline.

## Features

- Interactive hero with an ability-card dialog (WebGL fallback included).
- Fast static delivery: no build step, no runtime dependencies beyond Python
  for local serving.
- Standalone portfolios under `webdev_portfolio/`, `appdev_portfolio/`,
  `UIUX_portfolio/`, and `graphic/`.
- Responsive layout and reduced-motion handling.

## Project Structure

```text
.
├── index.live.html          # Main entry point
├── index.html               # Pre-rendered snapshot variant
├── run.sh                   # Local dev server helper
├── assets/                  # Shared fonts, images, scripts, captured pages
├── webdev_portfolio/        # Standalone web developer portfolio
├── appdev_portfolio/        # Standalone app developer portfolio
├── UIUX_portfolio/          # Standalone UI/UX portfolio
├── graphic/                 # Standalone graphic design portfolio
├── home.html work.html ...  # Lightweight route shims
└── README.md
```

## Getting Started

Python 3 is required. Use the included helper so an older/stale instance is
stopped first:

```bash
./run.sh
```

Then open:

```text
http://localhost:8000/index.live.html
```

Options:

```bash
./run.sh 9000
PORT=9000 ./run.sh
```

Or serve manually:

```bash
python3 -m http.server 8000
```

> The site uses an import map for Lenis, so it must be served over HTTP rather
> than opened directly from `file://`.

## Contributing

See [CONTRIBUTING.md](CONTRIBUTING.md).

## Security

See [SECURITY.md](SECURITY.md).

## License

Released under the [MIT License](LICENSE).
