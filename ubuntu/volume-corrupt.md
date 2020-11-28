# When booting, get error "Unexpected return from initial read, volume corrupt error"

Probably caused by Windows.
https://askubuntu.com/questions/1122261/unexpected-return-from-initial-read-volume-corrupt

1. Boot from Ubuntu flash drive
2. Run this in terminal `sudo add-apt-repository ppa:yannubuntu/boot-repair -y && sudo apt update && sudo apt install boot-repair -y && sudo boot-repair`
3. Use recommended options