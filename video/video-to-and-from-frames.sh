# Note that %04 is number of digits in frame numbers
# so if extracting a higher amount of frames you will need a higher number

# Extract video to frames at 6 fps
mkdir -p output-directory && ffmpeg -i input.mp4 -vf fps=6 './output-directory/%04d.jpg'

# convert frames back to video at 6 fps
ffmpeg -framerate 6 -f image2 -i ./%4d.png out.mp4