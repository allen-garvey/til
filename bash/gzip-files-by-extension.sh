# Gzip files by extension

find . -type f -name "*.sql" | xargs -I{} gzip --best --keep {}