# Setting up VPN with OpenVPN on Kunbuntu

* Download ovpn files from https://www.privateinternetaccess.com/helpdesk/kb/articles/where-can-i-find-your-ovpn-files

* Open network settings and import vpn connection from above step

* Enter username and password

* Click advanced and under security, change the cipher key to the matching values from the website in step 1

* `sudo apt install network-manager-openvpn`

* Under ipv4 routes, check `Use this connection only for resources on its network` https://askubuntu.com/questions/655806/openvpn-connecting-but-no-internet-access-on-ubuntu-16-04-18-04

* Try connecting to the VPN

* If ip address doesn't change, uncheck `Use this connection only for resources on its network` from the routes step

* If there are any problems, or nothing happens try `tail /var/log/syslog` to see if you can find the cause