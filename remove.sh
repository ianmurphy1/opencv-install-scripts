#!/bin/bash
echo "******************************"
echo "Removing packages"
echo "******************************"
sudo apt-get purge -y wolfram-engine
sudo apt-get purge -y bluej
sudo apt-get remove --purge libreoffice* -y
sudo apt-get purge minecraft-pi -y
sudo apt-get purge -y greenfoot

sudo apt-get clean -y
sudo apt-get autoremove -y
sudo reboot