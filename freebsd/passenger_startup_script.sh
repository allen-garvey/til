# example of startup script for Phusion Passenger standalone
# start passenger server once manually as 'sudo' first so passenger is installed
# place file in /etc/rc.d
# chmod +x to make script executable
# set rcvar to "YES" in /etc/rc.conf
# start and stop manually with `sudo service passenger_booklist onestart` or `sudo service passenger_booklist onestop`

#!/bin/sh

# PROVIDE: passenger_booklist

. /etc/rc.subr

name="passenger_booklist"
rcvar="passenger_booklist_enable"
start_cmd="passenger_booklist_start"
stop_cmd="passenger_booklist_stop"

load_rc_config $name

passenger_booklist_start(){
 	cd /home/allen/Sites/booklist;
	C_INCLUDE_PATH=/usr/local/include/ /usr/local/bin/passenger start > /dev/null 2>&1;
}

passenger_booklist_stop(){
	cd /home/allen/Sites/booklist;
	/usr/local/bin/passenger stop;
}

run_rc_command "$1"