# Video 3 — "Retire in your 40s / Best ETFs for FIRE" — Scene Images

179 images, one per script beat across the full ~20-minute script, in the
channel's intentionally-bad MS Paint style.

## Style & character
Intentionally bad MS Paint childish look — wobbly thick black outlines, dot eyes,
flat colors, white background, centered, 16:9. The **main character** (round head,
short black hair + beard, open grey blazer over a white t-shirt, thin black line
limbs) is the uploaded channel character, held consistent by passing his reference
image on every scene he appears in.

- **Rapid-cut intro (0:00–0:15)** — 6 scenes, ~2–3s each, for a high-engagement hook.
- **Character scenes** (31) and **object / text / chart scenes** (148).
- **All images generated with Nano Banana** (`nano_banana`) — the cheap model, used
  for every scene (character scenes also get the hero reference image).

## Files
- `scenes.csv` — master index: `index, start, end, type, jpg_filename, png_filename, url`
- `manifest.tsv` — `index, start, end, type, job_id`
- `urls.tsv` — `job_id, image_url`
- `urls_download.tsv` — `png_filename, url` (data for `download.sh`)
- `download.sh` — downloads all 179 as PNG into `images/`, named `001_00-00.png … 179_20-12.png`
- `video3-images-JPG-ZIP.html` — open in a browser: previews all 179 and, with one
  button, fetches every image, converts each to **JPG**, names it by its timestamp
  (`0:00 → 00-00.jpg`), and downloads them all as a single **ZIP**
  (`video3-images-jpg.zip`). Conversion + zipping happen entirely in the browser —
  no external libraries.

## File naming
Each image is named by the timestamp it appears at. `:` isn't a valid filename
character, so a dash is used: `0:00 → 00-00.jpg`, `20:12 → 20-12.jpg`. Minutes and
seconds are zero-padded so files sort in playback order.

## How to get the images
The images live on the Higgsfield CDN; this repo stores the index + URLs. Open
`video3-images-JPG-ZIP.html` in a browser for JPGs-in-a-zip, or run `./download.sh`
on a machine with internet access for PNGs.
