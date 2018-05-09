# How to create a custom KDE theme

* Copy one of the folders from `/usr/share/plasma/look-and-feel` to your home directory
* Rename it and modify it as you wish, remembering to give it a unique identifier in the metadata files
* Install it with `plasmapkg2 -t lookandfeel -i YOUR_THEME_DIRECTORY_PATH`
* Uninstall it with `plasmapkg2 -t lookandfeel -r YOUR_THEME_DIRECTORY_PATH`
* If things go wrong, manually delete it from `~/.local/share/plasma/look-and-feel`