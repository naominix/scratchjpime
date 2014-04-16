#!/bin/bash
if [ `whoami` != root ]; then
	echo Please run this script as root or using sudo
	exit
fi
echo Start enabling Japanese IME on Scratch 
echo Overwrite Copy Files...
if [ -e /usr/lib/squeak/4.10.2-2793/so.vm-display-X11 ]; then
	cp so.vm-display-X11 /usr/lib/squeak/4.10.2-2793/
fi
if [ -e /usr/bin/scratch ]; then
	cp scratch.japaneseime /usr/bin/scratch
	chmod 755 /usr/bin/scratch
fi
if [ -e /home/pi/NanoBoardAG/NanoBoardAGWithMotorRasPi ]; then
	cp NanoBoardAGWithMotorRasPi /home/pi/NanoBoardAG/
	chown pi.pi /home/pi/NanoBoardAG/NanoBoardAGWithMotorRasPi
fi
