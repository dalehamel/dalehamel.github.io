---
title: title
layout: post
tags: []
---


Things have come a long way
===========================

rc8 is the product of various "experimental" rc's, that pulled in the latest PHT code. The most notable difference in rc8 is that the home screen is much faster, and on-deck/recently added are much more useable. There is still some delay, but even with full skin animations, and only background slideshow disabled, it still works surprisingly well. Some things to note:

-   Still no lirc support, sorry!
-   Image quality is much lower, this is part of the speedup. Will be noticable on high def/ big screens.
-   On deck/recently added are a little slow the first time you hover them, but get better subsequent times, just scroll through them a few times and be patient (this forces the Pi to cache the thumbnails)
-   Transcoding works great now, and remote playback is well tested and confirmed working : )

Some other updates

-   There are **working prototypes** of Raspbian and OpenELEC ports of rasplex! Thanks to weelkin and Anild!
-   Expect for rasplex to be released on all 3 in subsequent releases.

If there are no major issues found with rc8, I am going to promote it to "stable", and dub it "0.1-final", to spend some time setting up automated builds, properly formatting my git patches, and setting up the infrastructure for a triforce release of gentoo, openelec, and raspbian builds. I'll also be setting up a PPA for raspbian users. I will also turn pht-autostart to on by default. 0.1 final won't be the last release of rasplex as there is still lots to do, and PHT is still being developed, but it is a landmark signifying a relatively stable, use-able build. You can get [rc8 here](https://rasplex.srvthe.net/rasplex-unstable.img.zip "rc8 here"). If you like the project, please [donate : ) to help support it](https://srvthe.net)
