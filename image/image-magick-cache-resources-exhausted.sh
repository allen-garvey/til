# What to do if you get "convert: Cache resources exhausted" error when using image magick

# display resources available
identify -list resource

# https://www.bigbinary.com/blog/configuring-memory-allocation-in-imagemagick
# show policy path
identify -list policy

# edit the policy file listed above and increase memory value to something like
# <policy domain="resource" name="memory" value="2GiB"/>