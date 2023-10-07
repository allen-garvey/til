# Note that %04 is number of digits in frame numbers
# so if extracting a higher amount of frames you will need a higher number

# Extract video to frames at 8 fps
ffmpeg -i input.mp4 -vf fps=8 '%04d.jpg'

# convert frames back to video at 8 fps
ffmpeg -framerate 8 -f image2 -i ./%4d.png out.mp4