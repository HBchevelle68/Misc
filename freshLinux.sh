#!bin/bash

sudo apt-get update && sudo apt-get upgrade -y

##Install sublime
sudo add-apt-repository ppa:webupd8team/sublime-text-3
sudo apt-get update
sudo apt-get install sublime-text-installer

##Install chrome
sudo apt-get install libxss1 libappindicator1 libindicator7
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome*.deb
rm google-chrome-stable_current_amd64.deb 
 
##install git
sudo apt-get install git -y
sudo apt-get install wireshark -y

##remove guest
sudo sh -c 'printf "[SeatDefaults]\nallow-guest=false\n" > /etc/lightdm/lightdm.conf.d/50-no-guest.conf'

##Stop Bluetooth from turning on
sudo "echo 'manual' > /etc/init/bluetooth.override"
