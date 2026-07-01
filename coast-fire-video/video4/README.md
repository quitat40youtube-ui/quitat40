# Video 4 — "Dividend Investing vs Index Funds (in your 30s)" — Scene Images

60 scene images, one per script timestamp, with a rapid-cut intro (0:00–0:15,
~2–3s per scene, 6 scenes) for engagement.

## Style & character
Intentionally bad MS Paint childish look — wobbly thick black outlines, dot eyes,
round heads, thin black line limbs, flat colors, white background, centered, 16:9.
The **main character** is the channel character **Austin-O**, a Higgsfield
reference **Element** (id `5c3bfd16-adb2-4a38-9547-7ec29acffb63`). Every character
scene embeds the element so he stays identical across shots.

- **Model:** `nano_banana_2` (Higgsfield "Nano Banana 2") for **all** images, 16:9.
- **Character scenes (30):** prompt embeds the Austin-O element placeholder.
- **Object / text / chart scenes (30):** plain prompt, no character.

## Files
- `scenes_plan.tsv` — master plan: `index, start, end, type, filename, description`
- `manifest.tsv` — `index, start, end, type, job_id` (filled as images generate)
- `urls.tsv` — `job_id, image_url` (filled once jobs complete)
- `scenes.csv` — final index with URLs (built after generation)
- `download.sh` / `video4-images.html` — added after generation, same as videos 1–3

## Status
All 60 scenes generated in Higgsfield (`nano_banana_2`, 16:9). Job IDs recorded
in `manifest.tsv`. The images live in your Higgsfield workspace — open Higgsfield
to review/download them. `urls.tsv` + `scenes.csv` + `download.sh` +
`video4-images.html` can be built next by resolving each job_id to its CDN URL,
same as videos 1–3.
