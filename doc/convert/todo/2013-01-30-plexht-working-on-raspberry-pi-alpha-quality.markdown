---
layout: post
status: publish
published: true
title: PlexHT Working on Raspberry Pi - Alpha quality
author: dale.hamel
author_login: umhameld
author_email: daleha@gmail.com
wordpress_id: 407
wordpress_url: https://blog.srvthe.net/?p=407
date: 2013-01-30 06:23:36.000000000 -05:00
categories:
- Uncategorized
tags:
- plex rpi gentoo
comments:
- id: 71
  author: Finn Nyman
  author_email: finn@neuman.nu
  author_url: https://www.neuman.nu
  date: '2013-01-30 08:18:56 -0500'
  date_gmt: '2013-01-30 08:18:56 -0500'
  content: You sir, are my hero! Please let me know if you need help testing (I am
    no developer)
- id: 73
  author: Bobby
  author_email: idontknowhisname@gmail.com
  author_url: https://hba.me
  date: '2013-01-30 14:09:59 -0500'
  date_gmt: '2013-01-30 14:09:59 -0500'
  content: I'm happy to help with testing.
- id: 82
  author: Jos Visser
  author_email: info@josvisserict.nl
  author_url: ''
  date: '2013-02-02 20:39:57 -0500'
  date_gmt: '2013-02-02 20:39:57 -0500'
  content: This is the best news  in have had in a long time if you need a tester
    i am willing to try!!!
---
<h1>I DID IT!</h1>
<p>After working in this since September, I've finally managed to get PlexHT building and linking, and the gui loading on the Raspberry Pi.</p>
<p>This by far is the best proof of concept that I have encountered for the Raspberry Pi as a Plex client. </p>
<h1>Caveats</h1>
<p>It's not ready for use yet. It's currently very CPU bound, as there are a lot of GUI redraws with plex being such a media rich application. </p>
<p>I also haven't even build OMXPlayer into the executable yet (though my work on pyplex loads me to believe that this won't be too bad to get working), so it won't play video even if you try.</p>
<p>I have no idea how to get audio working either, and it will probably only work during playback (no theme songs). Might be able to patch Plex to do whatever OMXPlayer does for audio though.</p>
<p>The gui also thrashes a lot unless if you enable dirty redraw alg 3 with 0ms.</p>
<h1>The road ahead</h1>
<p>I expect that a release should be a month or two away still, depending on how many people I can get to help me optimize and debug it.</p>
<p>I do have a plan though:</p>
<ul>
<li>Crossdev environment for building BINHOST packages (MUCH faster than doing it on RPi, though less flexible)</li>
<li>Strip down GUI to include no fanart or banners, and incrementally add features back in so that it is more useable</li>
<li>Link OMXPlayer and get playback working</li>
<li>See if it is possible to get audio playback working</li>
<li>Build a Stage4 image for gentoo</li>
<li>Build Debian packages</li>
<li>Make an installer based off of raspbmc's</li>
<li>Release a rasplex (tentative name) distro.</li>
</ul>
