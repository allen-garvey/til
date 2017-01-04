# example of startup script for running phoenix framework (Elixir) application
# as a daemon using forever.js
# place file in /usr/local/etc/rc.d
# chmod +x to make script executable
# set rcvar to "YES" in /etc/rc.conf
# start and stop manually with `sudo service phoenix_bookmarker start`
# `sudo service phoenix_bookmarker stop` does not work for some reason - probably due to how forever is configured
# might want to try -p flag, and see if that helps

#!/bin/sh

# PROVIDE: phoenix_bookmarker
# REQUIRE: LOGIN
. /etc/rc.subr

name="phoenix_bookmarker"
rcvar="phoenix_bookmarker_enable"
start_cmd="phoenix_bookmarker_start"
stop_cmd="phoenix_bookmarker_stop"

# environment variables
PATH=/sbin:/bin:/usr/sbin:/usr/bin:/usr/local/sbin:/usr/local/bin:/root/bin
export LANG=en_US.UTF-8
LC_CTYPE="en_US.UTF-8"
LC_COLLATE="en_US.UTF-8"
LC_TIME="en_US.UTF-8"
LC_NUMERIC="en_US.UTF-8"
LC_MONETARY="en_US.UTF-8"
LC_MESSAGES="en_US.UTF-8"
LC_ALL=en_US.UTF-8

load_rc_config $name

phoenix_bookmarker_start(){
        cd /home/allen/Sites/phoenix-bookmarker;
        forever --killSignal=SIGTERM -l /var/log/forever.log -o /var/log/forever.out.log -e /var/log/forever.error.log --append start bookmarker.js;
}

phoenix_bookmarker_stop(){
        forever stop bookmarker.js;
}

run_rc_command "$1"