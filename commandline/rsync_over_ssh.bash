#!/usr/bin/env bash
# based on:
# https://www.digitalocean.com/community/tutorials/how-to-copy-files-with-rsync-over-ssh
# note the trailing slash after the source dir - if it is not there will create 
# another directory inside the dest dir
# will exclude hidden directories
rsync --update --compress --recursive --itemize-changes --verbose -e "ssh -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null" --progress --exclude=".*/" /path/to/source/ username@127.0.0.1:/dest/dir/
