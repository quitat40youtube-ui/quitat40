# Video 3 — "Retire in your 40s" — Scene Images

96 images, one per script timestamp (with a rapid-cut intro), for the third explainer video.

## Style & character
Intentionally bad MS Paint childish look — wobbly thick black outlines, dot eyes,
flat colors, white background, centered, 16:9. The **main character** (bearded man,
grey blazer) is your uploaded channel character, reproduced as a canonical "hero"
image and used as a reference on every scene he appears in, so he stays identical.

- **Character scenes** (40) → `nano_banana_pro` + hero reference (higher quality)
- **Object / text / chart scenes** (56) → `z_image` (cheapest)
- **Intro (0:00–0:15)** → rapid cuts, ~2–3s per scene (6 scenes) for engagement

## Files
- `scenes.csv` — master index: `index, start, end, type, filename, description, url`
- `manifest.tsv` — `index, start, end, type, job_id`
- `urls.tsv` — `job_id, image_url`
- `download.sh` — downloads all 96 into `images/`, named `001_0-00.png … 096_8-48.png`
- `video3-images.html` — open in a browser to view all 96 and download them with one button

## How to get the images
The images live in your Higgsfield workspace and on the Higgsfield CDN. This repo
stores the index + URLs (the environment blocks downloading the binaries here).
Open `video3-images.html` in a browser, or run `./download.sh` on a machine with
internet access.

## Next step
Upload the voiceover for this script and I'll assemble the finished video — images
synced to their timestamps with the narration over the top, same as videos 1 and 2.
