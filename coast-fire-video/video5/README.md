# Video 5 — "8 Signs That Scream Early Retirement" — Scene Images

94 scene images, one per script timestamp, with a naturally rapid-cut intro
(0:00–0:15, ~2–4s per scene) for engagement. Script runs ~8:17.

## Style & character
Intentionally bad MS Paint childish look — wobbly thick black outlines, dot eyes,
round heads, thin black line limbs, flat colors, white background, centered, 16:9.
The main character is the channel character **Austin-O**, a Higgsfield reference
**Element** (`5c3bfd16-adb2-4a38-9547-7ec29acffb63`), embedded on every character
scene so he stays identical.

- **Model:** `nano_banana_2` (Nano Banana 2) for **all** images, 16:9.
- **Character scenes:** prompt embeds the Austin-O element.
- **Object / text / chart scenes:** plain prompt.

## Files
- `scenes_plan.tsv` — master plan: `index, start, end, type, filename, description`
- `image-prompts.md` — all 94 final prompts, ready to paste
- `prompts.jsonl` — machine-readable prompts (model + aspect + prompt)
- `manifest.tsv` — `index, start, end, type, job_id`
- `urls.tsv` — `job_id, image_url` (Higgsfield CDN)
- `scenes.csv` — full index with URLs
- `download.sh` — CLI: downloads all as JPG named by timestamp (needs curl + ImageMagick)
- `video5-images.html` — open in a browser to view all 94 and download them as JPG
  (converted PNG→JPG in-browser), each named by its timestamp (e.g. `0-00.jpg`)

## Status
All 94 generated in Higgsfield. Next step: send the voiceover for this script and
I'll assemble the finished video (images synced to timestamps + narration), same as
video 4.
