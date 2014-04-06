---
title: Rasplex Rc9 Is Out This Is One You Have Got To Try
modified: 2013-02-16
layout: post
redirect_from:
  -/archive/560
  -/blog/?p=560
tags: []
---


This release changes everything. Again
======================================

I hope someone gets that joke. Anyways, I'm the more excited about this release than any other release. RC8 had [playback issues](https://trello.com/c/MCByIded). rc9 uses OpenELEC instead of gentoo as a platform, this gives us lots of things for free:

-   An image that is 100MB instead of 400MB
-   lirc support
-   Faster boot time
-   Various bug fixes
-   Less system overhead

There are still some issues, and features we want to add:

-   No wifi support in OpenELEC (not totally true, but we have to set up the xbmc plugin to configure them - top priority so sit tight!)
-   Can't autoupdate (must reflash for new versions still) - yet.
-   NYX support is still dodgy : (
-   Overclocking is default
-   In the latest build (rc9) the username/password is "openelec:openelec". Will change it back to "plexuser:rasplex" for consistency.
-   Home screen fanouts (recently added/on deck) are a bit dodgy (not instant/don't draw). I find that navigating to and from them a few times forces them to draw. Working on a fix.

New install procedure
=====================

We now have an [installer](https://raw.github.com/dalehamel/rasplex-installer/master/getrasplex.py), which will automatically set up rasplex on linux and OSX. It is based on Sam Nazarko's raspbmc installer, with some added sugar:

-   Automatic selection of fastest mirror (EU or US)
-   Automatically gets the latest installer (only need to get one copy of installer, it updates itself)

Find out more details at [the installer's github](https://github.com/dalehamel/rasplex-installer). Check out the[install page](http://blog.srvthe.net/get-rasplex "Get rasplex") to get started. Special thanks once again to Weelkin for getting the OpenELEC ball rolling (he's also currently working on Wifi config dialog! Go him!)
