# Build the finished video (images + voice-over)

`build_video.py` assembles the 87 scene images into one MP4, in order, synced to
timestamps, with your ElevenLabs voice-over as the soundtrack. It downloads the
images itself and auto-installs ffmpeg (via pip) if you don't have it — so all you
need is Python 3 and internet.

> Why a local script? The environment these images were generated in blocks
> outbound access to the Higgsfield CDN, so the video can't be rendered there.
> Your own machine can reach the CDN, so it builds in seconds locally.

## Run it
```bash
# put your voice-over next to the script (or pass its path)
python3 build_video.py /path/to/ElevenLabs_4000_a_month.mp3
# -> writes final.mp4 (1920x1080, H.264 + AAC)
```

## Timing modes
The voice-over (~9:57) is longer than the image timeline (6:25), so choose how to map them:

| MODE | Result | Length |
|------|--------|--------|
| `fit` (default) | Stretch image timestamps proportionally to fill the whole VO. Images stay in order, spread across the audio. | = VO |
| `freeze` | Show images on their real 0:00–6:25 timestamps, hold the last frame until the VO ends. | = VO |
| `trim` | Keep real timestamps, cut the VO at 6:25. | 6:25 |

```bash
MODE=freeze python3 build_video.py voiceover.mp3
MODE=trim   python3 build_video.py voiceover.mp3 trimmed.mp4
```

Images are cached in `_frames/` after the first run, so re-rendering a different
mode is instant.
