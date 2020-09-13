#!/usr/bin/env bash

# Install main command-line tools using apt.

# Update and upgrade packages.
sudo apt update
sudo apt upgrade

# Install some util tools.
sudo apt install curl
sudo apt install xclip
sudo apt install emacs
sudo apt install tree
sudo apt install tmux
sudo apt install vlc
sudo apt install gparted

# Install docker and its requirements
curl -fsSL "https://download.docker.com/linux/ubuntu/gpg" | sudo apt-key add -

sudo apt install apt-transport-https
sudo apt install ca-certificates
sudo apt install curl
sudo apt install gnupg-agent
sudo apt install software-properties-common

sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
sudo apt update

sudo apt install docker-ce 
sudo apt install docker-ce-cli 
sudo apt install containerd.io

# Remove outdated versions.
sudo apt autoremove
sudo apt autoclean
