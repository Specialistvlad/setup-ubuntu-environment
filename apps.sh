echo "Install chromium, atom, slack, skype. This script requires admin privileges."
echo "Press any key to continue..."
sed -n q </dev/tty # pause

mkdir ~/tmp
cd ~/tmp

add-apt-repository ppa:canonical-chromium-builds/stage

apt update
apt install git make build-essential gcc-6 htop
apt install chromium-browser

# Latest atom
wget -O atom-latest.deb https://atom.io/download/deb
apt install -f ./atom-latest.deb

# Latest slack
wget -q -O - https://slack.com/downloads/instructions/linux | grep -Po 'https://downloads.slack-edge.com/linux_releases/slack-desktop-[0-9.]{0,5}-amd64.deb' | xargs wget -O slack-desktop-latest.deb
apt install -f ./slack-desktop-latest.deb

# Latest skype
wget -O skype-latest.deb https://get.skype.com/go/getskype-linux-beta-ubuntu-64
apt install -f ./skype-latest.deb

# Latest screenshoting tool
curl -s https://packagecloud.io/install/repositories/gyazo/gyazo-for-linux/script.deb.sh | bash
apt install gyazo

# Z switching tool
git clone https://github.com/rupa/z.git
mkdir -p /opt/z/
cp z/z.sh /opt/z/
echo ". /opt/z/z.sh" >> ~/.bashrc

cd ~
