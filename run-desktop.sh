#!/bin/bash
sudo add-apt-repository ppa:papirus/papirus
sudo apt-get update
sudo apt install guake amarok cinnamon papirus-icon-theme fonts-powerline

#install powerline fonts
#git clone https://github.com/powerline/fonts.git --depth=1
#cd fonts
#./install.sh
#cd ..
#rm -rf fonts

cd ~/.oh-my-zsh/custom/themes/powerlevel9k
git pull
