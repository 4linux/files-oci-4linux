#!/bin/bash

## Disable selinux temporarily

setenforce 0

# Disable for file 

sed -i 's/enforcing/disabled/g' /etc/selinux/config
sleep 2

# Disable firewalld 

systemctl stop firewalld
systemctl disable firewalld 



