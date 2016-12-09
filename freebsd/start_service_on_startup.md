# Start Service on System Startup

To start a service on system startup, you need to put that service's `rcvar` in `/etc/rc.conf` as `$rcvar="YES"`. To find a service's rcvar, type `grep rcvar /usr/local/etc/rc.d/*` at the command-line.

Source: [https://www.digitalocean.com/community/tutorials/how-to-install-an-nginx-mysql-and-php-femp-stack-on-freebsd-10-1](https://www.digitalocean.com/community/tutorials/how-to-install-an-nginx-mysql-and-php-femp-stack-on-freebsd-10-1)