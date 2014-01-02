##!/bin/bash
echo "####################################"
echo
echo "         PLEASE RUN AS ROOT"
echo
echo "####################################"
echo ""
#First we need to install the needed packages
apt-get install gcc-arm-linux-gnueabi make ncurses-dev

#Download compilation tools from the official raspberry pi github
git clone --depth 5 https://github.com/raspberrypi/tools.git /usr/src

#Download the official kernel from the Raspberry Pi github
mkdir /opt/raspberry
git clone -b rpi-3.10.y --depth 5 git://github.com/raspberrypi/linux.git /opt/raspberry

# AND BAM HERE WE GO
make clean
make -j6 ARCH=arm CROSS_COMPILE=/usr/src/tools/arm-bcm2708/arm-bcm2708-linux-gnueabi/bin/arm-bcm2708-linux-gnueabi-
