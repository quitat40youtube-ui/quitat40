# The $200K Retirement Myth — Scene Images

87 illustrations, one per script beat, for the "$1 million retirement myth"
explainer video. The intro (first 15 seconds) is intentionally split into seven
~2-second fast cuts for an engaging, high-energy open; the rest of the video is
one image per spoken line.

## Style
Intentionally "bad" MS Paint childish stick-figure drawings: the **same** bearded
man — round head, short black hair, dot eyes, short black beard, open grey blazer
over a white shirt, thin black line limbs — with wobbly thick black outlines, flat
colors, no shading, plain white background, centered with lots of empty space.
16:9 widescreen.

## Main character
The recurring man is locked from the user-supplied 4-view character turnaround.
A single clean front-facing "model sheet" was generated from it
(`000_character.png`) and fed as the reference image into every character scene so
he stays identical throughout.

## Models (cheap-by-default, premium for the character)
- **`nano_banana_pro`** (premium, ~2 cr) — every scene where the main character is
  the focus / hero shot, generated WITH his reference image.
- **`nano_banana`** (cheapest, ~1 cr) — pure text cards, numbers, props and
  diagrams where the character does not appear.

Each scene's model is recorded in `scenes.csv`.

## Files
- `scenes.csv` — master index: `index, start, end, filename, model, description, url`
- `manifest.tsv` — raw mapping: `index, start, end, model, job_id`
- `urls.tsv` — raw mapping: `job_id, image_url` (character ref first)
- `download.sh` — downloads every image into `./images/`, named `NNN_start_end.png`
  (plus `000_character.png`)
- `retire-200k-images.html` — a contact-sheet gallery of all images in order
- `script.txt` — the timestamped source script
- `images/` — created when you run `download.sh`

## How to get the images
The generated images live in the Higgsfield workspace and on the Higgsfield CDN.
This repo stores the **index and direct URLs**, not the binaries, because the
environment they were generated in blocks outbound access to the CDN host.

On any machine with normal internet access:

```bash
cd retire-200k-video
./download.sh
```

This writes all 87 PNGs into `images/`, ordered by timestamp
(`001_00-00_00-02.png` … `087_06-23_06-25.png`), so they drop straight onto a
video-editor timeline, plus `000_character.png`.

> Note: the CDN URLs may expire over time. If a download 403s, the images can be
> re-fetched or re-displayed from the Higgsfield workspace by job_id (see
> `manifest.tsv`).
