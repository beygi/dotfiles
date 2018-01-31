#!/bin/bash
sudo apt install python-pip autojump zsh libfribidi-bin jq
sudo pip install jdate virtualenvwrapper
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k
chsh -s /usr/bin/zsh
