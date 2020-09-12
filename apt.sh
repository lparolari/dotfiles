#!/usr/bin/env bash

# Install command-line tools using apt.
# Needs to be run with sudo.

function install_vscode {
    wget https://go.microsoft.com/fwlink/\?LinkID\=760868 -O ~/Downloads/vscode.deb
    dpkg -i ~/Downloads/vscode.deb
}

function install_chrome {
    wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb -O ~/Downloads/chrome.deb
    dpkg -i ~/Downloads/chrome.deb
}

function install_phpstorm {
    wget https://download.jetbrains.com/webide/PhpStorm-2020.2.1.tar.gz?_ga=2.174209954.1613804040.1599899451-678036606.1599899451 -O ~/Downloads/phpstorm.deb
    dpkg -i ~/Downloads/phpstorm.deb
}

function install_androidstudio {
    wget https://r7---sn-45nufxc-hm2l.gvt1.com/edgedl/android/studio/ide-zips/4.0.1.0/android-studio-ide-193.6626763-linux.tar.gz -O ~/Downloads/androidstudio.deb
    tar -xvzf ~/Downloads/androidstudio.deb -C /opt/android-studio
}

# Update and upgrade packages.
apt update
apt upgrade

# Install zsh shell and make it default shell.
apt install zsh
chsh -s $(which zsh)

# Install zsh theme fonts.
apt install fonts-powerline

# Install some util tools.
apt install xclip
apt install emacs
apt install tree
apt install tmux
apt install vlc
install_vscode
install_chrome
install_phpstorm
install_androidstudio

# Install requirements for docker
apt install apt-transport-https
apt install ca-certificates
apt install curl
apt install gnupg-agent
apt install software-properties-common

# Install docker
apt install docker-ce 
apt install docker-ce-cli 
apt install containerd.io

# Remove outdated versions.
apt autoremove
apt autoclean
