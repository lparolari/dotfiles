#!/usr/bin/env bash
# Install main command-line tools using apt.

# Alias install, update and upgrade commands to not ask for user interaction.
alias install="sudo apt install --yes"
alias update="sudo apt update --yes"
alias upgrade="sudo apt upgrade --yes"

# Update and upgrade packages.
update
upgrade

# Install some util tools.
install curl
install xclip
install emacs
install tree
install tmux
install vlc
install gparted

# Install docker and its requirements
curl -fsSL "https://download.docker.com/linux/ubuntu/gpg" | sudo apt-key add -

install apt-transport-https
install ca-certificates
install curl
install gnupg-agent
install software-properties-common

sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
update

install docker-ce 
install docker-ce-cli 
install containerd.io

# Install docker-compose
sudo curl -L "https://github.com/docker/compose/releases/download/1.27.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

# Install awesome apps
sudo snap install spotify

# Remove outdated versions.
sudo apt autoremove --yes
sudo apt autoclean --yes
