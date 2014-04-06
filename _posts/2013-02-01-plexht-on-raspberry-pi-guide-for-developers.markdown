---
title: Plexht On Raspberry Pi Guide For Developers
modified: 2013-02-01
layout: post
redirect_from:
  -/archive/409
  -/blog/?p=409
tags: []
---


Disclaimer
==========

This is still alpha quality, and is not ready for everyday use yet. There are a number of known issues, which have been addressed in earlier posts. This post is for everyone who would like to test things out, and help make things more stable. This guide is only for linux systems, and you must have some knowledge of linux to use it.

Reporting problems
==================

You can comment here, or on the plex forums. But I prefer you make a card on the project's [trello board](https://trello.com/board/plex-on-raspberry-pi/510c4d34e1d17df66c00092a). Just make a trello account and you can comment on existing cards, and if you tell me your trello name or email I can add you to the board so that you can make cards. You can join the plex channel on chat.srvthe.net, or \#plex on irc.srvthe.net (same room) and talk to void\_ptr to report problems or ask to be added to the trello board.

Setting up a build environment
==============================

NOTE: If you want to get the pi flashed is quickly as possible, use the [easy instructions](http://blog.srvthe.net/archives/474) and you'll at least have a working system. NOTE: You MUST use the stage3 that [that I provide](https://s3.amazonaws.com/plex-rpi/rpi-base-stage3.tar.bz2 "stage3") intsead of the gentoo ones. The recent ones have broken SSHD as per [this bug](https://bugs.gentoo.org/show_bug.cgi?id=450330 "this bug") Building on the Raspberry Pi is very slow (especially linking), due to the slow filesystem, and low amount of memory. If you want to make your own builds, you should set up a build chroot. On overview of this is:

-   Install qemu-user on your host system with support for arm. You must use the static version, as dynamically linked will not work.
-   start qemu-binfmt daemon on your host system
-   Download an arm stage3 from [me](https://s3.amazonaws.com/plex-rpi/rpi-base-stage3.tar.bz2) (you can't use recent images from gentoo, they have a bug)(note, this will work on any linux system)
-   Extract the stage 3 you downloaded.
-   Copy the statically linked qemu-user executables into the stage 3
-   Clone the the PlexOverlay, and add it

The following are optional, but useful to speed things up:

-   Setup a binhost pointing to [http://s3.amazonaws.com/plex-rpi/](http://s3.amazonaws.com/plex-rpi/)
-   On your host system, setup an arm distcc crossdev
    -   Inside the chroot, setup distcc pointing to your host system

Gentoo specific instructions
============================

Sorry, there are no ubuntu instructions or instructions for any other distro. For the most part, just replace emerge with apt-get or yum though. You might have to do a bit of research here. If you get something working, please add a comment on how you did it, and i'll update this guide. Do "Running qemu user on chroot" [http://wiki.gentoo.org/wiki/Cross\_Container\_Support\_Project\#Running\_Qemu-user\_on\_Chroot](http://wiki.gentoo.org/wiki/Cross_Container_Support_Project#Running_Qemu-user_on_Chroot), using [my stage3](https://s3.amazonaws.com/plex-rpi/rpi-base-stage3.tar.bz2) as the stage3. The exact steps are provided below. Note that the step that says "ROOT=\$PWD/ emerge -K qemu-user" won't work. Instead, just copy /usr/bin/qemu-user\* into the chroot's usr/bin Now, time to setup plex: \# Ensure your kernel has \# Executable file formats / Emulations ---\> \# Kernel support for MISC binaries \# either as a module or built in. \# Set the target arch for qemu to arm cat \<\< EOF \>\> /etc/make.conf QEMU\_SOFTMMU\_TARGETS="arm" QEMU\_USER\_TARGETS="arm" EOF \# Instart and start qemu-binfmt, which will allow us to run arm executables. echo "=app-emulation/qemu-user-1.1.0-r1 \~amd64" \>\> /etc/portage/package.keywords eselect python set python2.7 USE="static" emerge -av app-emulation/qemu-user rc-config start qemu-binfmt rc-update add qemu-binfmt \# Setup the chroot based off of an arm stage3 mkdir /rpi cd /rpi wget https://s3.amazonaws.com/plex-rpi/rpi-base-stage3.tar.bz2 tar -xvpf rpi-base-stage3-tar.bz2 \# Make a convenience script to enter/exit the chroot cat \<\< EOF \> /rpi/enter\_chroot.sh [ -d /proc/sys/fs/binfmt\_misc ] || modprobe binfmt\_misc [ -f /proc/sys/fs/binfmt\_misc/register ] || mount binfmt\_misc -t binfmt\_misc /proc/sys/fs/binfmt\_misc mount -t proc none /rpi/proc mount --rbind /dev /rpi/dev mount --rbind /sys /rpi/sys mount --rbind /dev/pts /rpi/dev/pts cp /etc/resolv.conf /rpi/etc echo "Entering chroot" chroot /rpi echo "Leaving chroot" umount -l /rpi/proc umount -l /rpi/sys umount -l /rpi/dev/pts umount -l /rpi/dev/shm umount -l /rpi/dev EOF \#At this point, you'll have the ability to run arm code inside your chroot, congratulations! \# Setup the overlay for plexht mkdir -p /rpi/usr/local/portage cd /rpi/usr/local/portage git clone https://github.com/dalehamel/PlexOverlay.git \# Setup portage to use the overlay, and make binary packages for everything it builds cat \<\< EOF \>\> /rpi/etc/make.conf FEATURES="buildpkg" PORTDIR\_OVERLAY="/usr/local/portage" EOF cd /rpi chmod +x enter\_chroot.sh \# Actually enter the chroot, and start the build ./enter\_chroot.sh \# probably want to run this in a screen or tmux since it'll take a WHILE \#now, inside the chroot ln -sf /usr/local/portage/PlexOverlay/\* /usr/local/portage emerge -av plexht --autounmask-write emerge -av git \# this is required for the current ebuilds, but not actually a dependencie of plex etc-update \#use -3 and hit y as many times as needed to autounmask emerge -av plexht \#it'll take a while to build the dependencies [/crayon] Once the build finishes, you'll have all the packages you need to install on your actual raspberry pi in /usr/local/portage. Follow the "PlexHT on Raspberry Pi guide - for testers" guide, using this as your binhost instead of mine to test your own binaries.  

Speeding things up
==================

The qemu chroot uses an emulated GCC which is quite slow (comparable to the speed of the RPi). To get around this, we will use a native cross compiler, using distcc. The way this will work is the rpi chroot will pass compile requests to the host system (the same system in this example, but outside of the emulation environment). This will compile the objects much faster. You can even add multiple workers if you have multiple computers.   Follow the setup from [http://wiki.gentoo.org/wiki/Raspberry\_Pi\_Quick\_Install\_Guide\#Cross\_building](http://wiki.gentoo.org/wiki/Raspberry_Pi_Quick_Install_Guide#Cross_building), treating your chroot as the raspberry pi. Do the following steps on your HOST machine (outside of the chroot):   [crayon lang="sh"] \#Use the script at http://wiki.gentoo.org/wiki/Raspberry\_Pi\_Quick\_Install\_Guide\#crossdev to convert your portage files into folders emerge -av crossdev distcc \# You must set /etc/conf.d/distccd so that DISTCCD\_OPTS="\${DISTCCD\_OPTS} --allow 192.168.1.0/24" is correct for your subnet rc-update add distccd default rc-config start distccd \# Create your cross compiler toolchain crossdev -S -v -t armv6j-hardfloat-linux-gnueabi [/crayon] The following steps must occur inside of the chroot: [crayon lang="sh"] emerge -av distcc \#You probably want to emerge this before any other packages, to save time cat \<\< EOF \>\> /etc/make.conf FEATURES="distcc buildpkg" EOF \# You must add your HOST computer's hostname to /etc/distcc/hosts in front of 127.0.0.1 \# We need to trick distcc into using a cross compiler cd /usr/lib/distcc/bin \# Make this file at \# /usr/lib/distcc/bin/armv6j-hardfloat-linux-gnueabi-wrapper \#!/bin/bash exec /usr/lib/distcc/bin/armv6j-hardfloat-linux-gnueabi-g\${0:\$[-2]} "\$@" \# End file rm c++ g++ gcc cc chmod a+x /usr/lib/distcc/bin/armv6j-hardfloat-linux-gnueabi-wrapper ln -s armv6j-hardfloat-linux-gnueabi-wrapper cc ln -s armv6j-hardfloat-linux-gnueabi-wrapper gcc ln -s armv6j-hardfloat-linux-gnueabi-wrapper g++ ln -s armv6j-hardfloat-linux-gnueabi-wrapper c++ \# You can check if the compilation is being distributed with: watch -n1 DISTCC\_DIR="/var/tmp/portage/.distcc/" distccmon-text \# You may also want to set MAKEOPTS to be multithreaded to fit your number of cores, for building dependencies \# Note however that this is known to break the plexht build, so must be disabled for the build itself cat \<\< EOF \>\> /etc/make.conf MAKEOPTS="-j5" \# for 4 cores. The number should be your number of cores + 1 EOF [/crayon]  

Caveats
=======

For some reason the Qemu chroot is broken for egit fetching. You will have to fetch any git repos yourself and put them in /usr/local/portage/distfiles/egit-src   For example, on your host system: [crayon lang="sh"] git clone https://github.com/dalehamel/plex-home-theatre.git mkdir -p /rpi/usr/portage/distfiles/egit-src mv plex-home-theatre/.git /rpi/usr/portage/distfiles/egit-src/plex-home-theatre.git sed -i 's/bare = false/bare = true/g' /rpi/usr/portage/distfiles/egit-src/plex-home-theater-public.git/config [/crayon] This will also have to be done for libshairport, and possibly others int he future. If linking plexht fails, you probably need to use this hack: [crayon lang="sh"] ln -sf /opt/vc/lib/\* /usr/lib emerge -av plexht [/crayon] Note that emerging GLEW overwrites this, so it has to be done AFTER all of the dependencies are installed, but before plexht is installed.
