# Ubuntu Desktop Setup

## Settings

* Settings->General Behavior: set single click to open folders
* Make caps lock an additional escape

## Chrome

* Search for "install google chrome ubuntu command line"

* Settings->Default Apps->set web browser to Google Chrome

## Sublime Text

* Install Sublime Text https://www.sublimetext.com/docs/linux_repositories.html
* Preferences->Select color scheme->monokai

## Command line setup

* git clone git@github.com:allen-garvey/bash-dotfiles.git
* sudo apt install curl vim build-essential flatpak inotify-tools rclone ruby erlang postgresql postgresql-contrib nginx libimage-exiftool-perl imagemagick php8.1 php8.1-xml

## VS Code

* https://code.visualstudio.com/docs/setup/linux

## Node

* npm install -g npm-check-updates

## Applications

* Gimp - flatpak install https://flathub.org/repo/appstream/org.gimp.GIMP.flatpakref

* Dragon player

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

* Create grenadier user

* Import database backups `gunzip -c <database_backup>.sql.gz | psql <database_name>`


