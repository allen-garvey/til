# Send all connections to a local port to a remote port over ssh
# sends all connections to local 6789 to 5432 on remote host
# https://stackoverflow.com/questions/16835761/postgresql-via-ssh-tunnel/16838293#16838293

ssh -L 6789:localhost:5432 root@remote.test