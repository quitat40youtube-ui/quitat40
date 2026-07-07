#!/usr/bin/env python3
"""
Build the finished "$200K Retirement Myth" video: 87 stick-figure images shown in
order and synced to timestamps, with your ElevenLabs voice-over as the soundtrack.

USAGE:
    python3 build_video.py  path/to/voiceover.mp3   [output.mp4]

MODES (env var MODE):
    fit    (default) stretch the image timeline to fill the whole voice-over
    freeze show images on their original 0:00-6:25 timestamps, hold last frame to VO end
    trim   keep original timestamps and cut the VO at 6:25

Needs only Python 3 + internet. ffmpeg is auto-installed via pip (imageio-ffmpeg)
if not already on your PATH. Images are downloaded from Higgsfield on first run
and cached in ./_frames/.
"""
import os,sys,re,json,shutil,subprocess,urllib.request

HERE=os.path.dirname(os.path.abspath(__file__))
AUDIO=os.path.abspath(sys.argv[1]) if len(sys.argv)>1 else os.path.join(HERE,"voiceover.mp3")
OUT=os.path.abspath(sys.argv[2]) if len(sys.argv)>2 else os.path.join(HERE,"final.mp4")
MODE=os.environ.get("MODE","fit")
W,H,FPS=1920,1080,30

if not os.path.exists(AUDIO):
    sys.exit(f"Voice-over not found: {AUDIO}\nPass it as the first argument: python3 build_video.py voiceover.mp3")

def ffmpeg():
    exe=shutil.which("ffmpeg")
    if exe: return exe
    try:
        import imageio_ffmpeg
    except ImportError:
        print("Installing ffmpeg (imageio-ffmpeg) ...")
        subprocess.run([sys.executable,"-m","pip","install","--quiet","imageio-ffmpeg"],check=True)
        import imageio_ffmpeg
    return imageio_ffmpeg.get_ffmpeg_exe()
FF=ffmpeg()

def audio_dur(p):
    r=subprocess.run([FF,"-i",p],capture_output=True,text=True)
    m=re.search(r"Duration: (\d+):(\d+):(\d+\.?\d*)",r.stderr)
    h,mi,s=m.groups(); return int(h)*3600+int(mi)*60+float(s)

TIMELINE = [
{
"start": 0,
"end": 2,
"label": "0:00",
"url": "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260614_230549_bc41f039-4a44-4165-ab04-defb2e08eb26.png"
},
{
"start": 2,
"end": 4,
"label": "0:02",
"url": "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260614_230552_9539efe6-39c4-434e-84b8-0f75fb6ffeb3.png"
},
{
"start": 4,
"end": 6,
"label": "0:04",
"url": "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260614_230554_b461e5b0-b709-4129-9c87-5e4f59771c84.png"
},
{
"start": 6,
"end": 8,
"label": "0:06",
"url": "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260614_230557_a3e20dbf-0930-434a-9453-34c55f3eeadd.png"
},
{
"start": 8,
"end": 11,
"label": "0:08",
"url": "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260614_230600_079c0c9b-ec22-4105-b720-c2d53234b745.png"
},
{
"start": 11,
"end": 13,
"label": "0:11",
"url": "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260614_230603_76ec549f-43bf-4308-8fa6-f7a7f3b8b852.png"
},
{
"start": 13,
"end": 15,
"label": "0:13",
"url": "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260614_230605_fe96b46d-cbc8-4867-aa2f-22a4dfab7ce8.png"
},
{
"start": 15,
"end": 17,
"label": "0:15",
"url": "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260614_230606_7a25a02c-ac85-45d8-bbda-5168f81eedb3.png"
},
{
"start": 17,
"end": 21,
"label": "0:17",
"url": "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260614_230620_50359148-d1bb-4bb0-b560-18ad9c8c57ba.png"
},
{
"start": 21,
"end": 22,
"label": "0:21",
"url": "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260614_230622_aa74e1ac-ecb3-447e-81b4-ef77d9f14e5f.png"
},
{
"start": 22,
"end": 24,
"label": "0:22",
"url": "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260614_230623_42eae8e0-539e-48f9-bacb-84e94216ae66.png"
},
{
"start": 24,
"end": 27,
"label": "0:24",
"url": "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260614_230626_0fd54592-9660-4c75-9e1b-f423acd32d96.png"
},
{
"start": 28,
"end": 32,
"label": "0:28",
"url": "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260614_230628_2ea7536e-9dc0-4441-929d-ab8956ca78f4.png"
},
{
"start": 32,
"end": 36,
"label": "0:32",
"url": "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260614_230630_4f851cea-4261-4970-b00d-4fe3999bb001.png"
},
{
"start": 36,
"end": 37,
"label": "0:36",
"url": "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260614_230631_793f79c1-b567-4ee7-ab13-405494bbd014.png"
},
{
"start": 37,
"end": 39,
"label": "0:37",
"url": "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260614_230633_ca9edda0-5c88-4770-8f13-0754d32e3f99.png"
},
{
"start": 39,
"end": 44,
"label": "0:39",
"url": "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260614_230646_440e5d4d-42fa-44a4-bdd8-e2b99a856fe2.png"
},
{
"start": 44,
"end": 45,
"label": "0:44",
"url": "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260614_230648_6f76d6b2-ca68-49a3-ba8e-9b412b5c9c4a.png"
},
{
"start": 45,
"end": 47,
"label": "0:45",
"url": "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260614_230651_70892157-11b7-4882-96c1-b47037426df4.png"
},
{
"start": 47,
"end": 50,
"label": "0:47",
"url": "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260614_230653_d24c09ff-715c-431e-933b-03bbc1407bbb.png"
},
{
"start": 50,
"end": 55,
"label": "0:50",
"url": "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260614_230655_7026008d-2e6b-463d-b6ce-3706ed6e139b.png"
},
{
"start": 55,
"end": 58,
"label": "0:55",
"url": "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260614_231612_62757a36-652a-49e1-b014-be563ee837c1.png"
},
{
"start": 58,
"end": 67,
"label": "0:58",
"url": "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260614_230659_591d1292-af9d-4ee2-a119-42500c1781be.png"
},
{
"start": 67,
"end": 68,
"label": "1:07",
"url": "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260614_230701_11166870-c79d-49e5-bde9-40133d599a9f.png"
},
{
"start": 68,
"end": 72,
"label": "1:08",
"url": "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260614_230715_20296963-2a2b-4a9a-a6a9-6e4f49109a3b.png"
},
{
"start": 72,
"end": 77,
"label": "1:12",
"url": "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260614_230717_c0d11217-e7e3-46cb-bf2e-a67cdc3640bd.png"
},
{
"start": 77,
"end": 78,
"label": "1:17",
"url": "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260614_230719_b2a87f82-1632-4263-868f-8ebdead35c44.png"
},
{
"start": 78,
"end": 79,
"label": "1:18",
"url": "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260614_230722_d4da34da-cb5a-4c8e-b731-c815d86be25c.png"
},
{
"start": 79,
"end": 80,
"label": "1:19",
"url": "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260614_230724_dfd54582-357b-4307-93b5-9f50962595e2.png"
},
{
"start": 80,
"end": 81,
"label": "1:20",
"url": "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260614_230725_b5bfb137-5819-4c04-992a-9fd3b0659bb9.png"
},
{
"start": 81,
"end": 82,
"label": "1:21",
"url": "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260614_230727_7eb81e9e-7de6-4dbe-a198-0c052509847d.png"
},
{
"start": 82,
"end": 85,
"label": "1:22",
"url": "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260614_230728_27128920-f72c-4a33-ab31-5d889a49067c.png"
},
{
"start": 85,
"end": 91,
"label": "1:25",
"url": "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260614_230742_a6985039-3db6-4e74-b511-80fcce8c7961.png"
},
{
"start": 91,
"end": 96,
"label": "1:31",
"url": "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260614_230745_c5e24af3-b1e7-42f6-9dab-c3f7fd062911.png"
},
{
"start": 96,
"end": 98,
"label": "1:36",
"url": "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260614_230747_f65bb25e-4acd-4bc0-9564-1a73072d1d38.png"
},
{
"start": 99,
"end": 108,
"label": "1:39",
"url": "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260614_230748_68d75a21-2583-4dfe-ac1e-0805ac05f91a.png"
},
{
"start": 108,
"end": 117,
"label": "1:48",
"url": "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260614_230750_96817d4e-dd64-4243-a67b-bd1c06a78632.png"
},
{
"start": 117,
"end": 123,
"label": "1:57",
"url": "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260614_230753_770da2c8-dfc9-443d-a72e-685895e9e270.png"
},
{
"start": 123,
"end": 127,
"label": "2:03",
"url": "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260614_230755_009d2e93-c3ca-43f6-9fb1-77e5614a73de.png"
},
{
"start": 127,
"end": 132,
"label": "2:07",
"url": "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260614_230756_8136f427-6bb4-4c85-a958-f65764e7e401.png"
},
{
"start": 132,
"end": 141,
"label": "2:12",
"url": "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260614_230810_c7775e27-f140-4b67-894c-521770d88849.png"
},
{
"start": 142,
"end": 149,
"label": "2:22",
"url": "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260614_230813_b01f1e1e-de64-4139-92c8-eb6fdd31f6ac.png"
},
{
"start": 149,
"end": 155,
"label": "2:29",
"url": "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260614_230814_c93a8b56-8087-47ff-b97b-7fe4ac69b3ed.png"
},
{
"start": 155,
"end": 162,
"label": "2:35",
"url": "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260614_230816_b85baa17-4fa5-48fc-b1dd-d57582ad2df3.png"
},
{
"start": 162,
"end": 169,
"label": "2:42",
"url": "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260614_230819_9956f816-76d1-4afe-825c-9c0e83c54861.png"
},
{
"start": 169,
"end": 172,
"label": "2:49",
"url": "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260614_230821_097b10ea-7464-4436-b280-c9d26e5a0654.png"
},
{
"start": 173,
"end": 180,
"label": "2:53",
"url": "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260614_230824_dfd51994-c713-4b79-9bc4-3945675c1193.png"
},
{
"start": 180,
"end": 186,
"label": "3:00",
"url": "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260614_231615_0cef4ec0-fda0-4e71-b9ee-f3903ad83f8d.png"
},
{
"start": 186,
"end": 192,
"label": "3:06",
"url": "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260614_230840_bf07b2f8-9431-49ff-95f0-508dc0eb3b4f.jpeg"
},
{
"start": 193,
"end": 200,
"label": "3:13",
"url": "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260614_230842_1191103e-78b1-47c6-aeb9-239731e3690a.png"
},
{
"start": 200,
"end": 204,
"label": "3:20",
"url": "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260614_230845_50cad416-d97e-49ba-8c07-c73a8de8d035.png"
},
{
"start": 204,
"end": 207,
"label": "3:24",
"url": "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260614_230847_dac98f56-60b4-4cc8-8fe9-3a0f55fa8f4e.png"
},
{
"start": 207,
"end": 212,
"label": "3:27",
"url": "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260614_230849_104fb6f3-d56f-47fb-9675-56fe375e6fba.png"
},
{
"start": 212,
"end": 214,
"label": "3:32",
"url": "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260614_230850_9c77605f-b166-4bb2-af03-731b1df8614e.png"
},
{
"start": 214,
"end": 220,
"label": "3:34",
"url": "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260614_230853_2d6806d1-1332-4ea1-a63b-65bf87845b16.png"
},
{
"start": 220,
"end": 222,
"label": "3:40",
"url": "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260614_230854_37140639-a33d-4263-84d6-b4cb22f51b82.png"
},
{
"start": 222,
"end": 226,
"label": "3:42",
"url": "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260614_230908_0e699327-d460-4242-a5d6-1bae1e3da824.png"
},
{
"start": 226,
"end": 236,
"label": "3:46",
"url": "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260614_230910_338a88d8-d4a7-48c5-ab0f-2acd95007f3e.png"
},
{
"start": 236,
"end": 240,
"label": "3:56",
"url": "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260614_230912_16caa38c-c91b-44ed-864e-b6d323f3fc2e.png"
},
{
"start": 240,
"end": 244,
"label": "4:00",
"url": "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260614_230914_44091b60-c3f2-4254-a828-48542cbc8fb2.png"
},
{
"start": 244,
"end": 247,
"label": "4:04",
"url": "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260614_230917_bd376c4a-d815-4223-b89c-98518776f362.png"
},
{
"start": 247,
"end": 251,
"label": "4:07",
"url": "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260614_231617_f9fb7d38-2e31-418c-ac95-38b7fd711718.png"
},
{
"start": 251,
"end": 257,
"label": "4:11",
"url": "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260614_230922_65e92561-7887-4106-85a5-f865cc853104.png"
},
{
"start": 257,
"end": 267,
"label": "4:17",
"url": "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260614_230924_b0a9ba53-387e-4fdb-9529-83ebf07c0708.png"
},
{
"start": 267,
"end": 277,
"label": "4:27",
"url": "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260614_230936_7e5e22d4-d2aa-478a-888a-922ac24bc165.png"
},
{
"start": 277,
"end": 285,
"label": "4:37",
"url": "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260614_230938_37eb6d63-8159-4885-9dc8-11e30ead77bb.png"
},
{
"start": 285,
"end": 287,
"label": "4:45",
"url": "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260614_230940_f033fc3c-680a-45db-b9b1-de9be08b28d4.png"
},
{
"start": 288,
"end": 296,
"label": "4:48",
"url": "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260614_230943_0f7a8d3e-7752-459e-acdb-75824b7c8fd3.png"
},
{
"start": 296,
"end": 305,
"label": "4:56",
"url": "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260614_230945_41f953e8-694f-43ba-a5a0-ecc30eced53f.png"
},
{
"start": 305,
"end": 310,
"label": "5:05",
"url": "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260614_230946_1dbbe712-0b31-45ae-abb5-aec26de9969e.png"
},
{
"start": 310,
"end": 314,
"label": "5:10",
"url": "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260614_231619_fc954d84-0dd3-46f0-920c-c3a1bf5e5206.png"
},
{
"start": 314,
"end": 317,
"label": "5:14",
"url": "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260614_230950_260d03c0-4a7a-476d-aba0-c6ec92ed88fb.png"
},
{
"start": 317,
"end": 321,
"label": "5:17",
"url": "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260614_231004_b23eb18d-9ccc-49b6-9e72-56019cefa2fb.png"
},
{
"start": 321,
"end": 333,
"label": "5:21",
"url": "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260614_231006_ec50a757-4fdf-413c-9bd0-d69936b8b711.png"
},
{
"start": 333,
"end": 338,
"label": "5:33",
"url": "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260614_231008_574fd091-43a5-428a-9abf-e0a1d14dd6a3.png"
},
{
"start": 338,
"end": 345,
"label": "5:38",
"url": "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260614_231011_498067dc-ee7a-4032-9c83-56b87af2be53.png"
},
{
"start": 345,
"end": 349,
"label": "5:45",
"url": "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260614_231013_da383c9c-8273-4b2f-adc5-2a63a9c9c5c0.png"
},
{
"start": 349,
"end": 356,
"label": "5:49",
"url": "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260614_231015_6417e370-9ad3-4d31-b00f-a528347098c2.png"
},
{
"start": 356,
"end": 361,
"label": "5:56",
"url": "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260614_231018_47c00614-f246-4739-887f-7d3fd162f2d0.png"
},
{
"start": 361,
"end": 365,
"label": "6:01",
"url": "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260614_231019_906ee2b0-a395-438d-ac45-e3426da33cef.png"
},
{
"start": 365,
"end": 367,
"label": "6:05",
"url": "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260614_231034_b732cd4d-3b26-465e-9307-b7d49748d9b6.png"
},
{
"start": 367,
"end": 369,
"label": "6:07",
"url": "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260614_231036_a9de3033-47fa-4842-ba24-4b7d057a0904.png"
},
{
"start": 369,
"end": 376,
"label": "6:09",
"url": "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260614_231038_29c60f53-0a29-4fea-84f7-0aed8bf43c6b.png"
},
{
"start": 376,
"end": 378,
"label": "6:16",
"url": "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260614_231040_2d7de46f-071c-4472-86f7-38073574c602.png"
},
{
"start": 378,
"end": 379,
"label": "6:18",
"url": "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260614_231042_0318234b-10b6-40e3-aada-34497215fccc.png"
},
{
"start": 379,
"end": 383,
"label": "6:19",
"url": "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260614_231044_7d5ee35d-e840-47b8-9af4-91ccc472afa0.png"
},
{
"start": 383,
"end": 385,
"label": "6:23",
"url": "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260614_231046_97787bd9-1724-47ba-836d-50ad79391b69.png"
}
]


frames=os.path.join(HERE,"_frames"); os.makedirs(frames,exist_ok=True)
print(f"Downloading/caching {len(TIMELINE)} images ...")
raw=[]
for i,it in enumerate(TIMELINE):
    ext=".png" if it["url"].lower().split("?")[0].endswith(".png") else ".jpg"
    p=os.path.join(frames,f"raw_{i:03d}{ext}")
    if not os.path.exists(p) or os.path.getsize(p)<1000:
        try: urllib.request.urlretrieve(it["url"],p)
        except Exception as e: sys.exit(f"Failed to download {it['label']} ({it['url']}): {e}")
    raw.append(p)

print("Normalizing frames to 1920x1080 ...")
norm=[]
for i,p in enumerate(raw):
    o=os.path.join(frames,f"n_{i:03d}.png")
    if not os.path.exists(o):
        subprocess.run([FF,"-y","-i",p,"-vf",
            f"scale={W}:{H}:force_original_aspect_ratio=decrease,"
            f"pad={W}:{H}:(ow-iw)/2:(oh-ih)/2:color=white,setsar=1",o],
            check=True,capture_output=True)
    norm.append(o)

adur=audio_dur(AUDIO); script_end=TIMELINE[-1]["end"]
starts=[it["start"] for it in TIMELINE]
if MODE=="fit":
    sc=adur/script_end; bounds=[s*sc for s in starts]+[adur]
elif MODE=="trim":
    bounds=[float(s) for s in starts]+[float(script_end)]
else:
    bounds=[float(s) for s in starts]+[adur]
durs=[max(0.2,bounds[i+1]-bounds[i]) for i in range(len(starts))]
print(f"Mode={MODE}  audio={adur:.1f}s  video_frames_total={sum(durs):.1f}s")

cf=os.path.join(frames,"concat.txt")
with open(cf,"w") as f:
    for p,d in zip(norm,durs):
        f.write(f"file '{p}'\nduration {d:.3f}\n")
    f.write(f"file '{norm[-1]}'\n")

print("Rendering final video ...")
subprocess.run([FF,"-y","-f","concat","-safe","0","-i",cf,"-i",AUDIO,
    "-map","0:v:0","-map","1:a:0","-fps_mode","cfr","-r",str(FPS),
    "-c:v","libx264","-preset","medium","-crf","20","-pix_fmt","yuv420p",
    "-c:a","aac","-b:a","192k","-shortest",OUT],check=True)
print(f"\nDONE -> {OUT}")
