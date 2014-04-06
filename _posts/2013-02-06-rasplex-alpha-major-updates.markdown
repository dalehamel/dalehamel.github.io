---
title: Rasplex Alpha Major Updates
modified: 2013-02-06
layout: post
redirect_from:
  - /archives/490/
  - /blog/?p=490/
tags: []
---


Progressing fast!
=================

If you're tracking our progress on our [trello board](https://trello.com/board/plex-on-raspberry-pi/510c4d34e1d17df66c00092a), you'll notice how fast things have been going! I'd like to particularly thank LongChair, El Massman, and Johan B for their hard work on the project. It's hard to believe that just a week ago the GUI was thrashing all over the place, unuseable, with no playback support.

Various fixes
=============

We now have an alpha that I consider to be fairly useable. There are still some major bugs remaining, particularly the prefere nces panel is completely unuseable. If you'd like to try it out, I updated the [quick install blog post](http://blog.srvthe.net/archives/474).

Added features
==============

-   SSH user by default (user:pass is plexuser:rasplex)
-   Wicd-curses installed (must be run as root, but lets you setup wifi connects from ssh)
-   Autostart of PHT
-   Improved OMXPlayer (includes Plex DVDPlayer patches)
-   Various skin tweaks by El Massman
-   DD image size decreased from 4.6GB to 1.8GB.
-   Includes overclocking by default, so gui is much more responsive

Known issues
============

-   Various UI problems, particularly with backdrops not drawn (hard to read text)
-   Preference pane is by far the worst
-   On deck and recently added are temporarily removed from home screen due to inefficient processing they were doing (plans to add them back)
-   Some movies/TV shows are reported to not play properly, trying to figure out why.

