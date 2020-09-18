#!/usr/bin/env bash

function install_vscode {
    wget "https://go.microsoft.com/fwlink/?LinkID=760868" -O ~/Downloads/vscode.deb
    sudo dpkg -i ~/Downloads/vscode.deb
    
    echo "You may need to patch fonts for terminal"
    echo "Try running this command:"
    echo "  fc-cache -vf ~/.fonts"
    echo "See https://github.com/abertsch/Menlo-for-Powerline"
}

function install_chrome {
    wget "https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb" -O ~/Downloads/chrome.deb
    sudo dpkg -i ~/Downloads/chrome.deb
}

function install_phpstorm {
    sudo snap install phpstorm --classic
}

function install_androidstudio {
    wget "https://r7---sn-45nufxc-hm2l.gvt1.com/edgedl/android/studio/ide-zips/4.0.1.0/android-studio-ide-193.6626763-linux.tar.gz" -O ~/Downloads/androidstudio.deb
    sudo tar -xvzf ~/Downloads/androidstudio.deb -C /opt/android-studio
}

function install_ohmyzsh {
    sudo apt install zsh
    sudo apt install fonts-powerline
    sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
    sudo chsh -s $(which zsh)
    echo "You need to logout in order to get zsh as default shell."
}

function install_smartgit {
    wget "https://www.syntevo.com/downloads/smartgit/smartgit-20_1_4.deb" -O ~/Downloads/smartgit.deb
    sudo dpkg -i ~/Downloads/smartgit.deb
}

function install_veeam {
    sudo apt install veeam
}

function install_virtualbox {
    sudo apt install virtualbox
}

function setup_docker {
    # Setup docker group for non root usage.
    sudo groupadd docker
    sudo usermod -aG docker $USER
    newgrp docker 
    echo "You may need to restart your computer."
}

function install_keeweb {
    open "https://keeweb.info/"
}

function setup_workspace_isolation {
    open "https://askubuntu.com/a/1002071"
}