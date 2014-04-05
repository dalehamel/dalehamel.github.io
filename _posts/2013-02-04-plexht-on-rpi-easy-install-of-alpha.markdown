---
title: Plexht On Rpi Easy Install Of Alpha
layout: post
tags: []
---


Disclaimer
==========

This is still alpha quality, and is not ready for everyday use yet. There are a number of known issues, which have been addressed in earlier posts. This post is for everyone who would like to test things out, and help make things more stable.

Reporting problems
==================

You can comment here, or on the plex forums. But I prefer you make a card on the project's [trello board](https://trello.com/board/plex-on-raspberry-pi/510c4d34e1d17df66c00092a). Just make a trello account and you can comment on existing cards, and if you tell me your trello name or email I can add you to the board so that you can make cards. You can join the plex channel on chat.srvthe.net, or \#plex on irc.srvthe.net (same room) and talk to void\_ptr to report problems or ask to be added to the trello board.

Setting things up
=================

This is a dd based approach to setting up the RPi, similar to how raspbian does it. NOTE: This requires an SD of 2 GB or larger.

-   Download the install image from [here](http://rasplex.srvthe.net/rasplex-stable.img.zip)
-   Unzip the install image
-   Use [the appropriate tool for your platform](http://elinux.org/RPi_Easy_SD_Card_Setup) to flash the sd card
-   Put the sd card into you Raspberry Pi
-   Sit back and watch PlexHT launch

Linux specific instructions
===========================

[crayon lang="sh"] \#Download and extract rasplex wget http://rasplex.srvthe.net/rasplex-stable.img.zip unzip rasplex-stable.img.zip \#Load the image to your sd card dd if=rasplex.img of=/dev/sdx bs=4096 \# this assumes that the sd card is at /dev/sdx, this will likely be different on your system [/crayon] Once the image has finished flashing to the sd card, remove th sd and put it in the raspberry pi. You can login using the username "root" with no password. There is also another user called "plexuser" with password "rasplex", who can su. If your SD is larger than 2GB, you might want to take advantage of the remaining space by growing the root filesystem. To do this on linux, assuming your SD is at device /dev/sdx: [crayon lang="sh"] \#First, delete the root partition and recreate it to contain all of the free space \#Maybe you don't want to run fdisk in non-interactive mode? How much do you trust me... ;) fdisk -u \<\< EOF /dev/sdx d 3 n p 3 t 3 83 p w EOF \#Next, check the filesystem e2fsck -f /dev/sdg3 \#Finally, grow the filesystem resize2fs /dev/sdg3 [/crayon] It is normal for the first boot to take a while, especially while populating /dev through uevents. Plex should autostart after booting. If you find you need to disable this, simply ssh in as plexuser, and comment out the last line of \~/.bashrc: [crayon lang="sh"] (( vt == 1 )) && su -c /usr/bin/plexht &\> \~/.plexlog \# replace this \#(( vt == 1 )) && su -c /usr/bin/plexht &\> \~/.plexlog \# with this [/crayon] then reboot. Please report any bugs on the [trello](https://trello.com/board/plex-on-raspberry-pi/510c4d34e1d17df66c00092a)!

Updating plexht without reflashing
==================================

As bugs are fixed and features are added, the plexht binaries will be updated (every day or two so far). I would prefer to save bandwidth and have people simply update plex over reflashing the entire image. To do this, simply ssh in and run: [crayon lang="sh"] emerge -avG plexht [/crayon]
