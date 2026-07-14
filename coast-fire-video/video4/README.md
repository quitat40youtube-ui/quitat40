# Video 4 — "$12/Week Dividend Investing" — Scene Images

119 images, one per script beat, for the fourth explainer video ("$12 a week... over $4,000 a month in passive income").

## Style & character
Intentionally bad MS Paint childish look — wobbly thick black outlines, dot eyes,
flat colors, white background, mostly empty space, centered, 16:9. The **main
character** (bearded man, grey blazer) is the channel's recurring uploaded
character, reproduced as a canonical "hero" reference and used on every scene
so he stays identical. All 119 images were generated with `nano_banana_pro`.

- **Intro (0:00–0:15)** → rapid cuts, ~2–3s per scene (6 scenes) for engagement
- **Rest of script (0:15–9:57)** → one scene per script line (113 scenes)

## Files
- `scenes.csv` — master index: `index, start, end, filename, description, url`
- `manifest.tsv` — `index, start, end, job_id`
- `urls.tsv` — `job_id, image_url`
- `download.sh` — downloads all 119 PNGs into `images/`, named `NNN_M-SS.png` (e.g. `001_0-00.png` … `119_9-44.png`)
- `video4-images.html` — open in a browser to view all 119 and download them as PNG with one button
- `video4-images-JPG.html` — open in a browser to convert + download all 119 as JPG, named by timestamp (e.g. `0-00.jpg` … `9-44.jpg`)

## How to get the images
The images live in the Higgsfield workspace and on the Higgsfield CDN. This repo
stores the index + direct URLs, not the binaries, because the environment they
were generated in blocks outbound access to the CDN host.

On any machine with normal internet access:

```bash
cd coast-fire-video/video4
./download.sh
```

Or just open `video4-images.html` (PNG) or `video4-images-JPG.html` (JPG) directly
in a browser — no server needed, everything runs client-side.

> Note: filenames use `M-SS` (dash) instead of `M:SS` (colon) because colons are
> illegal in filenames on Windows. The on-screen timestamp label still shows the
> colon form (e.g. "0:00").
