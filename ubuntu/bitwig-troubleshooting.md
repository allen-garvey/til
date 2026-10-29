# Ubuntu Bitwig Troubleshooting

## Bitwig starts but then hangs in background

* `cat ~/.BitwigStudio/log/BitwigStudio.log`
* If last line is `begin skia initialization` try rebuilding the font cache with
```sh
rm -rf ~/.cache/fontconfig/
fc-cache -f -v
```