# Video 5 — "Retire in Your 30s-40s with Real Estate" — Scene Images

88 images, one per script beat, for the fifth explainer video (real estate
payoff / retirement math).

## Style & character
Intentionally bad MS Paint childish look — wobbly thick black outlines, dot eyes,
flat colors, white background, mostly empty space, centered, 16:9. The **main
character** is the channel's recurring uploaded character, reproduced as a
canonical "hero" reference and used on every scene so he stays identical. All
88 images were generated with `nano_banana_pro`.

- **Intro (0:00–0:16)** → rapid cuts, ~2–3s per scene (6 scenes) for engagement
- **Rest of script (0:16–10:22)** → one scene per script line (82 scenes)

## Files
- `scenes.csv` — master index: `index, start, end, filename, description, url`
- `manifest.tsv` — `index, start, end, job_id`
- `urls.tsv` — `job_id, image_url`
- `download.sh` — downloads all 88 PNGs into `images/`, named `NNN_M-SS.png` (e.g. `001_0-00.png` … `088_10-16.png`)
- `video5-images.html` — open in a browser to view all 88 and download them as PNG, one at a time, all at once, or as a single ZIP
- `video5-images-JPG.html` — open in a browser to convert + download all 88 as JPG, named by timestamp (e.g. `0-00.jpg` … `10-16.jpg`), one at a time, all at once, or as a single ZIP

## How to get the images
The images live in the Higgsfield workspace and on the Higgsfield CDN. This repo
stores the index + direct URLs, not the binaries, because the environment they
were generated in blocks outbound access to the CDN host.

On any machine with normal internet access:

```bash
cd coast-fire-video/video5
./download.sh
```

Or just open `video5-images.html` (PNG) or `video5-images-JPG.html` (JPG) directly
in a browser — no server needed, everything runs client-side. Both pages also
have a "Download all as ZIP" button that bundles every image into one
`.zip` file (via JSZip, loaded from a CDN inside the page).

> Note: filenames use `M-SS` (dash) instead of `M:SS` (colon) because colons are
> illegal in filenames on Windows. The on-screen timestamp label still shows the
> colon form (e.g. "0:00").
