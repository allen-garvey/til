# How to create an Elixir Phoenix startup service

* Add `start.sh` and `stop.sh` scripts (make sure they are executable with `chmod +x`)
* Run `sudo mix deps.get`
* Run `sudo phx.server`
* Run `sudo start.sh` and `sudo stop.sh` to make sure they work (if not try without errors piped to `/dev/null`)
* Add copy of `phoenix_startup_script.sh` to `/usr/local/etc/rc.d`
* Enable service on startup by adding rcvar in `/etc/rc.conf`