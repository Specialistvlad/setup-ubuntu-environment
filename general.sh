add-apt-repository ppa:canonical-chromium-builds/stage

apt update
apt dist-upgrade
apt install chromium-browser vim htop git make build-essential gcc-6 postgresql-9.5 redis-server mongodb-server rabbitmq-server members

# Latest atom
wget -O atom-latest.deb https://atom.io/download/deb
apt install -f ./atom-latest.deb

# Latest Gyazo screenshoting tool
curl -s https://packagecloud.io/install/repositories/gyazo/gyazo-for-linux/script.deb.sh | bash
apt install gyazo

# Z switching tool
git clone https://github.com/rupa/z.git
mkdir -p /opt/z/
cp z/z.sh /opt/z/
echo "" >> ~/.bashrc
echo ". /opt/z/z.sh" >> ~/.bashrc

./messangers.sh
./docker.sh
./config.sh

cd ~
