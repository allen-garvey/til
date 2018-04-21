# How to create an Elixir Phoenix startup service

* Add `start.sh` and `stop.sh` scripts
* Run `start.sh` as `sudo` with errors not piped to `/dev/null` (you will be prompted to update `hex` and install dependencies with `mix deps.get`)
* Add copy of `phoenix_startup_script.sh` to `/usr/local/etc/rc.d`
* Enable service on startup by adding rcvar in `/etc/rc.conf`