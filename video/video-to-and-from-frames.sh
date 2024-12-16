# Note that %04 is number of digits in frame numbers
# so if extracting a higher amount of frames you will need a higher number

# Extract video to frames at 6 fps
mkdir -p output-directory && ffmpeg -i input.mp4 -vf fps=6 './output-directory/%04d.jpg'

# convert frames back to video at 6 fps
ffmpeg -framerate 6 -f image2 -i ./%4d.webp -filter:v format=pix_fmts='yuv420p' out.mp4

# to re-encode at 24 fps
ffmpeg -i <input> -filter:v fps=24 -pix_fmt yuv420p -vf "crop=trunc(iw/2)*2:trunc(ih/2)*2" <output>