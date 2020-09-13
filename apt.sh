#!/usr/bin/env bash

# Install command-line tools using apt.
# Needs to be run with sudo.

# Update and upgrade packages.
apt update
apt upgrade

# Install some util tools.
apt install curl
apt install xclip
apt install emacs
apt install tree
apt install tmux
apt install vlc
apt install gparted

# Install docker and its requirements
curl -fsSL "https://download.docker.com/linux/ubuntu/gpg" | sudo apt-key add -

apt install apt-transport-https
apt install ca-certificates
apt install curl
apt install gnupg-agent
apt install software-properties-common

sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

apt update

apt install docker-ce 
apt install docker-ce-cli 
apt install containerd.io

# Remove outdated versions.
apt autoremove
apt autoclean
