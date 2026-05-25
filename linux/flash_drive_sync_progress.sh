# run to flush
sync
# in separate tab view memory still needed to be written 
while true; do grep "Dirty" /proc/meminfo; sleep 1; done