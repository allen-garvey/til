# How to create an Elixir Phoenix startup service

* Add `start.sh` and `stop.sh` scripts (make sure they are executable with `chmod +x`)
* Add copy of `phoenix_startup_script.sh` to `/usr/local/etc/rc.d`
* Make sure start and stop scripts work with the user specified in rc.d script
* Enable service on startup by adding rcvar in `/etc/rc.conf`