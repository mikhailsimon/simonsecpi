#!/bin/bash

echo "Setting Up SSH Server"

echo "Banner /etc/simonsecpiosbanner" | sudo tee -a /etc/ssh/sshd_config

cat $HOME/simonsecpi/commands/fts/banner.txt > /etc/simonsecpiosbanner

cat $HOME/simonsec/commands/fts/motd.txt > sudo tee /etc/motd

echo "Restarting SSH Server"

sudo service ssh restart

echo "SSH Server Setup Done!"

echo "Updating APT repository"

sudo apt update

echo "APT repository updated!"

read -p "Do you want to upgrade packages in APT? (Y/N) : " apt_upgrade

if [ $apt_upgrade == "Y" ]
 echo "Upgrading APT packages"
 sudo apt upgrade -y
else
 echo "Skipping APT upgrade"
fi

read -p "Do you want to install ddclient? (Y/N) : " ddclient_install

if [ "$ddclient_install" == "Y" ]
then
 echo "Installing ddclient"
 sudo apt install ddclient -y
else
 echo "Skipping ddclient"
fi

echo "FTS(First Time Setup)"




