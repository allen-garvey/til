# Kubuntu Desktop Setup

## Settings

* Settings->General Behavior: set single click to open folders
* Make caps lock an additional escape

## Konsole

* Set font to "Noto Mono"

## Chrome

* Search for "install google chrome ubuntu command line"

* Settings->Default Apps->set web browser to Google Chrome

## Command line setup

* sudo apt install curl vim build-essential flatpak inotify-tools rclone ruby elixir postgresql postgresql-contrib nginx libimage-exiftool-perl imagemagick ffmpeg php8.1 php8.1-xml rysnc
* git clone git@github.com:allen-garvey/bash-dotfiles.git

## Git

* Set default git user and email address

## Sublime Text

* Install Sublime Text https://www.sublimetext.com/docs/linux_repositories.html
* Preferences->Select color scheme->monokai
* https://github.com/allen-garvey/sublime-snippets

## VS Code

* https://code.visualstudio.com/docs/setup/linux
* [Preferences](https://github.com/allen-garvey/vscode-preferences)

## Node

* `mkdir -p ~/.bin`
* https://nodejs.org/en/download/prebuilt-binaries
* npm install -g npm-check-updates

## Applications

* Gimp - flatpak install https://flathub.org/repo/appstream/org.gimp.GIMP.flatpakref

* Dragon player

* Git Cola

* Krita

## Apache

* sudo service apache stop

* apt remove apache2 apache2-bin

* apt autoremove

## Permissions

* chmod +rx on home directory for nginx

* chmod +rx on root of mx external drive mount for nginx

## Postgres setup

* https://www.digitalocean.com/community/tutorials/how-to-install-postgresql-on-ubuntu-20-04-quickstart

* Log in to psql `ALTER USER postgres PASSWORD 'postgres';`

## Umbrella

* At project root `mix ecto.create`

* Go into grenadier `mix ecto.migrate` 

* Import database backup `gunzip -c <database_backup>.sql.gz | psql umbrella`


