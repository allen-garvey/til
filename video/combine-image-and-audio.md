# Combine Still Image and Audio into Video

Change `-t 102` to the time of the audio in seconds. Can also try using `-shortest` instead, but doesn't always calculate audio time correctly.

`time ffmpeg -r 1 -loop 1 -i image.jpg -i audio.wav -acodec aac -vcodec libx264 -r 1 -t 102 out.mp4`