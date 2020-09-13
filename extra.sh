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
    wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb -O ~/Downloads/chrome.deb
    sudo dpkg -i ~/Downloads/chrome.deb
}

function install_phpstorm {
    wget https://download.jetbrains.com/webide/PhpStorm-2020.2.1.tar.gz?_ga=2.174209954.1613804040.1599899451-678036606.1599899451 -O ~/Downloads/phpstorm.deb
    sudo dpkg -i ~/Downloads/phpstorm.deb
}

function install_androidstudio {
    wget https://r7---sn-45nufxc-hm2l.gvt1.com/edgedl/android/studio/ide-zips/4.0.1.0/android-studio-ide-193.6626763-linux.tar.gz -O ~/Downloads/androidstudio.deb
    sudo tar -xvzf ~/Downloads/androidstudio.deb -C /opt/android-studio
}

function install_ohmyzsh {
    sudo apt install zsh
    sudo apt install fonts-powerline
    sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
    sudo chsh -s $(which zsh)
    echo "You need to logout in order to get zsh as default shell."
}
