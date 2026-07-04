# Video 6 — "$12/Week Dividend Investing" — Intro Images

6 scene images for the rapid-cut intro (0:00–0:15, ~2–3s per scene) of the new
dividend-investing script.

## Style & character
Intentionally bad MS Paint childish look — wobbly thick black outlines, dot eyes,
round heads, thin black line limbs, flat colors, white background, centered, 16:9.
The **main character** is the channel character **Austin-O**, the same Higgsfield
reference **Element** used in videos 3–5 (id `5c3bfd16-adb2-4a38-9547-7ec29acffb63`),
embedded on every character scene so he stays identical.

- **Model:** `nano_banana_pro` (Nano Banana Pro, 2K) for **all** images, 16:9.
- **Character scenes (4):** prompt embeds the Austin-O element.
- **Object / text scenes (2):** plain prompt.

## Files
- `scenes_plan.tsv` — master plan: `index, start, end, type, filename, description`
- `image-prompts.md` — all 6 final prompts, ready to paste
- `prompts.jsonl` — machine-readable prompts (model + aspect + prompt)
- `manifest.tsv` — `index, start, end, type, job_id`
- `urls.tsv` — `job_id, image_url` (Higgsfield CDN)
- `scenes.csv` — full index with URLs where resolved

## Status
All 6 intro images generated in Higgsfield (`nano_banana_pro`, 2K, 16:9). Job IDs
recorded in `manifest.tsv`. Scene 1's CDN URL is resolved in `urls.tsv` /
`scenes.csv`; the other 5 completed generation but this session's tool
permissions blocked resolving their CDN URLs (`job_display` / `show_medias`
were denied) — open the Higgsfield workspace to view/download them, or resolve
the remaining job IDs from `manifest.tsv` to fill in `urls.tsv`.
