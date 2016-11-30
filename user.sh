#!/bin/bash
echo "Install node, setup and update npm"
mkdir ~/tmp
cd ~/tmp

# Install nvm
wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.32.0/install.sh | bash

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

nvm install 7
nvm alias default 7
nvm alias system 7
npm update -g npm
npm i -g nodemon gulp bower

apm i atom-beautify atom-no-tab-close-button autoclose-html color-picker file-icons language-riot-tag monokai one-tab qolor selection-highlight tab-numbers tabs-closer tabs-to-spaces webbox-color

cd ~
