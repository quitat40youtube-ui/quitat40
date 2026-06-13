#!/usr/bin/env bash
# Downloads all 163 Coast FIRE scene images, named by their script timestamp.
# Run on a machine that can reach the Higgsfield CDN.
# Files are named like 0:00.png ... 13:44.png (the START timestamp of each line).
# NOTE: ":" is illegal in filenames on Windows. Set SAFE=1 to use "0-00.png" instead.
set -euo pipefail
SAFE="${SAFE:-0}"
mkdir -p images
ok=0; fail=0
name="0:00"; [ "$SAFE" = "1" ] && name="0-00"
curl -fsSL "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260613_125950_6f93e61d-8407-4c4f-ae36-25a629db9587.png" -o "images/${name}.png" && ok=$((ok+1)) || { echo "FAIL ${name}"; fail=$((fail+1)); }
name="0:04"; [ "$SAFE" = "1" ] && name="0-04"
curl -fsSL "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260613_125955_1eb2def9-40ac-4ee9-a06f-c6c8041b45a3.png" -o "images/${name}.png" && ok=$((ok+1)) || { echo "FAIL ${name}"; fail=$((fail+1)); }
name="0:07"; [ "$SAFE" = "1" ] && name="0-07"
curl -fsSL "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260613_125959_6ef3b188-ee27-4dd1-a82f-f293a614999d.png" -o "images/${name}.png" && ok=$((ok+1)) || { echo "FAIL ${name}"; fail=$((fail+1)); }
name="0:10"; [ "$SAFE" = "1" ] && name="0-10"
curl -fsSL "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260613_130003_8c8e5684-dfbe-4c39-b4c5-dda2cb199bfa.png" -o "images/${name}.png" && ok=$((ok+1)) || { echo "FAIL ${name}"; fail=$((fail+1)); }
name="0:14"; [ "$SAFE" = "1" ] && name="0-14"
curl -fsSL "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260613_130006_a5d9778a-31d5-4a35-9295-8470e8427d92.png" -o "images/${name}.png" && ok=$((ok+1)) || { echo "FAIL ${name}"; fail=$((fail+1)); }
name="0:19"; [ "$SAFE" = "1" ] && name="0-19"
curl -fsSL "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260613_130009_63010dde-c1ba-462c-ae72-f63b5cda8407.png" -o "images/${name}.png" && ok=$((ok+1)) || { echo "FAIL ${name}"; fail=$((fail+1)); }
name="0:23"; [ "$SAFE" = "1" ] && name="0-23"
curl -fsSL "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260613_130012_27964893-981e-4e73-9a18-6075c327443a.png" -o "images/${name}.png" && ok=$((ok+1)) || { echo "FAIL ${name}"; fail=$((fail+1)); }
name="0:26"; [ "$SAFE" = "1" ] && name="0-26"
curl -fsSL "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260613_130015_3095a97e-7460-4458-98bc-09237c7508c4.png" -o "images/${name}.png" && ok=$((ok+1)) || { echo "FAIL ${name}"; fail=$((fail+1)); }
name="0:30"; [ "$SAFE" = "1" ] && name="0-30"
curl -fsSL "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260613_130018_eec0bc49-216c-4b93-a356-ced936ebd55d.png" -o "images/${name}.png" && ok=$((ok+1)) || { echo "FAIL ${name}"; fail=$((fail+1)); }
name="0:33"; [ "$SAFE" = "1" ] && name="0-33"
curl -fsSL "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260613_130020_ecf1fe0c-ab82-4d21-a68e-9846cba85d5e.png" -o "images/${name}.png" && ok=$((ok+1)) || { echo "FAIL ${name}"; fail=$((fail+1)); }
name="0:35"; [ "$SAFE" = "1" ] && name="0-35"
curl -fsSL "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260613_130024_4eb25c4b-ad3c-42d8-b1fe-fbf4a3695de1.png" -o "images/${name}.png" && ok=$((ok+1)) || { echo "FAIL ${name}"; fail=$((fail+1)); }
name="0:41"; [ "$SAFE" = "1" ] && name="0-41"
curl -fsSL "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260613_130027_c89f0be0-5109-4640-a01c-a04f367b3a8a.png" -o "images/${name}.png" && ok=$((ok+1)) || { echo "FAIL ${name}"; fail=$((fail+1)); }
name="0:43"; [ "$SAFE" = "1" ] && name="0-43"
curl -fsSL "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260613_130030_bbf36e1e-4f52-4308-bc07-2ac1abee4f5c.png" -o "images/${name}.png" && ok=$((ok+1)) || { echo "FAIL ${name}"; fail=$((fail+1)); }
name="0:45"; [ "$SAFE" = "1" ] && name="0-45"
curl -fsSL "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260613_130037_dbdb9aba-fcfe-415f-9ef3-e1dcb4b064bf.png" -o "images/${name}.png" && ok=$((ok+1)) || { echo "FAIL ${name}"; fail=$((fail+1)); }
name="0:50"; [ "$SAFE" = "1" ] && name="0-50"
curl -fsSL "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260613_130040_fdbec524-3801-43de-b8c7-12150da0e5a9.png" -o "images/${name}.png" && ok=$((ok+1)) || { echo "FAIL ${name}"; fail=$((fail+1)); }
name="0:53"; [ "$SAFE" = "1" ] && name="0-53"
curl -fsSL "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260613_130047_f2cafcd1-00a4-4e2e-994e-1e17a40195ba.png" -o "images/${name}.png" && ok=$((ok+1)) || { echo "FAIL ${name}"; fail=$((fail+1)); }
name="0:56"; [ "$SAFE" = "1" ] && name="0-56"
curl -fsSL "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260613_130153_8d651a62-b219-45f2-9649-12b6c4ab29e7.png" -o "images/${name}.png" && ok=$((ok+1)) || { echo "FAIL ${name}"; fail=$((fail+1)); }
name="0:59"; [ "$SAFE" = "1" ] && name="0-59"
curl -fsSL "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260613_130156_98008d94-778b-4d90-92bb-9e596cc2f156.png" -o "images/${name}.png" && ok=$((ok+1)) || { echo "FAIL ${name}"; fail=$((fail+1)); }
name="1:02"; [ "$SAFE" = "1" ] && name="1-02"
curl -fsSL "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260613_130223_9416ba12-445d-4d1c-ad93-119c8eb06206.png" -o "images/${name}.png" && ok=$((ok+1)) || { echo "FAIL ${name}"; fail=$((fail+1)); }
name="1:04"; [ "$SAFE" = "1" ] && name="1-04"
curl -fsSL "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260613_130238_27cd2986-221f-4ca5-a560-916c12a5f4a1.png" -o "images/${name}.png" && ok=$((ok+1)) || { echo "FAIL ${name}"; fail=$((fail+1)); }
name="1:07"; [ "$SAFE" = "1" ] && name="1-07"
curl -fsSL "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260613_130242_96631e64-8db3-4b3a-adf5-903b26333ed0.png" -o "images/${name}.png" && ok=$((ok+1)) || { echo "FAIL ${name}"; fail=$((fail+1)); }
name="1:11"; [ "$SAFE" = "1" ] && name="1-11"
curl -fsSL "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260613_130243_336415c9-bc63-4051-82e1-39e4b43166fd.png" -o "images/${name}.png" && ok=$((ok+1)) || { echo "FAIL ${name}"; fail=$((fail+1)); }
name="1:14"; [ "$SAFE" = "1" ] && name="1-14"
curl -fsSL "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260613_130243_bc11f2a4-386b-4d1f-851b-62a29209a3e5.png" -o "images/${name}.png" && ok=$((ok+1)) || { echo "FAIL ${name}"; fail=$((fail+1)); }
name="1:16"; [ "$SAFE" = "1" ] && name="1-16"
curl -fsSL "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260613_130244_86cd6e93-afc7-4b53-bd3d-c6c170abdfc3.png" -o "images/${name}.png" && ok=$((ok+1)) || { echo "FAIL ${name}"; fail=$((fail+1)); }
name="1:20"; [ "$SAFE" = "1" ] && name="1-20"
curl -fsSL "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260613_130245_8e2ad397-b024-4c3a-bd39-0b20c3a701a4.png" -o "images/${name}.png" && ok=$((ok+1)) || { echo "FAIL ${name}"; fail=$((fail+1)); }
name="1:22"; [ "$SAFE" = "1" ] && name="1-22"
curl -fsSL "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260613_130246_a500fcee-f466-4d06-9dec-5bc5f1a71da9.png" -o "images/${name}.png" && ok=$((ok+1)) || { echo "FAIL ${name}"; fail=$((fail+1)); }
name="1:28"; [ "$SAFE" = "1" ] && name="1-28"
curl -fsSL "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260613_130246_8c188baa-d234-4851-bd78-41d12b942d5c.png" -o "images/${name}.png" && ok=$((ok+1)) || { echo "FAIL ${name}"; fail=$((fail+1)); }
name="1:34"; [ "$SAFE" = "1" ] && name="1-34"
curl -fsSL "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260613_130339_2a3aaacc-88a2-4315-9ec7-f1ee8892ac03.png" -o "images/${name}.png" && ok=$((ok+1)) || { echo "FAIL ${name}"; fail=$((fail+1)); }
name="1:37"; [ "$SAFE" = "1" ] && name="1-37"
curl -fsSL "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260613_130248_7181ac57-f686-49e3-b80f-3b73d9ee0e05.png" -o "images/${name}.png" && ok=$((ok+1)) || { echo "FAIL ${name}"; fail=$((fail+1)); }
name="1:42"; [ "$SAFE" = "1" ] && name="1-42"
curl -fsSL "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260613_130341_c80d1b38-eae8-4f70-b5e1-66fcf32728e9.png" -o "images/${name}.png" && ok=$((ok+1)) || { echo "FAIL ${name}"; fail=$((fail+1)); }
name="1:44"; [ "$SAFE" = "1" ] && name="1-44"
curl -fsSL "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260613_130343_72155129-7970-40c0-99ab-05915f0c4bec.png" -o "images/${name}.png" && ok=$((ok+1)) || { echo "FAIL ${name}"; fail=$((fail+1)); }
name="1:48"; [ "$SAFE" = "1" ] && name="1-48"
curl -fsSL "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260613_130345_38a46981-a10c-4022-9be6-ea1b7fcb9237.png" -o "images/${name}.png" && ok=$((ok+1)) || { echo "FAIL ${name}"; fail=$((fail+1)); }
name="1:55"; [ "$SAFE" = "1" ] && name="1-55"
curl -fsSL "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260613_130347_dc5daf49-b793-4ad9-afc9-466bb4206726.png" -o "images/${name}.png" && ok=$((ok+1)) || { echo "FAIL ${name}"; fail=$((fail+1)); }
name="1:59"; [ "$SAFE" = "1" ] && name="1-59"
curl -fsSL "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260613_130349_295f20c5-ac54-4c82-9f0a-265069b70cc5.png" -o "images/${name}.png" && ok=$((ok+1)) || { echo "FAIL ${name}"; fail=$((fail+1)); }
name="2:02"; [ "$SAFE" = "1" ] && name="2-02"
curl -fsSL "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260613_130351_cdfbf790-b694-41e3-8e63-87b3ffcc17e3.png" -o "images/${name}.png" && ok=$((ok+1)) || { echo "FAIL ${name}"; fail=$((fail+1)); }
name="2:04"; [ "$SAFE" = "1" ] && name="2-04"
curl -fsSL "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260613_130353_6d9312d4-b03b-4229-a784-09a5bcdca401.png" -o "images/${name}.png" && ok=$((ok+1)) || { echo "FAIL ${name}"; fail=$((fail+1)); }
name="2:09"; [ "$SAFE" = "1" ] && name="2-09"
curl -fsSL "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260613_130413_2a29f22f-db3d-4ecb-a722-3758b56c5641.png" -o "images/${name}.png" && ok=$((ok+1)) || { echo "FAIL ${name}"; fail=$((fail+1)); }
name="2:13"; [ "$SAFE" = "1" ] && name="2-13"
curl -fsSL "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260613_130415_68216178-4138-471d-b7cd-2098d5035b7c.png" -o "images/${name}.png" && ok=$((ok+1)) || { echo "FAIL ${name}"; fail=$((fail+1)); }
name="2:15"; [ "$SAFE" = "1" ] && name="2-15"
curl -fsSL "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260613_130417_07c0a51f-5287-45c6-b072-bfe16e981d20.png" -o "images/${name}.png" && ok=$((ok+1)) || { echo "FAIL ${name}"; fail=$((fail+1)); }
name="2:19"; [ "$SAFE" = "1" ] && name="2-19"
curl -fsSL "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260613_130419_a538fa60-aae6-435d-a1b6-f339151d88e7.png" -o "images/${name}.png" && ok=$((ok+1)) || { echo "FAIL ${name}"; fail=$((fail+1)); }
name="2:22"; [ "$SAFE" = "1" ] && name="2-22"
curl -fsSL "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260613_130421_fed29908-39da-4448-b148-ad4e0d9a0dc8.png" -o "images/${name}.png" && ok=$((ok+1)) || { echo "FAIL ${name}"; fail=$((fail+1)); }
name="2:25"; [ "$SAFE" = "1" ] && name="2-25"
curl -fsSL "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260613_130423_d5934d9f-4b90-4365-bdce-95030fb49764.png" -o "images/${name}.png" && ok=$((ok+1)) || { echo "FAIL ${name}"; fail=$((fail+1)); }
name="2:29"; [ "$SAFE" = "1" ] && name="2-29"
curl -fsSL "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260613_130426_ebd9269a-c24b-49ef-88c1-88619719a100.png" -o "images/${name}.png" && ok=$((ok+1)) || { echo "FAIL ${name}"; fail=$((fail+1)); }
name="2:32"; [ "$SAFE" = "1" ] && name="2-32"
curl -fsSL "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260613_130427_fb76e15a-8121-4aa3-8243-38a17321c6ab.png" -o "images/${name}.png" && ok=$((ok+1)) || { echo "FAIL ${name}"; fail=$((fail+1)); }
name="2:37"; [ "$SAFE" = "1" ] && name="2-37"
curl -fsSL "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260613_130442_35ecfc11-3c64-48ce-af86-1bec5e15a99b.png" -o "images/${name}.png" && ok=$((ok+1)) || { echo "FAIL ${name}"; fail=$((fail+1)); }
name="2:38"; [ "$SAFE" = "1" ] && name="2-38"
curl -fsSL "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260613_130444_ed6e5cdc-1d87-4c88-8614-2d8cfa4f7eb3.png" -o "images/${name}.png" && ok=$((ok+1)) || { echo "FAIL ${name}"; fail=$((fail+1)); }
name="2:40"; [ "$SAFE" = "1" ] && name="2-40"
curl -fsSL "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260613_130446_ee760584-92a8-4088-89bf-bc39a0d4a42d.png" -o "images/${name}.png" && ok=$((ok+1)) || { echo "FAIL ${name}"; fail=$((fail+1)); }
name="2:42"; [ "$SAFE" = "1" ] && name="2-42"
curl -fsSL "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260613_130449_ddaf6c00-cfc0-44d7-9648-d05172b3f738.png" -o "images/${name}.png" && ok=$((ok+1)) || { echo "FAIL ${name}"; fail=$((fail+1)); }
name="2:45"; [ "$SAFE" = "1" ] && name="2-45"
curl -fsSL "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260613_130451_b4cd545a-1154-4b0d-bbe3-3cb227f5d2e6.png" -o "images/${name}.png" && ok=$((ok+1)) || { echo "FAIL ${name}"; fail=$((fail+1)); }
name="2:48"; [ "$SAFE" = "1" ] && name="2-48"
curl -fsSL "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260613_130452_ed3804ed-e91d-4f67-a5b9-9624a1d0d777.png" -o "images/${name}.png" && ok=$((ok+1)) || { echo "FAIL ${name}"; fail=$((fail+1)); }
name="2:50"; [ "$SAFE" = "1" ] && name="2-50"
curl -fsSL "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260613_130455_2e6a3a0d-90f8-4e6e-8cde-568994950535.png" -o "images/${name}.png" && ok=$((ok+1)) || { echo "FAIL ${name}"; fail=$((fail+1)); }
name="2:52"; [ "$SAFE" = "1" ] && name="2-52"
curl -fsSL "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260613_130456_719c831b-13b3-4a5c-86ee-326327b34049.png" -o "images/${name}.png" && ok=$((ok+1)) || { echo "FAIL ${name}"; fail=$((fail+1)); }
name="2:54"; [ "$SAFE" = "1" ] && name="2-54"
curl -fsSL "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260613_130513_fda551b0-c823-423f-a01d-a5638a7c170d.png" -o "images/${name}.png" && ok=$((ok+1)) || { echo "FAIL ${name}"; fail=$((fail+1)); }
name="2:57"; [ "$SAFE" = "1" ] && name="2-57"
curl -fsSL "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260613_130515_c93232fc-2b88-4293-952c-fb1cf09c7904.png" -o "images/${name}.png" && ok=$((ok+1)) || { echo "FAIL ${name}"; fail=$((fail+1)); }
name="2:59"; [ "$SAFE" = "1" ] && name="2-59"
curl -fsSL "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260613_130517_5b28e6a2-4030-45b6-a374-cecd20e80fc9.png" -o "images/${name}.png" && ok=$((ok+1)) || { echo "FAIL ${name}"; fail=$((fail+1)); }
name="3:01"; [ "$SAFE" = "1" ] && name="3-01"
curl -fsSL "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260613_130519_bb9f9ea4-9aa9-41e3-935b-bac3ba9495cb.png" -o "images/${name}.png" && ok=$((ok+1)) || { echo "FAIL ${name}"; fail=$((fail+1)); }
name="3:03"; [ "$SAFE" = "1" ] && name="3-03"
curl -fsSL "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260613_130521_02346e88-7868-4121-b8fd-d0f44d74a559.png" -o "images/${name}.png" && ok=$((ok+1)) || { echo "FAIL ${name}"; fail=$((fail+1)); }
name="3:04"; [ "$SAFE" = "1" ] && name="3-04"
curl -fsSL "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260613_130522_f3c77b2c-9161-4a7e-a4f3-3774e2d305d3.png" -o "images/${name}.png" && ok=$((ok+1)) || { echo "FAIL ${name}"; fail=$((fail+1)); }
name="3:08"; [ "$SAFE" = "1" ] && name="3-08"
curl -fsSL "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260613_130524_0f6cb84b-7645-41cf-a32d-4c4c8f8451f4.png" -o "images/${name}.png" && ok=$((ok+1)) || { echo "FAIL ${name}"; fail=$((fail+1)); }
name="3:10"; [ "$SAFE" = "1" ] && name="3-10"
curl -fsSL "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260613_130526_ba3b222c-af5c-491c-840e-cfc118fd9803.png" -o "images/${name}.png" && ok=$((ok+1)) || { echo "FAIL ${name}"; fail=$((fail+1)); }
name="3:14"; [ "$SAFE" = "1" ] && name="3-14"
curl -fsSL "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260613_130542_8750ddd4-dd04-4a9e-8fc7-58fa570e84e8.png" -o "images/${name}.png" && ok=$((ok+1)) || { echo "FAIL ${name}"; fail=$((fail+1)); }
name="3:16"; [ "$SAFE" = "1" ] && name="3-16"
curl -fsSL "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260613_130544_6bca0709-1b00-48fb-b56b-2a9f97b5ec09.png" -o "images/${name}.png" && ok=$((ok+1)) || { echo "FAIL ${name}"; fail=$((fail+1)); }
name="3:18"; [ "$SAFE" = "1" ] && name="3-18"
curl -fsSL "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260613_130546_3cb09919-2cd4-4882-9121-0c12a8873b41.png" -o "images/${name}.png" && ok=$((ok+1)) || { echo "FAIL ${name}"; fail=$((fail+1)); }
name="3:23"; [ "$SAFE" = "1" ] && name="3-23"
curl -fsSL "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260613_130548_5119b240-8dc3-4dc9-96ee-a398e94034ae.png" -o "images/${name}.png" && ok=$((ok+1)) || { echo "FAIL ${name}"; fail=$((fail+1)); }
name="3:27"; [ "$SAFE" = "1" ] && name="3-27"
curl -fsSL "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260613_130550_ce645d63-736d-49b3-8c41-ca5869b24d62.png" -o "images/${name}.png" && ok=$((ok+1)) || { echo "FAIL ${name}"; fail=$((fail+1)); }
name="3:29"; [ "$SAFE" = "1" ] && name="3-29"
curl -fsSL "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260613_130552_df679a73-7bad-4cfd-8561-33404b435720.png" -o "images/${name}.png" && ok=$((ok+1)) || { echo "FAIL ${name}"; fail=$((fail+1)); }
name="3:34"; [ "$SAFE" = "1" ] && name="3-34"
curl -fsSL "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260613_130554_7d70fe84-0a14-4fb2-a274-fb5c43f9f3f4.png" -o "images/${name}.png" && ok=$((ok+1)) || { echo "FAIL ${name}"; fail=$((fail+1)); }
name="3:39"; [ "$SAFE" = "1" ] && name="3-39"
curl -fsSL "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260613_130556_c913da0c-c224-44aa-9580-2bdf1fb4032a.png" -o "images/${name}.png" && ok=$((ok+1)) || { echo "FAIL ${name}"; fail=$((fail+1)); }
name="3:44"; [ "$SAFE" = "1" ] && name="3-44"
curl -fsSL "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260613_130610_8553b20d-5b1a-42db-9c9b-0b74ec349ce7.png" -o "images/${name}.png" && ok=$((ok+1)) || { echo "FAIL ${name}"; fail=$((fail+1)); }
name="3:47"; [ "$SAFE" = "1" ] && name="3-47"
curl -fsSL "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260613_130612_0a3f2b6d-0aa9-40a6-b4c7-729d95785cd0.png" -o "images/${name}.png" && ok=$((ok+1)) || { echo "FAIL ${name}"; fail=$((fail+1)); }
name="3:51"; [ "$SAFE" = "1" ] && name="3-51"
curl -fsSL "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260613_130614_725985ac-90ae-480b-93ed-286bc3c55d4f.png" -o "images/${name}.png" && ok=$((ok+1)) || { echo "FAIL ${name}"; fail=$((fail+1)); }
name="3:57"; [ "$SAFE" = "1" ] && name="3-57"
curl -fsSL "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260613_130616_eb274c50-185f-420e-898d-63cf81a6f4f0.png" -o "images/${name}.png" && ok=$((ok+1)) || { echo "FAIL ${name}"; fail=$((fail+1)); }
name="4:00"; [ "$SAFE" = "1" ] && name="4-00"
curl -fsSL "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260613_130618_d2cdd193-0174-4443-b611-79c2b2937552.png" -o "images/${name}.png" && ok=$((ok+1)) || { echo "FAIL ${name}"; fail=$((fail+1)); }
name="4:02"; [ "$SAFE" = "1" ] && name="4-02"
curl -fsSL "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260613_130620_4e7acaed-9005-4150-91c0-510569b5e2e8.png" -o "images/${name}.png" && ok=$((ok+1)) || { echo "FAIL ${name}"; fail=$((fail+1)); }
name="4:06"; [ "$SAFE" = "1" ] && name="4-06"
curl -fsSL "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260613_130622_a4fe1f22-475f-4076-ad35-ea947846d284.png" -o "images/${name}.png" && ok=$((ok+1)) || { echo "FAIL ${name}"; fail=$((fail+1)); }
name="4:13"; [ "$SAFE" = "1" ] && name="4-13"
curl -fsSL "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260613_130623_f018c0a2-be3b-4e34-9da0-041f51628dbc.png" -o "images/${name}.png" && ok=$((ok+1)) || { echo "FAIL ${name}"; fail=$((fail+1)); }
name="4:18"; [ "$SAFE" = "1" ] && name="4-18"
curl -fsSL "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260613_130639_29fbc6c4-5748-410b-97fd-59346279a18c.png" -o "images/${name}.png" && ok=$((ok+1)) || { echo "FAIL ${name}"; fail=$((fail+1)); }
name="4:23"; [ "$SAFE" = "1" ] && name="4-23"
curl -fsSL "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260613_130642_e4d8f366-f8c7-46a7-ae2e-bbc58c43a314.png" -o "images/${name}.png" && ok=$((ok+1)) || { echo "FAIL ${name}"; fail=$((fail+1)); }
name="4:30"; [ "$SAFE" = "1" ] && name="4-30"
curl -fsSL "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260613_130644_212f1987-19f5-4bc9-adf4-c3c6d0ce82a2.png" -o "images/${name}.png" && ok=$((ok+1)) || { echo "FAIL ${name}"; fail=$((fail+1)); }
name="4:35"; [ "$SAFE" = "1" ] && name="4-35"
curl -fsSL "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260613_130646_1260403c-06f7-4804-803a-138383d5614a.png" -o "images/${name}.png" && ok=$((ok+1)) || { echo "FAIL ${name}"; fail=$((fail+1)); }
name="4:37"; [ "$SAFE" = "1" ] && name="4-37"
curl -fsSL "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260613_130648_fb19435e-84a7-4c27-9507-4053af50fa48.png" -o "images/${name}.png" && ok=$((ok+1)) || { echo "FAIL ${name}"; fail=$((fail+1)); }
name="4:43"; [ "$SAFE" = "1" ] && name="4-43"
curl -fsSL "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260613_130650_b99988c7-e2e1-4319-ad4a-5298b5ef83fc.png" -o "images/${name}.png" && ok=$((ok+1)) || { echo "FAIL ${name}"; fail=$((fail+1)); }
name="4:46"; [ "$SAFE" = "1" ] && name="4-46"
curl -fsSL "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260613_130652_c76bd022-0fde-46a5-8c16-4d02289ce286.png" -o "images/${name}.png" && ok=$((ok+1)) || { echo "FAIL ${name}"; fail=$((fail+1)); }
name="4:49"; [ "$SAFE" = "1" ] && name="4-49"
curl -fsSL "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260613_130653_2536cffd-fe4b-42f2-a341-5f3bfa71eb44.png" -o "images/${name}.png" && ok=$((ok+1)) || { echo "FAIL ${name}"; fail=$((fail+1)); }
name="4:55"; [ "$SAFE" = "1" ] && name="4-55"
curl -fsSL "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260613_130709_814a51c2-a1be-4abe-904e-aa07d747f6e5.png" -o "images/${name}.png" && ok=$((ok+1)) || { echo "FAIL ${name}"; fail=$((fail+1)); }
name="5:01"; [ "$SAFE" = "1" ] && name="5-01"
curl -fsSL "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260613_130711_56007a95-6e53-4dad-a4b4-8207b572630f.png" -o "images/${name}.png" && ok=$((ok+1)) || { echo "FAIL ${name}"; fail=$((fail+1)); }
name="5:10"; [ "$SAFE" = "1" ] && name="5-10"
curl -fsSL "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260613_130713_15a9f5e2-ba83-4c44-b0be-341f4eac98a6.png" -o "images/${name}.png" && ok=$((ok+1)) || { echo "FAIL ${name}"; fail=$((fail+1)); }
name="5:20"; [ "$SAFE" = "1" ] && name="5-20"
curl -fsSL "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260613_130715_c9119b1f-b34d-4fe6-9bf4-c695a3327e0c.png" -o "images/${name}.png" && ok=$((ok+1)) || { echo "FAIL ${name}"; fail=$((fail+1)); }
name="5:22"; [ "$SAFE" = "1" ] && name="5-22"
curl -fsSL "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260613_130720_70277009-5d4a-4b58-bea6-c0cc092c31db.png" -o "images/${name}.png" && ok=$((ok+1)) || { echo "FAIL ${name}"; fail=$((fail+1)); }
name="5:31"; [ "$SAFE" = "1" ] && name="5-31"
curl -fsSL "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260613_130720_79a5c781-f374-4007-a2ab-89329701895a.png" -o "images/${name}.png" && ok=$((ok+1)) || { echo "FAIL ${name}"; fail=$((fail+1)); }
name="5:41"; [ "$SAFE" = "1" ] && name="5-41"
curl -fsSL "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260613_130722_e2df3db9-ae38-4621-bd90-2859e3d08234.png" -o "images/${name}.png" && ok=$((ok+1)) || { echo "FAIL ${name}"; fail=$((fail+1)); }
name="5:44"; [ "$SAFE" = "1" ] && name="5-44"
curl -fsSL "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260613_130723_a0a0fc8e-99c5-4b61-bb21-2f8bf64cd7f1.png" -o "images/${name}.png" && ok=$((ok+1)) || { echo "FAIL ${name}"; fail=$((fail+1)); }
name="5:50"; [ "$SAFE" = "1" ] && name="5-50"
curl -fsSL "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260613_130739_b367e0e4-1d74-4da1-a225-4337b1c98fde.png" -o "images/${name}.png" && ok=$((ok+1)) || { echo "FAIL ${name}"; fail=$((fail+1)); }
name="5:56"; [ "$SAFE" = "1" ] && name="5-56"
curl -fsSL "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260613_130742_fcd4a630-7dab-489a-9931-a3413a735f43.png" -o "images/${name}.png" && ok=$((ok+1)) || { echo "FAIL ${name}"; fail=$((fail+1)); }
name="6:07"; [ "$SAFE" = "1" ] && name="6-07"
curl -fsSL "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260613_130743_af27e45b-faec-4032-8fbc-aecdfa3c4383.png" -o "images/${name}.png" && ok=$((ok+1)) || { echo "FAIL ${name}"; fail=$((fail+1)); }
name="6:10"; [ "$SAFE" = "1" ] && name="6-10"
curl -fsSL "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260613_130745_3c5f58dc-10f9-46b8-8ce4-bf35aae4bd20.png" -o "images/${name}.png" && ok=$((ok+1)) || { echo "FAIL ${name}"; fail=$((fail+1)); }
name="6:15"; [ "$SAFE" = "1" ] && name="6-15"
curl -fsSL "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260613_130748_af4ba390-c6cb-4afc-9abe-ffae38092830.png" -o "images/${name}.png" && ok=$((ok+1)) || { echo "FAIL ${name}"; fail=$((fail+1)); }
name="6:20"; [ "$SAFE" = "1" ] && name="6-20"
curl -fsSL "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260613_130749_b0114b5a-9055-4b7d-ade2-22b156c59118.png" -o "images/${name}.png" && ok=$((ok+1)) || { echo "FAIL ${name}"; fail=$((fail+1)); }
name="6:30"; [ "$SAFE" = "1" ] && name="6-30"
curl -fsSL "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260613_130751_47a0084d-5989-42c1-b7d3-48d14b8f6c3a.png" -o "images/${name}.png" && ok=$((ok+1)) || { echo "FAIL ${name}"; fail=$((fail+1)); }
name="6:37"; [ "$SAFE" = "1" ] && name="6-37"
curl -fsSL "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260613_130753_3f99f232-2d00-4e3a-9c5e-b877f6cff934.png" -o "images/${name}.png" && ok=$((ok+1)) || { echo "FAIL ${name}"; fail=$((fail+1)); }
name="6:43"; [ "$SAFE" = "1" ] && name="6-43"
curl -fsSL "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260613_130809_9ef8742b-cab3-46b5-85fd-9360779fc15f.png" -o "images/${name}.png" && ok=$((ok+1)) || { echo "FAIL ${name}"; fail=$((fail+1)); }
name="6:52"; [ "$SAFE" = "1" ] && name="6-52"
curl -fsSL "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260613_130811_be61f722-5a37-46cc-b197-07cde3137442.png" -o "images/${name}.png" && ok=$((ok+1)) || { echo "FAIL ${name}"; fail=$((fail+1)); }
name="7:00"; [ "$SAFE" = "1" ] && name="7-00"
curl -fsSL "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260613_130812_932b204d-f133-4181-bfb5-c067f792e617.png" -o "images/${name}.png" && ok=$((ok+1)) || { echo "FAIL ${name}"; fail=$((fail+1)); }
name="7:11"; [ "$SAFE" = "1" ] && name="7-11"
curl -fsSL "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260613_130815_de9d0977-e0ef-4bec-bcee-fed6c98bdce3.png" -o "images/${name}.png" && ok=$((ok+1)) || { echo "FAIL ${name}"; fail=$((fail+1)); }
name="7:22"; [ "$SAFE" = "1" ] && name="7-22"
curl -fsSL "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260613_130816_9449e3ce-4a9c-496b-9b05-97b9bac16ae8.png" -o "images/${name}.png" && ok=$((ok+1)) || { echo "FAIL ${name}"; fail=$((fail+1)); }
name="7:29"; [ "$SAFE" = "1" ] && name="7-29"
curl -fsSL "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260613_130819_c699a47e-c8d9-4482-ba67-6db6d6e609aa.png" -o "images/${name}.png" && ok=$((ok+1)) || { echo "FAIL ${name}"; fail=$((fail+1)); }
name="7:33"; [ "$SAFE" = "1" ] && name="7-33"
curl -fsSL "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260613_130821_f90f9107-2b19-4cad-b704-5365df30c5d2.png" -o "images/${name}.png" && ok=$((ok+1)) || { echo "FAIL ${name}"; fail=$((fail+1)); }
name="7:37"; [ "$SAFE" = "1" ] && name="7-37"
curl -fsSL "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260613_130822_3702a316-db57-4c12-8ac7-00d58f220ba9.png" -o "images/${name}.png" && ok=$((ok+1)) || { echo "FAIL ${name}"; fail=$((fail+1)); }
name="7:48"; [ "$SAFE" = "1" ] && name="7-48"
curl -fsSL "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260613_130839_e95df744-4b94-4f3c-a48a-679a05b3ab10.png" -o "images/${name}.png" && ok=$((ok+1)) || { echo "FAIL ${name}"; fail=$((fail+1)); }
name="7:56"; [ "$SAFE" = "1" ] && name="7-56"
curl -fsSL "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260613_130841_c0598166-8ff2-4249-aa61-791091965095.png" -o "images/${name}.png" && ok=$((ok+1)) || { echo "FAIL ${name}"; fail=$((fail+1)); }
name="8:00"; [ "$SAFE" = "1" ] && name="8-00"
curl -fsSL "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260613_130843_77eb1251-e429-48b8-8b00-f5f4e18e0af9.png" -o "images/${name}.png" && ok=$((ok+1)) || { echo "FAIL ${name}"; fail=$((fail+1)); }
name="8:10"; [ "$SAFE" = "1" ] && name="8-10"
curl -fsSL "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260613_130845_0a2dc272-d7a2-4310-bcef-f50e7b2c2c55.png" -o "images/${name}.png" && ok=$((ok+1)) || { echo "FAIL ${name}"; fail=$((fail+1)); }
name="8:21"; [ "$SAFE" = "1" ] && name="8-21"
curl -fsSL "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260613_130846_4dbf691e-c0b0-4266-b8d9-aac3ec285d4d.png" -o "images/${name}.png" && ok=$((ok+1)) || { echo "FAIL ${name}"; fail=$((fail+1)); }
name="8:26"; [ "$SAFE" = "1" ] && name="8-26"
curl -fsSL "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260613_130848_a1adb981-f8a4-4fd9-84c8-2310e8375901.png" -o "images/${name}.png" && ok=$((ok+1)) || { echo "FAIL ${name}"; fail=$((fail+1)); }
name="8:33"; [ "$SAFE" = "1" ] && name="8-33"
curl -fsSL "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260613_130851_604c5487-c0dd-4687-bdff-8f1b8b1d1efe.png" -o "images/${name}.png" && ok=$((ok+1)) || { echo "FAIL ${name}"; fail=$((fail+1)); }
name="8:46"; [ "$SAFE" = "1" ] && name="8-46"
curl -fsSL "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260613_130853_2b89060f-d6f8-4067-96c3-5c5d52093870.png" -o "images/${name}.png" && ok=$((ok+1)) || { echo "FAIL ${name}"; fail=$((fail+1)); }
name="8:52"; [ "$SAFE" = "1" ] && name="8-52"
curl -fsSL "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260613_130908_4b2f95c8-a82c-4ca8-893b-53d48ed60f94.png" -o "images/${name}.png" && ok=$((ok+1)) || { echo "FAIL ${name}"; fail=$((fail+1)); }
name="8:57"; [ "$SAFE" = "1" ] && name="8-57"
curl -fsSL "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260613_130910_83631e43-a791-4670-96dc-bfe76a103d96.png" -o "images/${name}.png" && ok=$((ok+1)) || { echo "FAIL ${name}"; fail=$((fail+1)); }
name="8:58"; [ "$SAFE" = "1" ] && name="8-58"
curl -fsSL "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260613_130912_d8d921ba-97a0-4c78-9bf1-47b6a1f611cd.png" -o "images/${name}.png" && ok=$((ok+1)) || { echo "FAIL ${name}"; fail=$((fail+1)); }
name="9:04"; [ "$SAFE" = "1" ] && name="9-04"
curl -fsSL "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260613_130913_9e807b90-f7f4-4d09-ab2d-65945794a8da.png" -o "images/${name}.png" && ok=$((ok+1)) || { echo "FAIL ${name}"; fail=$((fail+1)); }
name="9:13"; [ "$SAFE" = "1" ] && name="9-13"
curl -fsSL "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260613_130916_e8d9e2af-694e-4040-bd5a-f3158711d24b.png" -o "images/${name}.png" && ok=$((ok+1)) || { echo "FAIL ${name}"; fail=$((fail+1)); }
name="9:15"; [ "$SAFE" = "1" ] && name="9-15"
curl -fsSL "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260613_130918_61192845-454e-4e24-8bf6-c8a836f66d76.png" -o "images/${name}.png" && ok=$((ok+1)) || { echo "FAIL ${name}"; fail=$((fail+1)); }
name="9:18"; [ "$SAFE" = "1" ] && name="9-18"
curl -fsSL "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260613_130919_5531a31a-eaa1-4ba8-920f-ae45061c0c44.png" -o "images/${name}.png" && ok=$((ok+1)) || { echo "FAIL ${name}"; fail=$((fail+1)); }
name="9:25"; [ "$SAFE" = "1" ] && name="9-25"
curl -fsSL "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260613_130921_a495b0c2-ef5f-4d8d-9bf5-09e7a5236244.png" -o "images/${name}.png" && ok=$((ok+1)) || { echo "FAIL ${name}"; fail=$((fail+1)); }
name="9:29"; [ "$SAFE" = "1" ] && name="9-29"
curl -fsSL "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260613_130939_49f0d15b-8feb-4ade-9f98-1e58214b97db.png" -o "images/${name}.png" && ok=$((ok+1)) || { echo "FAIL ${name}"; fail=$((fail+1)); }
name="9:33"; [ "$SAFE" = "1" ] && name="9-33"
curl -fsSL "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260613_130940_ccd3e805-e76c-4ef0-808a-743fe70879aa.png" -o "images/${name}.png" && ok=$((ok+1)) || { echo "FAIL ${name}"; fail=$((fail+1)); }
name="9:39"; [ "$SAFE" = "1" ] && name="9-39"
curl -fsSL "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260613_130942_c2038a28-ecde-455d-9a9f-558392e80a41.png" -o "images/${name}.png" && ok=$((ok+1)) || { echo "FAIL ${name}"; fail=$((fail+1)); }
name="9:45"; [ "$SAFE" = "1" ] && name="9-45"
curl -fsSL "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260613_130944_dcc453e0-7819-47c1-a7ca-90850296ac77.png" -o "images/${name}.png" && ok=$((ok+1)) || { echo "FAIL ${name}"; fail=$((fail+1)); }
name="9:58"; [ "$SAFE" = "1" ] && name="9-58"
curl -fsSL "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260613_130946_8d163bac-75a2-4dda-9660-958503121b92.png" -o "images/${name}.png" && ok=$((ok+1)) || { echo "FAIL ${name}"; fail=$((fail+1)); }
name="10:01"; [ "$SAFE" = "1" ] && name="10-01"
curl -fsSL "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260613_130948_a5b7dae4-74be-4754-86db-2461bc2247e1.png" -o "images/${name}.png" && ok=$((ok+1)) || { echo "FAIL ${name}"; fail=$((fail+1)); }
name="10:12"; [ "$SAFE" = "1" ] && name="10-12"
curl -fsSL "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260613_130950_3b6a640c-4545-4042-bbd6-91f33ae9af57.png" -o "images/${name}.png" && ok=$((ok+1)) || { echo "FAIL ${name}"; fail=$((fail+1)); }
name="10:19"; [ "$SAFE" = "1" ] && name="10-19"
curl -fsSL "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260613_130952_bdfae3fb-2288-470c-8b35-6af74f537c03.png" -o "images/${name}.png" && ok=$((ok+1)) || { echo "FAIL ${name}"; fail=$((fail+1)); }
name="10:32"; [ "$SAFE" = "1" ] && name="10-32"
curl -fsSL "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260613_131010_7568c3fc-ed40-4844-a58b-28e402b9a6c5.png" -o "images/${name}.png" && ok=$((ok+1)) || { echo "FAIL ${name}"; fail=$((fail+1)); }
name="10:40"; [ "$SAFE" = "1" ] && name="10-40"
curl -fsSL "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260613_131013_21f1c0af-7814-49eb-bc33-4fa4d20a0b06.png" -o "images/${name}.png" && ok=$((ok+1)) || { echo "FAIL ${name}"; fail=$((fail+1)); }
name="10:54"; [ "$SAFE" = "1" ] && name="10-54"
curl -fsSL "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260613_131014_30e5d33f-c438-4e36-b83c-018973cb09f5.png" -o "images/${name}.png" && ok=$((ok+1)) || { echo "FAIL ${name}"; fail=$((fail+1)); }
name="11:06"; [ "$SAFE" = "1" ] && name="11-06"
curl -fsSL "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260613_131016_19566bbd-476a-4516-9b5e-14c6f9241410.png" -o "images/${name}.png" && ok=$((ok+1)) || { echo "FAIL ${name}"; fail=$((fail+1)); }
name="11:10"; [ "$SAFE" = "1" ] && name="11-10"
curl -fsSL "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260613_131018_1e0c3f97-e6fc-415e-a29a-e47a33fc15aa.png" -o "images/${name}.png" && ok=$((ok+1)) || { echo "FAIL ${name}"; fail=$((fail+1)); }
name="11:21"; [ "$SAFE" = "1" ] && name="11-21"
curl -fsSL "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260613_131020_8dff96dc-1b28-44d7-9d05-11b6a02eda9d.png" -o "images/${name}.png" && ok=$((ok+1)) || { echo "FAIL ${name}"; fail=$((fail+1)); }
name="11:26"; [ "$SAFE" = "1" ] && name="11-26"
curl -fsSL "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260613_131022_b8a00b3b-10ba-4914-8630-848be4db414b.png" -o "images/${name}.png" && ok=$((ok+1)) || { echo "FAIL ${name}"; fail=$((fail+1)); }
name="11:28"; [ "$SAFE" = "1" ] && name="11-28"
curl -fsSL "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260613_131023_5509bcc1-ccfd-44c5-afb9-d4e7da330306.png" -o "images/${name}.png" && ok=$((ok+1)) || { echo "FAIL ${name}"; fail=$((fail+1)); }
name="11:33"; [ "$SAFE" = "1" ] && name="11-33"
curl -fsSL "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260613_131039_ca53abfb-7767-45c4-8df2-ee329655c965.png" -o "images/${name}.png" && ok=$((ok+1)) || { echo "FAIL ${name}"; fail=$((fail+1)); }
name="11:41"; [ "$SAFE" = "1" ] && name="11-41"
curl -fsSL "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260613_131042_b24bcb53-5f48-4c98-aba1-af98abce63ef.png" -o "images/${name}.png" && ok=$((ok+1)) || { echo "FAIL ${name}"; fail=$((fail+1)); }
name="11:50"; [ "$SAFE" = "1" ] && name="11-50"
curl -fsSL "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260613_131043_2ff574c6-20ea-452d-8a4d-c1ce90bb93f5.png" -o "images/${name}.png" && ok=$((ok+1)) || { echo "FAIL ${name}"; fail=$((fail+1)); }
name="11:53"; [ "$SAFE" = "1" ] && name="11-53"
curl -fsSL "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260613_131045_05e89c6c-f8e0-4670-9bd1-0f4da8609f9d.png" -o "images/${name}.png" && ok=$((ok+1)) || { echo "FAIL ${name}"; fail=$((fail+1)); }
name="11:59"; [ "$SAFE" = "1" ] && name="11-59"
curl -fsSL "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260613_131047_b2cd9676-01b8-4e16-b74a-14bcc40ff007.png" -o "images/${name}.png" && ok=$((ok+1)) || { echo "FAIL ${name}"; fail=$((fail+1)); }
name="12:03"; [ "$SAFE" = "1" ] && name="12-03"
curl -fsSL "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260613_131049_b1af624b-1962-4f7d-bc0c-605816d5fee0.png" -o "images/${name}.png" && ok=$((ok+1)) || { echo "FAIL ${name}"; fail=$((fail+1)); }
name="12:06"; [ "$SAFE" = "1" ] && name="12-06"
curl -fsSL "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260613_131051_e269ba38-e9e2-498a-b46b-b4c8bf262ae8.png" -o "images/${name}.png" && ok=$((ok+1)) || { echo "FAIL ${name}"; fail=$((fail+1)); }
name="12:10"; [ "$SAFE" = "1" ] && name="12-10"
curl -fsSL "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260613_131053_6307f7b7-61dc-4e89-abed-f41c7529c798.png" -o "images/${name}.png" && ok=$((ok+1)) || { echo "FAIL ${name}"; fail=$((fail+1)); }
name="12:17"; [ "$SAFE" = "1" ] && name="12-17"
curl -fsSL "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260613_131109_0cba57e0-4840-4e44-83fc-f083ddde8a98.png" -o "images/${name}.png" && ok=$((ok+1)) || { echo "FAIL ${name}"; fail=$((fail+1)); }
name="12:23"; [ "$SAFE" = "1" ] && name="12-23"
curl -fsSL "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260613_131111_148283d6-3d74-4678-be9c-1e66d4f73182.png" -o "images/${name}.png" && ok=$((ok+1)) || { echo "FAIL ${name}"; fail=$((fail+1)); }
name="12:26"; [ "$SAFE" = "1" ] && name="12-26"
curl -fsSL "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260613_131112_a23d2487-b521-43b7-95b6-b2d53c27cb59.png" -o "images/${name}.png" && ok=$((ok+1)) || { echo "FAIL ${name}"; fail=$((fail+1)); }
name="12:32"; [ "$SAFE" = "1" ] && name="12-32"
curl -fsSL "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260613_131115_b08385d3-82f3-4721-994d-50ece583a0ca.png" -o "images/${name}.png" && ok=$((ok+1)) || { echo "FAIL ${name}"; fail=$((fail+1)); }
name="12:39"; [ "$SAFE" = "1" ] && name="12-39"
curl -fsSL "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260613_131117_0dd17ad3-10d9-4046-85e8-02907f6a543b.png" -o "images/${name}.png" && ok=$((ok+1)) || { echo "FAIL ${name}"; fail=$((fail+1)); }
name="12:47"; [ "$SAFE" = "1" ] && name="12-47"
curl -fsSL "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260613_131118_2f2def69-a384-415a-9691-e7e7977608af.png" -o "images/${name}.png" && ok=$((ok+1)) || { echo "FAIL ${name}"; fail=$((fail+1)); }
name="12:58"; [ "$SAFE" = "1" ] && name="12-58"
curl -fsSL "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260613_131120_0299f1e4-0dc7-4946-9206-d0215cd41a7e.png" -o "images/${name}.png" && ok=$((ok+1)) || { echo "FAIL ${name}"; fail=$((fail+1)); }
name="13:01"; [ "$SAFE" = "1" ] && name="13-01"
curl -fsSL "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260613_131122_a0ff3808-672a-402b-b07e-0d809d38beb9.png" -o "images/${name}.png" && ok=$((ok+1)) || { echo "FAIL ${name}"; fail=$((fail+1)); }
name="13:06"; [ "$SAFE" = "1" ] && name="13-06"
curl -fsSL "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260613_131137_25184c01-88cc-4c4c-a298-a56a1b09dd23.png" -o "images/${name}.png" && ok=$((ok+1)) || { echo "FAIL ${name}"; fail=$((fail+1)); }
name="13:13"; [ "$SAFE" = "1" ] && name="13-13"
curl -fsSL "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260613_131139_e747e010-d900-4fd4-b1c3-40eee738426a.png" -o "images/${name}.png" && ok=$((ok+1)) || { echo "FAIL ${name}"; fail=$((fail+1)); }
name="13:18"; [ "$SAFE" = "1" ] && name="13-18"
curl -fsSL "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260613_131141_e3b5edc4-8da4-47f3-8e35-0df1f02e1748.png" -o "images/${name}.png" && ok=$((ok+1)) || { echo "FAIL ${name}"; fail=$((fail+1)); }
name="13:25"; [ "$SAFE" = "1" ] && name="13-25"
curl -fsSL "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260613_131142_f864c145-e04b-4ab4-b869-eb30d9ea8acc.png" -o "images/${name}.png" && ok=$((ok+1)) || { echo "FAIL ${name}"; fail=$((fail+1)); }
name="13:33"; [ "$SAFE" = "1" ] && name="13-33"
curl -fsSL "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260613_131144_77842a87-e705-41dd-9e70-8cb5181b9519.png" -o "images/${name}.png" && ok=$((ok+1)) || { echo "FAIL ${name}"; fail=$((fail+1)); }
name="13:40"; [ "$SAFE" = "1" ] && name="13-40"
curl -fsSL "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260613_131146_ddb92e74-fb71-4d98-a5e0-82db65b68d60.png" -o "images/${name}.png" && ok=$((ok+1)) || { echo "FAIL ${name}"; fail=$((fail+1)); }
name="13:44"; [ "$SAFE" = "1" ] && name="13-44"
curl -fsSL "https://d8j0ntlcm91z4.cloudfront.net/user_3EJ7eXPRDK8j3ZmKXW0B5KfoJTg/hf_20260613_131148_9f7a282c-627d-498c-8258-5cac74e88f55.png" -o "images/${name}.png" && ok=$((ok+1)) || { echo "FAIL ${name}"; fail=$((fail+1)); }
echo "done: ok=$ok fail=$fail (images/)"
