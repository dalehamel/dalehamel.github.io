---
title: Rasplex Gl Drawing Unstable
modified: 2013-02-07
layout: post
tags: []
---


Let there be eye candy!
=======================

Enabling GL drawing has massively improved the speed of Rasplex. Slideshows, thumbs, and the gui in general are quit useable and looking very pretty! When it initially fetches the thumbnails, etc, it takes a little while. I suspect that this is because it is doing client side transcoding, and then caching them. It should be possible to force server side transcoding of thumbs etc. After my on deck/recently added fully load, switching between images is almost instant (including setting background). Very close to desktop experience with PlexHT now. httpv://www.youtube.com/watch?v=NztKPxmjJ5g Thanks jsmith for the video!  

It's not ready yet
==================

The downside is, that text backgrounds are still missing (making text really hard to read), and in patching for openGL i broke keyboard support inside of PHT, so iOS and android are the only way to control it. The home screen features, on-deck and recently added, load much faster than in the original version, but are still a little sluggish. I think disabling the slideshow will probably help this, but I'll let El decide on that. I'm uploading what I have now to [amazon](https://rasplex.srvthe.net/rasplex-unstable.img.zip), so that El and anyone else who is adventurous enough will be able to test it. Note that with this image, you need to do a little hack:

-   Autolaunch of plexht is disabled
-   Login, and launch plexht
-   It will complain about no plexpass, and be generally unuseable
-   Reboot the Pi
-   ~~run "cp /usr/local/share/XBMC/advancedsettings.xml /root/.plexht/userdata"~~
-   Grab the updated advanced settings from https://dl.dropbox.com/u/12363834/advancedsettings.xml with wget, and put it in /root/.plexht/userdata
-   Grab the full mediastream skin https://dl.dropbox.com/u/28603683/mediastream.zip and put it in /usr/local/share/XBMC/addons
-   Launch plexht and control it with the iOS or android app (be patient)
-   Try out the full mediastream skin

In the meantime, I'm going to work an fixing the keyboard bug. That should make this much more testable. I'm also going to spend some time digging throuh the home screen on-deck/recently added code, to see what I can do to speed this up. Sit tight... this is going to be a HUGE boost for rasplex!
