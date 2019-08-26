###
# BASICS
###

SHARED_DIR=$1

if [ -f "$SHARED_DIR/install_scripts/config" ]; then
  . $SHARED_DIR/install_scripts/config
fi

cd

# Update
apt-get -y update && apt-get -y upgrade

# SSH
apt-get -y install openssh-server

# Build tools
apt-get -y install build-essential

# Git vim
apt-get -y install git vim

# Wget, curl, unzip, & htop
apt-get -y install wget curl unzip htop

# Add BrightCove Ruby PPA for Ubuntu 16.04 LTS
sudo apt-add-repository ppa:brightbox/ruby-ng
sudo apt-get update

# Install Google Chrome
sudo apt-get install -y libappindicator1 fonts-liberation libasound2 libnspr4 libnss3 libxss1 xdg-utils
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome*.deb
#sudo apt-get install fonts-liberation libxss1 libgconf2-4 libappindicator1 libindicator7 libappindicator3-1 libatk-bridge2.0-0 libatk1.0-0 libatspi2.0-0 libcairo2 libcups2 libgdk-pixbuf2
#wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
#dpkg -i google-chrome-stable_current_amd64.deb
