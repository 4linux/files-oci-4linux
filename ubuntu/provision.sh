#!/bin/bash


# Vagrant install and others packages
apt update
apt install vagrant net-tools vim -y

# Docker installation
apt install docker.io
systemctl start docker 
systemctl enable docker

docker image build -t ubuntu-ssh /opt/files-oci-4linux/ubuntu/docker-vagrant
docker network create --driver bridge --subnet 172.18.0.0/16 dexterlan 



