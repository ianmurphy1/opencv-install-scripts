# OpenCV Install Script
To get the scripts make sure git is installed, usually is but if not open up a terminal window and enter: 

```shell 
sudo apt-get install git
```

After this grab the repo from github

```shell
git clone https://github.com/ianmurphy1/opencv-install-scripts.git
cd opencv-install-scripts
```

## Update and Upgrade Packages
The script `update.sh` will get the newest package list and upgrade them and will also update the pi to the latest firmware. 
### This script will reboot the pi! 
To run, while in the scripts directory, enter: 
```shell
bash update.sh
```

## Remove Unneeded Packages
The `remove.sh` script will remove unneeded packages from the pi. This will free up `~700MB` of space on the SD card. 
### This script will reboot the pi! 
```shell
bash remove.sh
```

## Install Dependencies, OpenCV in one step
You have a choice now, the `one_step.sh` script will install the dependencies for opencv, as well as download, compile and install opencv with one script.

**Only do this if you have 3 or 4 hours spare, otherwise do it in steps.**


```shell
bash one_step.sh
```


## Install Dependencies
In the terminal enter:
```shell
bash install_deps.sh
```

## Download and Setup OpenCV
In the terminal enter:
```shell
bash setup_opencv.sh
```

## Compile and Install OpenCV
In terminal enter:
```shell
bash install_opencv.sh
```

Assuming no errors, you now have OpenCV installed, have fun!


To test, open a terminal window and enter the following commands.
```shell
source ~/.profile
workon cv
python
>>> import python
>>> cv2.__version__
```

It should return `'3.0.0'` meaning opencv has installed correctly.