---
layout: post
status: publish
published: true
title: PlexHT on Raspberry Pi guide - for testers
author: dale.hamel
author_login: umhameld
author_email: daleha@gmail.com
wordpress_id: 431
wordpress_url: http://blog.srvthe.net/?p=431
date: 2013-02-01 21:30:00.000000000 -05:00
categories:
- Uncategorized
tags: []
comments: []
---
<h1>Disclaimer</h1>
This is still alpha quality, and is not ready for everyday use yet. There are a number of known issues, which have been addressed in earlier posts. This post is for everyone who would like to test things out, and help make things more stable.

This guide is only for linux systems, and you must have some knowledge of linux to use it.

<h1> Reporting problems </h1>

You can comment here, or on the plex forums. But I prefer you make a card on the project's <a href="https://trello.com/board/plex-on-raspberry-pi/510c4d34e1d17df66c00092a"> trello board </a>. Just make a trello account and you can comment on existing cards, and if you tell me your trello name or email I can add you to the board so that you can make cards. 

You can join the plex channel on chat.srvthe.net, or #plex on irc.srvthe.net (same room) and talk to void_ptr to report problems or ask to be added to the trello board.

<h1>Setting things up</h1>

You can skip the steps below by using the <a href="http://blog.srvthe.net/archives/474">easy instructions</a>, which are much faster and simpler 

NOTE: You MUST use the stage3 that <a href="https://s3.amazonaws.com/plex-rpi/rpi-base-stage3.tar.bz2" title="stage3">that I provide</a> intsead of the gentoo ones. The recent ones have broken SSHD as per <a href="https://bugs.gentoo.org/show_bug.cgi?id=450330" title="this bug">this bug</a>

If you do not have linux installed, just grab an <a href="http://www.ubuntu.com/download/desktop">ubuntu live cd</a>, and run this guide off of that (no need to actually install linux).

Follow the first 5 sections of <a href="http://wiki.gentoo.org/wiki/Raspberry_Pi_Quick_Install_Guide">http://wiki.gentoo.org/wiki/Raspberry_Pi_Quick_Install_Guide</a> to get a working raspberry pi gentoo image. NOTE: This can be done on any linux system, there is nothing gentoo specific here.

Note that when you are copying the firmware, also copy firmware/opt to the root. This contains the videocore drivers you'll need. You might be able to use userland instead, but I'm not sure.

<h1>On the Raspberry Pi</h1>
<h2>Installing the PHT binary with dependencies</h2>
Now that you have a working gentoo image that you can chroot into, you can install plexht!

SSH in, and run the following:

[crayon lang="sh"]

# Tell portage where the binaries are
cat << EOF >> /etc/make.conf
PORTAGE_BINHOST="http://s3.amazonaws.com/plex-rpi/"
PORTDIR_OVERLAY="/usr/local/portage"
EOF

# We'll need git to do anything
emerge -avG git # it'll complain about the overlay, that's ok. Make sure that it is selecting BINARY packages (should show up in purple instead of green)

# Set up the plex overlay
mkdir -p /usr/local/portage
cd /usr/local/portage
git clone git://github.com/dalehamel/PlexOverlay.git
ln -sf PlexOverlay/* .

# Unmask plexht's dependencies

emerge -avg plexht --autounmask-write
etc-update # use merge strategy -3

# Install tmux

emerge -avg tmux # not actually needed, but chances are your ssh session will time out if you don't

tmux new-session -s plexht
emerge -avg plexht # run inside the tmux session

[/crayon]

Congratulations! If everything went ok, you'll have plexht installed! If it didn't, please post a pastbin to /var/log/emerge.log in the comments.
<h1>Running plexht</h1>

A few hacks are required to get plexht working

[crayon lang="sh"]

ln -sf /opt/vc/lib/* /usr/lib # need to do this for some reason, probably because I suck at CMake!

# We'll make a wrapper here
cat << EOF > /usr/bin/plexht
export LD_LIBRARY_PATH=/opt/vc/lib
export XBMC_HOME=/usr/local/share/XBMC
plexhometheater
EOF

chmod +x /usr/bin/plexht

plexht # actually run's plexht

[/crayon]

Now you can run it! But it'll probably be unuesably slow. One known enhancement is to set the ~/.plexht/userdata/advancedsettings.xml to use the following options:

[crayon lang="xml"]
<advancedsettings>
   <network>
        <cachemembuffersize>30242880</cachemembuffersize>
   </network>
   <fanartheight>540</fanartheight>
   <thumbsize>256</thumbsize>
   <gui>
       <algorithmdirtyregions>3</algorithmdirtyregions>      
       <nofliptimeout>0</nofliptimeout>
   </gui>
   <lookandfeel>
 <enablerssfeeds>false</enablerssfeeds>
   </lookandfeel>
   <bginfoloadermaxthreads>2</bginfoloadermaxthreads>
</advancedsettings>
[/crayon]
