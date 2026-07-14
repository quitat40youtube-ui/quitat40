#!/usr/bin/env bash
# Downloads all 179 Video-3 scene images as PNG into ./images, named NNN_MM-SS.png
set -euo pipefail
mkdir -p images
ok=0; fail=0
while IFS=$'\t' read -r png url; do
  if curl -fsSL "$url" -o "images/$png"; then ok=$((ok+1)); else echo "FAIL $png"; fail=$((fail+1)); fi
done < urls_download.tsv
echo "done: ok=$ok fail=$fail"
