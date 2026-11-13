# How to download a video from 1SE website

* In network tab filter by `m3u8`
* Find url for `video.m3u8`

```sh
yt-dlp \
  --cookies-from-browser chrome \
  --referer "https://me.1se.co/" \
  --add-header "Origin: https://me.1se.co" \
  "URL_FOR/video.m3u8" \
  -o "1se_video.mp4"
```
