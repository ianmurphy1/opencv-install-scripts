#!bin/bash
echo "*************************"
echo "Downloading and Unzipping"
echo "       OpenCV source    "
echo "*************************"
cd ~
wget -O opencv.zip https://github.com/Itseez/opencv/archive/3.0.0.zip
unzip opencv.zip
sudo rm -rf opencv.zip
wget -O opencv_contrib.zip https://github.com/Itseez/opencv_contrib/archive/3.0.0.zip
unzip opencv_contrib.zip
sudo rm -rf opencv_contrib.zip


echo "****************************"
echo "Setting up Python"
echo "****************************"
wget https://bootstrap.pypa.io/get-pip.py
sudo python get-pip.py

echo "****************************"
echo "Installing Virtual Environment"
echo "****************************"
sudo pip install virtualenv virtualenvwrapper
sudo rm -rf ~/.cache/pip

echo "****************************"
echo "Adding to profile file"
echo "****************************"
echo "export WORKON_HOME=$HOME/.virtualenvs
source /usr/local/bin/virtualenvwrapper.sh" | sudo tee -a ~/.profile

