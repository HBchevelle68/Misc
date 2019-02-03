#!bin/bash

sudo apt-get update && sudo apt-get upgrade -y

##Install Sublime Text 3
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
sudo apt-get install apt-transport-https
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt-get update
sudo apt-get install sublime-text

## Install Atom
wget -O atom-amd64.deb https://atom.io/download/deb
sudo apt install gdebi-core -y
sudo gdebi atom-amd64.deb -y

## getup .gdbinit
cd ~
wget -P ~ git.io/.gdbinit

## install libraries
sudo apt-get install build-essential libevent-dev libncurses5-dev \
libncursesw5-dev autotools-dev automake pkg-config
