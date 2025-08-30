# manuscript-mc


A LaTeX style for thesis manuscripts with margin notes, part pages, custom headings, and a clean typographic layout.


## Quick start


```bash
git clone https://github.com/milliCoulomb/manuscript-mc.git
cd manuscript-mc/demo
latexmk -pdf -interaction=nonstopmode -halt-on-error main.tex
```
The compiled PDF (artifact) is also produced by GitHub Actions on each push.

## Files
- `manuscript_mc.sty`: the LaTeX style file
- `demo/main.tex`: a demo manuscript using the style
- `demo/figure`: example figure file
- `demo/bibliography.bib`: example bibliography file

## Features (from the style file)
- BibLaTeX (biber) numeric-comp citations.
- Geometry tuned for margin notes.
- Fancy headers/footers, part and chapter styling.
- `\SonataPart{Title}{Subtitle}{label}` macro for part pages.
- Side notes and margin note helpers: `\mn{}`, `\sn{}`, `\lec{}`.
- tcolorbox environments: examplebox, claim, summary.
- Section/subsection title formatting with underlines.
- Equation numbering per section.

## Build
- Requires TeX Live or MiKTeX with the usual packages (TikZ/PGFPlots, tcolorbox, siunitx, biblatex, hyperref, etc.).
- Engine: LuaLaTeX (+ biber).
- Build with latexmk (recommended) or lualatex + biber + lualatex + lualatex.
```bash
latexmk -lualatex -pdf main.tex # from the demo/ folder
# or explicitly
lualatex main && biber main && lualatex main && lualatex main
```