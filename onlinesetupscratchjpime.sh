#!/bin/bash
if [ `whoami` != root ]; then
	echo Please run this script as root or using sudo
	exit
fi
echo Start enabling Japanese IME on Scratch
echo Downloading...
wget -O so.vm-display-X11.gz http://t.co/4HrdxkuAea
wget -O scratch.japaneseime http://goo.gl/8DH7ly
echo Flie Extracting...
gunzip so.vm-display-X11.gz
echo Rename and Copy Files...
if [ -e /usr/lib/squeak/4.10.2-2793/so.vm-display-X11.orig ]; then
	echo "Skip: so.vm-display-X11.orig File Exists"
else
	mv /usr/lib/squeak/4.10.2-2793/so.vm-display-X11 /usr/lib/squeak/4.10.2-2793/so.vm-display-X11.orig
	cp so.vm-display-X11 /usr/lib/squeak/4.10.2-2793/
fi
if [ -e /usr/bin/scratch.orig ]; then
	echo "Skip: scratch.orig File Exists"
else
	mv /usr/bin/scratch /usr/bin/scratch.orig
	cp scratch.japaneseime /usr/bin/scratch
	chmod 755 /usr/bin/scratch
fi
if [ -e /home/pi/NanoBoardAG/NanoBoardAGWithMotorRasPi.orig ]; then
	echo "Skip: NanoBoardAGWithMotorRasPi.orig File Exists"
else
	mv /home/pi/NanoBoardAG/NanoBoardAGWithMotorRasPi /home/pi/NanoBoardAG/NanoBoardAGWithMotorRasPi.orig
	cp NanoBoardAGWithMotorRasPi /home/pi/NanoBoardAG/
	chown pi.pi /home/pi/NanoBoardAG/NanoBoardAGWithMotorRasPi
fi
