---
layout: post
status: publish
published: true
title: PlexHT on RPi - Easy install of alpha
author: dale.hamel
author_login: umhameld
author_email: daleha@gmail.com
wordpress_id: 474
wordpress_url: https://blog.srvthe.net/?p=474
date: 2013-02-04 06:39:32.000000000 -05:00
categories:
- Uncategorized
tags: []
comments: []
---
<h1>Disclaimer</h1>
This is still alpha quality, and is not ready for everyday use yet. There are a number of known issues, which have been addressed in earlier posts. This post is for everyone who would like to test things out, and help make things more stable.
<h1>Reporting problems</h1>
You can comment here, or on the plex forums. But I prefer you make a card on the project's <a href="https://trello.com/board/plex-on-raspberry-pi/510c4d34e1d17df66c00092a"> trello board </a>. Just make a trello account and you can comment on existing cards, and if you tell me your trello name or email I can add you to the board so that you can make cards.

You can join the plex channel on chat.srvthe.net, or #plex on irc.srvthe.net (same room) and talk to void_ptr to report problems or ask to be added to the trello board.
<h1>Setting things up</h1>
This is a dd based approach to setting up the RPi, similar to how raspbian does it.

NOTE: This requires an SD of 2 GB or larger.
<ul>
	<li>Download the install image from <a href="https://rasplex.srvthe.net/rasplex-stable.img.zip"> here </a></li>
	<li>Unzip the install image</li>
	<li>Use <a href="https://elinux.org/RPi_Easy_SD_Card_Setup"> the appropriate tool for your platform</a> to flash the sd card</li>
	<li>Put the sd card into you Raspberry Pi</li>
	<li>Sit back and watch PlexHT launch</li>
</ul>
<h1>Linux specific instructions</h1>
[crayon lang="sh"]
#Download and extract rasplex
wget https://rasplex.srvthe.net/rasplex-stable.img.zip
unzip rasplex-stable.img.zip

#Load the image to your sd card
dd if=rasplex.img of=/dev/sdx bs=4096 # this assumes that the sd card is at /dev/sdx, this will likely be different on your system

[/crayon]

Once the image has finished flashing to the sd card, remove th sd and put it in the raspberry pi.

You can login using the username "root" with no password. There is also another user called "plexuser" with password "rasplex", who can su.

If your SD is larger than 2GB, you might want to take advantage of the remaining space by growing the root filesystem. To do this on linux, assuming your SD is at device /dev/sdx:

[crayon lang="sh"]

#First, delete the root partition and recreate it to contain all of the free space
#Maybe you don't want to run fdisk in non-interactive mode? How much do you trust me... ;)
fdisk -u << EOF /dev/sdx 
d 
3
n 
p 
3 


t 
3 
83 
p 
w 
EOF
 
#Next, check the filesystem 
e2fsck -f /dev/sdg3 

#Finally, grow the filesystem 
resize2fs /dev/sdg3 
[/crayon] 
It is normal for the first boot to take a while, especially while populating /dev through uevents. Plex should autostart after booting. If you find you need to disable this, simply ssh in as plexuser, and comment out the last line of ~/.bashrc: 

[crayon lang="sh"] (( vt == 1 )) && su -c /usr/bin/plexht &> ~/.plexlog # replace this
#(( vt == 1 )) && su -c /usr/bin/plexht &> ~/.plexlog # with this
[/crayon]

then reboot.

Please report any bugs on the <a href="https://trello.com/board/plex-on-raspberry-pi/510c4d34e1d17df66c00092a"> trello </a>!
<h1>Updating plexht without reflashing</h1>
As bugs are fixed and features are added, the plexht binaries will be updated (every day or two so far). I would prefer to save bandwidth and have people simply update plex over reflashing the entire image. To do this, simply ssh in and run:

[crayon lang="sh"]

emerge -avG plexht

[/crayon]
<div></div>
<span style="color: #000000; font-weight: bold;">
</span>
