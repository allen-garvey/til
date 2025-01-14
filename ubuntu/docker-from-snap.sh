# Docker from snap

sudo snap install docker
# create docker group and assign current user to it so we don't need sudo
sudo groupadd docker
sudo gpasswd -a $USER docker
newgrp docker
# to find service name
sudo systemctl list-units --type=service --all
sudo systemctl start snap.docker.dockerd.service