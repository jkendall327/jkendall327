#!/bin/bash
# Builds every .md page into _site/ with pandoc.
set -euo pipefail
cd "$(dirname "$0")"

rm -rf _site
mkdir -p _site
cp -r images style.css _site/
# The résumé PDF lives at the repo root; copy it if it's there.
if [ -f resume.pdf ]; then cp resume.pdf _site/; fi

find . -name '*.md' -not -name 'README.md' -not -path './_site/*' | while read -r src; do
  src="${src#./}"
  out="_site/${src%.md}.html"
  mkdir -p "$(dirname "$out")"

  # Relative path back to the site root, e.g. "../" for articles/foo.md.
  root=""
  for _ in $(seq 1 "$(tr -cd '/' <<< "$src" | wc -c)"); do root+="../"; done

  # The homepage hides the "Jack Kendall" link in the nav, since its title already says that.
  home=()
  if [ "$src" = index.md ]; then home=(--metadata home=true); fi

  # Last-updated date comes from the file's latest commit, or today if uncommitted.
  lastmod=$(git log -1 --format=%cs -- "$src" 2>/dev/null || true)
  if [ -z "$lastmod" ] || ! git diff --quiet HEAD -- "$src" 2>/dev/null; then
    lastmod=$(date +%Y-%m-%d)
  fi

  # Pages opt into a table of contents with "toc: true" in their front matter.
  toc=()
  if grep -q '^toc: true' "$src"; then toc=(--toc --toc-depth=3); fi

  pandoc "$src" \
    --from=markdown-implicit_figures \
    --standalone \
    --template=template.html \
    --section-divs \
    "${toc[@]}" \
    --metadata root="$root" \
    "${home[@]}" \
    --metadata lastmod="$lastmod" \
    -o "$out"
done

echo "Built site into _site/"
