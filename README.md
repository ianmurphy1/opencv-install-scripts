# OpenCV Install Script
To get the scripts make sure git is installed, usually is but if not open up a terminal window and enter: 

```bash 
sudo apt-get install git
```

After this grab the repo from github

```bash
git clone https://github.com/ianmurphy1/opencv-install-scripts.git
cd opencv-install-scripts
```

## Update and Upgrade Packages
The script `update.sh` will get the newest package list and upgrade them and will also update the pi to the latest firmware. 
### This script will reboot the pi! 
To run, while in the scripts directory, enter: 
```bash
bash update.sh
```

## Remove Uneeded Packages
The `remove.sh` script will remove unneeded packages from the pi. This will free up `~700MB` of space on the SD card. 
### This script will reboot the pi! 
```bash
bash remove.sh
```

You have a choice now, the `one_step.sh` script will install the dependencies for opencv, as well as download, compile and install opencv with one script.

**Only do this if you have 3 or 4 hours spare, otherwise do it in steps.**

## Install Dependencies, OpenCV in one step
```bash
bash one_step.sh
```


## Install Dependencies
In the terminal enter:
```bash
bash install_deps.sh
```

## Download and Setup OpenCV
In the terminal enter:
```bash
bash setup_opencv.sh
```

## Compile and Install OpenCV
In terminal enter:
```bash
bash install_opencv.sh
```

Assuming no errors, you now have OpenCV installed, have fun!
