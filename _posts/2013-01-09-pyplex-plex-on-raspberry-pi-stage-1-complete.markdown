---
title: Pyplex Plex On Raspberry Pi Stage 1 Complete
modified: 2013-01-09
layout: post
redirect_from:
  - /archives/395/
  - /blog/?p=395/
tags: []
---


Good news everyone!
===================

I've got a stable beta of a Plex player for the RPi. I'm bundling up a complete distro and installer for it so that it is average-joe friendly. Using the XBMC Port of OMXPlayer, along with twisted matrix DirectFB, and SDL,and thanks to some good friends on github who created the initial infrastructure, there is now an avahi (bonjour) discoverable plex frontend service running on the RPi.

You can find the code at https://github.com/dalehamel/pyplex.

Everything you will need to install it on gentoo is in my overlay at https://github.com/dalehamel/PlexOverlay

It should also work on raspbian, but you will need to install the dependencies yourself (they are documented in the ebuilds and shouldn't be too hard to pull out.

How to build (Gentoo)
=====================

-   Set up a distcc/crossdev environment (unless you are REALLY patient...) http://wiki.gentoo.org/wiki/Raspberry*Pi*Quick*Install*Guide\#Cross\_building
-   Get the latest firmware for your RPi with https://github.com/Hexxeh/rpi-update
-   Setup the config.txt file as described in the pyplex documentation
-   Setup the PlexOverlay as described in the pyplex readme
-   emerge pyplex

Using pyplex
============

You can set it up as a daemon (i'll be adding one for openrc to the overlay soon), or just run it manually with "pyplex".

You can then control it from your iPhone or Android running the plexapp, or using plex web (but can only start stuff - no playback controls).

Currently, the following are supported:

-   Starting media
-   Pausing
-   Fast-forward, rewind (no jumping or seeking)
-   Stopping

It may be possible to add seek/resume functionality, but right now this is non-trivial since it doesn't seem like the backend supports it.

What's next?
============

For pyplex, I would like to make a simple web form for settin up myplex so that users can easily set it up. The goal should be that the end user will never need to touch the linux console to use it.

I would also like to make an installer for pyplex, similar to raspbmc. I may also put the packages that I have built up in a repo to save people time.

Plex-linux
==========

I haven't given up on a native plex client for raspberry pi. I may be starting an Indygogo to fund the porting effort, but I will use the pyplex client as an incentive for people to donate so that they at least have a working client at the end of the day.
