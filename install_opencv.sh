#!/bin/bash
echo "*************************"
echo "Switch to VirtualEnv"
echo "*************************"
source ~/.profile

echo "***************************"
echo "Make Virtual Environment"
echo "***************************"
mkvirtualenv cv


echo "*************************"
echo "Installing Numpy"
echo "*************************"
pip install numpy

echo "*************************"
echo "Setup CMAKE"
echo "*************************"
workon cv

cd ~/opencv-3.0.0/
mkdir build
cd build
cmake -D CMAKE_BUILD_TYPE=RELEASE \
	-D CMAKE_INSTALL_PREFIX=/usr/local \
	-D INSTALL_C_EXAMPLES=ON \
	-D INSTALL_PYTHON_EXAMPLES=ON \
	-D OPENCV_EXTRA_MODULES_PATH=~/opencv_contrib-3.0.0/modules \
	-D BUILD_EXAMPLES=ON ..

echo "*************************"
echo "Compile OpenCV"
echo "*************************"
make -j4

echo "*************************"
echo "Create SymLinks"
echo "*************************"
cd ~/.virtualenvs/cv/lib/python2.7/site-packages/
ln -s /usr/local/lib/python2.7/site-packages/cv2.so cv2.so