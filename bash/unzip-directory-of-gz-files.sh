# unzip a directory full of gz files
find . -type f -name '*.gz' -exec gunzip {} \;