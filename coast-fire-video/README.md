# Coast FIRE — Scene Images

163 illustrations, one per script timestamp, for the Coast FIRE explainer video.

## Style
Intentionally "bad" MS Paint childish stick-figure drawings: the same bearded man
in an open grey blazer over a white shirt — round head, dot eyes, thin black line
limbs, wobbly thick black outlines, flat colors, no shading, plain white background,
centered with lots of empty space. 16:9 widescreen. Generated with the `nano_banana`
image model.

## Files
- `scenes.csv` — the master index: `index, start, end, filename, description, url`
- `manifest.tsv` — raw mapping: `index, start, end, job_id`
- `urls.tsv` — raw mapping: `job_id, image_url`
- `download.sh` — downloads every image into `./images/`, named `NNN_start_end.png`
- `images/` — created when you run `download.sh`

## How to get the images
The generated images live in the Higgsfield workspace and on the Higgsfield CDN.
This repo stores the **index and direct URLs**, not the binaries, because the
environment they were generated in blocks outbound access to the CDN host.

On any machine with normal internet access:

```bash
cd coast-fire-video
./download.sh
```

This writes all 163 PNGs into `images/`, ordered by timestamp
(e.g. `001_00-00_00-04.png` … `163_13-44_13-50.png`), so they drop straight into
a video editor on the timeline.

> Note: the CDN URLs may expire over time. If a download 403s, the images can be
> re-fetched or re-displayed from the Higgsfield workspace.
