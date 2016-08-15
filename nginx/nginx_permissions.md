# nginx Permissions

If nginx returns a 403 error, that is commonly because of the permissions set in your web root. Unlike Apache, nginx doesn't run as root, and so files that are to be served by nginx need to be associated with the `www-data` group. To do this, you can enter the commands:

* `sudo chown -R "$USER":www-data /webdirectory`
* `sudo chmod -R 0755 /webdirectory`

where `/webdirectory` is your web root.

Source: [http://askubuntu.com/questions/9402/what-file-permissions-should-i-set-on-web-root](http://askubuntu.com/questions/9402/what-file-permissions-should-i-set-on-web-root)