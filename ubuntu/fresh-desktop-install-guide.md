# Kubuntu Desktop Setup

## Settings

* Settings->General Behavior: set single click to open folders
* Make caps lock an additional escape
* Change to dark mode
* Turn on night color

## Konsole

* Set font to "Noto Mono"
* Change cursor

## Chrome

* https://www.geeksforgeeks.org/how-to-install-chrome-in-ubuntu - use third party repository option

* Due to key association safety as outlined [here](https://askubuntu.com/questions/1286545/what-commands-exactly-should-replace-the-deprecated-apt-key) follow instructions in the previous link or VS code / sublime instructions to associate Google's key with chrome repository only

* Something like
```sh
wget -qO- https://dl.google.com/linux/linux_signing_key.pub | gpg --dearmor > packages.google.gpg
sudo install -D -o root -g root -m 644 packages.google.gpg /etc/apt/keyrings/packages.google.gpg
echo "deb [arch=amd64 signed-by=/etc/apt/keyrings/packages.google.gpg] http://dl.google.com/linux/chrome/deb/ stable main" | sudo tee /etc/apt/sources.list.d/google-chrome.list
sudo apt update
sudo apt install google-chrome-stable
```

* Settings->Default Apps->set web browser to Google Chrome

## Git

* `git config --global user.name "Your Name"`
* `git config --global user.email "you@example.com"`

## SSH

* [Generate SSH Key](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent)

## VS Code

* https://code.visualstudio.com/docs/setup/linux
* [Preferences](https://github.com/allen-garvey/vscode-preferences)

## Sublime Text

* Install Sublime Text https://www.sublimetext.com/docs/linux_repositories.html
* Use method similar to VS code to safely associate signing keys with package
* Make sure `sudo apt install apt-transport-https` has been done from VS code step

```sh
wget -qO- https://download.sublimetext.com/sublimehq-pub.gpg | gpg --dearmor > packages.sublime.gpg
sudo install -D -o root -g root -m 644 packages.sublime.gpg /etc/apt/keyrings/packages.sublime.gpg
echo "deb [signed-by=/etc/apt/keyrings/packages.sublime.gpg] https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
```

* Preferences->Select color scheme->monokai
* https://github.com/allen-garvey/sublime-snippets

## Command line setup

* sudo apt install curl build-essential inotify-tools postgresql postgresql-contrib nginx libimage-exiftool-perl imagemagick ffmpeg php8.3 php8.3-xml rysnc
* sudo snap install ruby
* sudo snap install rclone

## Elixir

* `sudo apt install erlang`
* Download [Elixir prebuilt binary](https://github.com/elixir-lang/elixir/releases) for given Erlang/OTP version
* Move binary to `~/.bin` and add to `$PATH`

## Node

* `mkdir -p ~/.bin`
* https://nodejs.org/en/download/prebuilt-binaries
* `npm install -g npm-check-updates`

## Applications from package manager

* gimp, dragon player, git cola, vlc player

### Gimp

* Settings change icons

* Settings -> image windows -> appearance -> uncheck show layer boundary

## Applications

* Krita - download app image and save to `~/Applications`
* To add to task bar search for `menu editor` in applications search to open KDE Menu editor
* Add a Krita as a new item and select the app image as the executable
* You can also download the Krita icon from [wikipedia](https://en.wikipedia.org/wiki/Krita) and add that to the menu editor entry as well

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


