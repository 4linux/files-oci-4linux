#!/bin/bash


# Vagrant install
apt update
apt install vagrant -y

# Docker installation
apt install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common -y

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sleep 4

 add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

apt update && apt install docker-ce docker-ce-cli containerd.io -y

systemctl start docker 
systemctl enable docker

docker image build -t ubuntu-ssh /opt/files-oci-4linux/ubuntu/docker-vagrant-4750
docker network create --driver bridge --subnet 172.18.0.0/16 dexterlan 



