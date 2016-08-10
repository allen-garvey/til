# Setting up SSL/HTTPS with Apache and Let's Encrypt

* If using a firewall like UFW, make sure port 443 is open
* Uncomment/install the mod_ssl plugins in Apache
* Download and run the Let's Encrypt certbot
* Setup virtual host for ssl site
* Change the virtualhost you were using for the http site to redirect to https equivalent
* Setup a cron job to automatically renew the ssl certificate
