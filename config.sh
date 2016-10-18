# Enable bash aliases
cp .bash_aliases ~/
echo "" >> ~/.bashrc
echo "if [ -f ~/.bash_aliases ]; then" >> ~/.bashrc
echo "    . ~/.bash_aliases" >> ~/.bashrc
echo "fi" >> ~/.bashrc

# Copy git config
cp .gitconfig ~/
