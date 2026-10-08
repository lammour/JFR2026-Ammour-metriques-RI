#!/usr/bin/env bash
# Compile src/jfr2026.tex → build/jfr2026.pdf (xelatex + biber via latexmk).
#   ./build.sh          compilation
#   ./build.sh clean    supprime build/
set -e
cd "$(dirname "$0")"
if [[ "${1:-}" == "clean" ]]; then rm -rf build; exit 0; fi
mkdir -p build
latexmk -r .latexmkrc -cd -outdir="$PWD/build" src/jfr2026.tex > build/latexmk.out 2>&1 \
  || { grep -nE '^!|^src/.*:[0-9]+:|ERROR' build/jfr2026.log build/jfr2026.blg build/latexmk.out 2>/dev/null | head -20; exit 1; }
tail -1 build/latexmk.out
grep -nE 'Overfull \\vbox' build/jfr2026.log | head -10 || true
