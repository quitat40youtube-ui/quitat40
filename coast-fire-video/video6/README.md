# Video 6 — "$12/Week Dividend Investing" — Scene Images

119 scene images: a rapid-cut intro (0:00–0:15, 6 scenes, ~2–3s each) followed by
one scene per remaining script timestamp through 9:57.

## Style & character
Intentionally bad MS Paint childish look — wobbly thick black outlines, dot eyes,
round heads, thin black line limbs, flat colors, white background, centered, 16:9.
The **main character** is the channel character **Austin-O**, the same Higgsfield
reference **Element** used in videos 3–5 (id `5c3bfd16-adb2-4a38-9547-7ec29acffb63`),
embedded on every character scene so he stays identical.

- **Model:** `nano_banana_pro` (Nano Banana Pro, 2K) for **all** images, 16:9.
- **Character scenes (~45):** prompt embeds the Austin-O element.
- **Object / text / chart scenes (~74):** plain prompt.

## Files
- `scenes_plan.tsv` — master plan: `index, start, end, type, filename, description`
- `image-prompts.md` — all 6 final prompts, ready to paste
- `prompts.jsonl` — machine-readable prompts (model + aspect + prompt)
- `manifest.tsv` — `index, start, end, type, job_id`
- `urls.tsv` — `job_id, image_url` (Higgsfield CDN)
- `scenes.csv` — full index with URLs where resolved

## Status
All 119 images generated in Higgsfield (`nano_banana_pro`, 2K, 16:9). Job IDs
for every scene are recorded in `manifest.tsv`. Only scene 1's CDN URL got
resolved into `urls.tsv` / `scenes.csv` — this session's tool permissions
blocked `job_display` / `show_medias` for the rest (denied), so the other 118
completed generations don't have their CDN URLs filled in here. Open the
Higgsfield workspace to view/download them, or resolve the remaining job IDs
from `manifest.tsv` into `urls.tsv` when that tool access is available.
