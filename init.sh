#!/usr/bin/env bash

alias pacin="sudo pacman -S"
alias paruin="paru -S"

sudo pacman -Syu

paruin google-chrome
pacin xclip
pacin tree
pacin docker
pacin docker-compose
pacin zsh
pacin dbeaver
pacin latte-dock
install_ohmyzsh
install_ohmyzsh_plugins
paruin visual-studio-code-bin
paruin pycharm-professional
paruin postman-bin
paruin smartgit
paruin ulauncher
pacin thefuck

setup_docker

function install_ohmyzsh() {
    sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
}

function install_ohmyzsh_plugins {
    paruin autojump
    git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
    git clone git@github.com:supercrabtree/k.git ~/.oh-my-zsh/custom/plugins/k
    git clone git@github.com:zsh-users/zsh-autosuggestions.git ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
    git clone git@github.com:zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
}

function setup_docker {
    sudo usermod -aG docker $USER
    echo "You need to logout and login to get docker working without root privileges."
}