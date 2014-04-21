#!/bin/bash
FUSEMOUNTDIR=/Volumes/root
FUSE=/usr/local/bin/fuse-ext2
if [ -e $FUSE ]; then
	echo "Mac-FUSE found"
else
	echo "Please install Mac-FUSE"
	exit
fi
if [ -e $FUSEMOUNTDIR ]; then
	echo "PEG SD Card found"
else
	echo "Please mount PEG SD Card"
	exit
fi
if [ `whoami` != root ]; then
	echo "Please run this script as root or using sudo"
	exit
fi
echo Start enabling Japanese IME on Scratch 
echo Overwrite Copy Files...
if [ -e $FUSEMOUNTDIR/usr/lib/squeak/4.10.2-2793/so.vm-display-X11 ]; then
	cp so.vm-display-X11 $FUSEMOUNTDIR/usr/lib/squeak/4.10.2-2793/
	echo "Overwrite so.vm-display-X11 done."
fi
if [ -e $FUSEMOUNTDIR/usr/bin/scratch ]; then
	cp scratch.japaneseime $FUSEMOUNTDIR/usr/bin/scratch
	chmod 755 $FUSEMOUNTDIR/usr/bin/scratch
	echo "Overwrite /usr/bin/scratch done."
fi
if [ -e $FUSEMOUNTDIR/home/pi/NanoBoardAG/NanoBoardAGWithMotorRasPi ]; then
	cp NanoBoardAGWithMotorRasPi $FUSEMOUNTDIR/home/pi/NanoBoardAG/
	echo "Overwrite NanoBoardAG Script done."
fi
