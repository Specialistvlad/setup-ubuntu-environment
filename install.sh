apt update
apt dist-upgrade
apt install curl wget vim htop git make build-essential gcc-6 members
apt install redis-server mongodb-server rabbitmq-server

# Latest atom
wget -O atom-latest.deb https://atom.io/download/deb
apt install -f ./atom-latest.deb

# Latest Gyazo screenshoting tool
#curl -s https://packagecloud.io/install/repositories/gyazo/gyazo-for-linux/script.deb.sh | bash
#apt install gyazo

# Z switching tool
git clone https://github.com/rupa/z.git
mkdir -p /opt/z/
cp z/z.sh /opt/z/
echo "" >> ~/.bashrc
echo ". /opt/z/z.sh" >> ~/.bashrc
