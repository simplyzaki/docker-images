#!/bin/sh

apt-get update

apt-get -y -f install curl python-software-properties nano supervisor git uuid-dev libtool \
automake pkg-config unzip make build-essential rsync openssh-server ssh

mkdir /var/run/sshd

useradd -d /home/ubuntu -m ubuntu
adduser ubuntu sudo

su ubuntu -c "echo 'ubuntu:ubuntu' > /home/ubuntu/passwdfile"
su ubuntu -c "cat /home/ubuntu/passwdfile | chpasswd"

echo 'root:root' > /root/passwdfile
cat /root/passwdfile | chpasswd