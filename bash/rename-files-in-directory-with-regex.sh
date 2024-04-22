
# https://stackoverflow.com/questions/21359567/awk-sed-regex-to-rename-files
# takes migration files in format "20240101_some_name.exs" renames to "20240101_prefix_some_name.exs"
# BASH_REMATCH[0] is the full match

# prints new file name only
for f in *.exs; do 
  [[ $f =~ ^([0-9]+)(.+)$ ]]
  prefix="movielist"
  echo mv "$f" \
"${BASH_REMATCH[1]}_${prefix}${BASH_REMATCH[2]}"
done 

# actually does the rename
for f in *.exs; do 
  [[ $f =~ ^([0-9]+)(.+)$ ]]
  prefix="movielist"
  mv "$f" \
"${BASH_REMATCH[1]}_${prefix}${BASH_REMATCH[2]}"
done 