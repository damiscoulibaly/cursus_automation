#!/usr/bin/env bash
# update sources.list
sudo apt update
# upgrade packages
#sudo apt upgrade -y
# install docker.io
sudo apt install -y docker.io
# cleanup
#sudo apt autoremove -y​
# add user vagrant to group docker
sudo usermod -aG docker vagrant

# install docker-compose
sudo curl -L "https://github.com/docker/compose/releases/download/1.26.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
# allow user vagrant to launch docker-compose
sudo chmod +x /usr/local/bin/docker-compose

# change directory to /vagrant
cd /vagrant
# launch docker-compose up -d
docker-compose up -d