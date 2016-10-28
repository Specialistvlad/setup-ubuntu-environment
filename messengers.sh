# Latest slack
wget -q -O - https://slack.com/downloads/instructions/linux | grep -Po 'https://downloads.slack-edge.com/linux_releases/slack-desktop-[0-9.]{0,5}-amd64.deb' | xargs wget -O slack-desktop-latest.deb
apt install -f ./slack-desktop-latest.deb

# Latest skype

## classic
# wget -O skype-latest-classic.deb https://get.skype.com/go/getskype-linux-beta-ubuntu-64
# apt install -f ./skype-latest-classic.deb

## next generation
#https://community.skype.com/t5/Linux/Skype-for-Linux-Alpha-and-calling-on-Chrome-amp-Chromebooks/td-p/4434299

# Viber
wget -O viber-latest.deb http://download.cdn.viber.com/cdn/desktop/Linux/viber.deb
apt install -f ./viber-latest.deb
