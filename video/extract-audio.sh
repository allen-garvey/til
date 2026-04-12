# Extract original audio from video
ffmpeg -i movie.mp4 -vn -acodec copy audio.m4a