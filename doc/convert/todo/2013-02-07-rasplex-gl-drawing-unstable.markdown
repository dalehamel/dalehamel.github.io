---
layout: post
status: publish
published: true
title: Rasplex GL drawing - unstable
author: dale.hamel
author_login: umhameld
author_email: daleha@gmail.com
wordpress_id: 501
wordpress_url: https://blog.srvthe.net/?p=501
date: 2013-02-07 05:13:07.000000000 -05:00
categories:
- Uncategorized
tags: []
comments:
- id: 96
  author: Elan
  author_email: elan@plexapp.com
  author_url: https://www.plexapp.com
  date: '2013-02-07 05:57:03 -0500'
  date_gmt: '2013-02-07 05:57:03 -0500'
  content: You rule, this is gonna be awesome!
- id: 101
  author: Bruno
  author_email: nonojw@gmail.com
  author_url: https://jawa24.free.fr
  date: '2013-02-07 09:56:18 -0500'
  date_gmt: '2013-02-07 09:56:18 -0500'
  content: "Thank's for all your work !!\r\nAfter a test on my raspberry , a donate
    on your paypal account wiil be so natural :)"
- id: 109
  author: Dale Robins
  author_email: dale.robins@gmail.com
  author_url: ''
  date: '2013-02-07 14:30:51 -0500'
  date_gmt: '2013-02-07 14:30:51 -0500'
  content: "OpenGL already!, wow.\r\n\r\nThis is coming along very quickly, well done."
- id: 110
  author: Megawubs
  author_email: bwubs@me.com
  author_url: ''
  date: '2013-02-07 19:03:41 -0500'
  date_gmt: '2013-02-07 19:03:41 -0500'
  content: This is awesome dale!! Trying to get it working now :)
- id: 1283
  author: https://www.juquu.com/forum.php?mod=viewthread&amp;tid=111148&amp;extra=
  author_email: yhjxzaiplju@gmail.com
  author_url: https://www.juquu.com/forum.php?mod=viewthread&amp;tid=111148&amp;extra=
  date: '2013-07-02 09:47:16 -0400'
  date_gmt: '2013-07-02 09:47:16 -0400'
  content: Hey, Xu assistant, what are you saying it's over. How to do? You can not
    hurt, but I was a gun fight, and this time is that you invited me to dinner. Beforehand
    and only you will know that I am Great Wall Hotel appeared, and now I suspect
    that you want to kill me collusion killer! was simply trying to erase that sum
    three million in compensation, and I tell you surnamed Xu, no way! let you go
    tonight, Ma Haitian hotel off clothing, etc. I get there. Otherwise, the court
    tomorrow we see! You think you will find the killer? I is not mud pinch! Let's
    see libretto donkey wait and see!
---
<h1>Let there be eye candy!</h1>
Enabling GL drawing has massively improved the speed of Rasplex. Slideshows, thumbs, and the gui in general are quit useable and looking very pretty!

When it initially fetches the thumbnails, etc, it takes a little while. I suspect that this is because it is doing client side transcoding, and then caching them. It should be possible to force server side transcoding of thumbs etc.

After my on deck/recently added fully load, switching between images is almost instant (including setting background). Very close to desktop experience with PlexHT now.

httpv://www.youtube.com/watch?v=NztKPxmjJ5g

Thanks jsmith for the video!

&nbsp;
<h1>It's not ready yet</h1>
The downside is, that text backgrounds are still missing (making text really hard to read), and in patching for openGL i broke keyboard support inside of PHT, so iOS and android are the only way to control it.

The home screen features, on-deck and recently added, load much faster than in the original version, but are still a little sluggish. I think disabling the slideshow will probably help this, but I'll let El decide on that.

I'm uploading what I have now to <a href="https://rasplex.srvthe.net/rasplex-unstable.img.zip">amazon</a>, so that El and anyone else who is adventurous enough will be able to test it.

Note that with this image, you need to do a little hack:
<ul>
	<li>Autolaunch of plexht is disabled</li>
	<li>Login, and launch plexht</li>
	<li>It will complain about no plexpass, and be generally unuseable</li>
	<li>Reboot the Pi</li>
	<li><del>run "cp /usr/local/share/XBMC/advancedsettings.xml /root/.plexht/userdata"</del></li>
	<li>Grab the updated advanced settings from https://dl.dropbox.com/u/12363834/advancedsettings.xml with wget, and put it in /root/.plexht/userdata</li>
	<li>Grab the full mediastream skin https://dl.dropbox.com/u/28603683/mediastream.zip and put it in /usr/local/share/XBMC/addons</li>
	<li>Launch plexht and control it with the iOS or android app (be patient)</li>
	<li>Try out the full mediastream skin</li>
</ul>
In the meantime, I'm going to work an fixing the keyboard bug. That should make this much more testable. I'm also going to spend some time digging throuh the home screen on-deck/recently added code, to see what I can do to speed this up.

Sit tight... this is going to be a HUGE boost for rasplex!
