---
title: Rasplex 0 1 14 Released
modified: 2013-02-24
layout: post
redirect_from:
  - /archives/605/
  - /blog/?p=605/
tags: []
---


Available as bleeding edge build
================================

You can get it using the instructions at [rasplex download page](http://blog.srvthe.net/get-rasplex "Get rasplex") for bleeding edge builds, until it is promoted to stable.

Lots of platform changes
========================

You can view the release plan on the [trello card](https://trello.com/c/yX9P2ubL "trello card") This release of rasplex didn't change much with plexht, aside from the HEAD merge, but added **lots **of platform goodies:

-   Automatic updating (downloaded/extracted in background, update on reboot)
-   Nice wifi/system config dialog through Preferences - Rasplex settings
-   Sane version numbering / version displayed on boot and at ssh login
-   Nice splash screens
-   Various fixes (re-enable airplay, disable global slideshow, fixed pastelog)

Some caveats
============

The HEAD merge changes appear to have made fanouts **even slower**, which is pretty brutal considering how slow they were already. Now that most of the platform changes are done, I can focus on speeding up PHT again. As a workaround, I recommend you force caching of thumbnails. To do this, just go into TV Shows / Movies, select All TV shows / Movies and then scroll through the list a few times until all of the thumbnails are loaded. This forces rasplex to cache the thumbs and fanart from the server, which will make it much faster. Updates will not overwrite this cache, so warming up the cache should be a one-time action.

Sorry about all the ads
=======================

Since rasplex hasn't been receiving any donations lately, I've been forced to put a shameful amount of ads on the blog. Just a reminder to everyone that I don't take any money donated to rasplex, it all gets reinvested in the project (along with the advertisement revenue). If you like the project, please donate at the [donation page](http://srvthe.net "donation") to support future updates and features! These features and patches don't write themselves ;)
