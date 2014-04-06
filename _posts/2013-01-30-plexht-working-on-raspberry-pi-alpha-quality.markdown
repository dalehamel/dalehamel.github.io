---
title: Plexht Working On Raspberry Pi Alpha Quality
modified: 2013-01-30
layout: post
redirect_from:
  - /archives/407/
  - /blog/?p=407/
tags: []
---


I DID IT!
=========

After working in this since September, I've finally managed to get PlexHT building and linking, and the gui loading on the Raspberry Pi.

This by far is the best proof of concept that I have encountered for the Raspberry Pi as a Plex client.

Caveats
=======

It's not ready for use yet. It's currently very CPU bound, as there are a lot of GUI redraws with plex being such a media rich application.

I also haven't even build OMXPlayer into the executable yet (though my work on pyplex loads me to believe that this won't be too bad to get working), so it won't play video even if you try.

I have no idea how to get audio working either, and it will probably only work during playback (no theme songs). Might be able to patch Plex to do whatever OMXPlayer does for audio though.

The gui also thrashes a lot unless if you enable dirty redraw alg 3 with 0ms.

The road ahead
==============

I expect that a release should be a month or two away still, depending on how many people I can get to help me optimize and debug it.

I do have a plan though:

-   Crossdev environment for building BINHOST packages (MUCH faster than doing it on RPi, though less flexible)
-   Strip down GUI to include no fanart or banners, and incrementally add features back in so that it is more useable
-   Link OMXPlayer and get playback working
-   See if it is possible to get audio playback working
-   Build a Stage4 image for gentoo
-   Build Debian packages
-   Make an installer based off of raspbmc's
-   Release a rasplex (tentative name) distro.

