#!/bin/bash
# Update
echo "***********************************"
echo "Updating and Upgrading"
echo "***********************************"
sudo apt-get update 
sudo apt-get upgrade
sudo rpi-update

sudo reboot