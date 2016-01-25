#!/bin/bash
echo "*************************"
echo "Installing dev tools"
echo "*************************"
sudo apt-get install -y build-essential git cmake pkg-config 

echo "*************************"
echo "Installing I/O packages"
echo "*************************"
sudo apt-get install -y libjpeg-dev libtiff5-dev libjasper-dev libpng12-dev
sudo apt-get install -y libavcodec-dev libavformat-dev libswscale-dev libv4l-dev
sudo apt-get install -y libxvidcore-dev libx264-dev

echo "*************************"
echo "Installing Lib GTK"
echo "*************************"
sudo apt-get install -y libgtk2.0-dev

echo "*************************"
echo "Installing Operation Deps"
echo "*************************"
sudo apt-get install -y libatlas-base-dev gfortran

echo "*************************"
echo "Installing Python"
echo "*************************"
sudo apt-get install -y python2.7-dev python3-dev



