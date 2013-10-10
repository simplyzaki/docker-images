#!/bin/sh

apt-get update

apt-get -y -f install curl python-software-properties nano supervisor git uuid-dev libtool \
automake pkg-config unzip make build-essential rsync openssh-server openssh-clients ssh

mkdir /var/run/sshd

useradd -d /home/ubuntu -m ubuntu
adduser ubuntu sudo

echo 'root:root' > /root/passwdfile
RUN cat /root/passwdfile | chpasswd

su ubuntu -c 'echo "I am $USER, with uid $UID"'