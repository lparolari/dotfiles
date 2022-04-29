#!/usr/bin/env bash

alias pacin="sudo pacman -S"
alias paruin="paru -S"

sudo pacman -Syu

pacin xclip
pacin tree
pacin docker
pacin docker-compose
pacin zsh
pacin dbeaver
pacin thefuck
pacin latte-dock
install_ohmyzsh
install_ohmyzsh_plugins
paruin visual-studio-code-bin
paruin pycharm-professional
paruin postman-bin
paruin smartgit
paruin ulauncher
paruin autojump
install_nvm

setup_docker

function install_ohmyzsh() {
    sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
}

function install_ohmyzsh_plugins {
    git clone git@github.com:wting/autojump.git ~/.oh-my-zsh/custom/plugins/autojump
    git clone git@github.com:supercrabtree/k.git ~/.oh-my-zsh/custom/plugins/k
    git clone git@github.com:zsh-users/zsh-autosuggestions.git ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
    git clone git@github.com:zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
    git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
}

function setup_docker {
    echo "Not yet Implemented. Setup docker following an online guide."
}

function install_nvm() {
    curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
}
