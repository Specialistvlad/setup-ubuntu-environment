#!/bin/bash
echo "Install node 0.10.25, node 6, setup and update npm"
mkdir ~/tmp
cd ~/tmp

# Install nvm
wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.32.0/install.sh | bash

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

nvm install 0.10.25
nvm install 6
npm i -g nodemon gulp bower

apm i atom-beautify atom-no-tab-close-button autoclose-html color-picker file-icons language-riot-tag monokai one-tab qolor selection-highlight tab-numbers tabs-closer tabs-to-spaces webbox-color

cd ~
