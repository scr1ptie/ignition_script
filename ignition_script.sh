#!/bin/bash

# Testing if root...
if [ $UID -ne 0 ]
then
	RED "You must run this script as root!" && echo
	exit
fi

# Install sublime Text 3 
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
sudo apt-get install apt-transport-https
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt-get update
sudo apt-get install sublime-text

# install nmap
sudo apt-get install -y nmap

# install wireshark
sudo apt-get install -y wireshark

#install dcoker
apt install docker.io

# install openVAS
apt-get install software-properties-common && add-apt-repository ppa:mrazavi/openvas
 # docker run -d -p 443:443 --name openvas mikesplain/openvas
 
