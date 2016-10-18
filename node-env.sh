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
# npm i gulp -g

cd ~
