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
        ./start.sh;
}

phoenix_bookmarker_stop(){
        /home/allen/Sites/phoenix-bookmarker/stop.sh;
}

run_rc_command "$1"