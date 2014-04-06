---
layout: post
status: publish
published: true
title: Rasplex 0.1.14 released
author: dale.hamel
author_login: umhameld
author_email: daleha@gmail.com
wordpress_id: 605
wordpress_url: http://blog.srvthe.net/?p=605
date: 2013-02-24 02:09:06.000000000 -05:00
categories:
- Uncategorized
tags: []
comments:
- id: 341
  author: Jeffrey Jacka
  author_email: jtjacka@gmail.com
  author_url: ''
  date: '2013-03-06 06:03:35 -0500'
  date_gmt: '2013-03-06 06:03:35 -0500'
  content: "Nice work so far on the rasp pi client.  Sure is laggy but I am sure that
    will be improved!  What do you think the final result will be in terms of lag
    and performance?\r\n\r\n-Jeff"
- id: 343
  author: dale.hamel
  author_email: daleha@gmail.com
  author_url: ''
  date: '2013-03-06 06:24:09 -0500'
  date_gmt: '2013-03-06 06:24:09 -0500'
  content: Yup, I've identified the problem and am working on a solution.
---
<h1></h1>
<h1>Available as bleeding edge build</h1>
You can get it using the instructions at <a title="Get rasplex" href="http://blog.srvthe.net/get-rasplex">rasplex download page</a> for bleeding edge builds, until it is promoted to stable.
<h1>Lots of platform changes</h1>
You can view the release plan on the <a href="https://trello.com/c/yX9P2ubL" title="trello card">trello card</a>

This release of rasplex didn't change much with plexht, aside from the HEAD merge, but added <strong>lots </strong>of platform goodies:
<ul>
	<li>Automatic updating (downloaded/extracted in background, update on reboot)</li>
	<li>Nice wifi/system config dialog through Preferences - Rasplex settings</li>
	<li>Sane version numbering / version displayed on boot and at ssh login</li>
	<li>Nice splash screens</li>
	<li>Various fixes (re-enable airplay, disable global slideshow, fixed pastelog)</li>
</ul>
<h1>Some caveats</h1>
The HEAD merge changes appear to have made fanouts <strong>even slower</strong>, which is pretty brutal considering how slow they were already. Now that most of the platform changes are done, I can focus on speeding up PHT again.

As a workaround, I recommend you force caching of thumbnails. To do this, just go into TV Shows / Movies, select All TV shows / Movies and then scroll through the list a few times until all of the thumbnails are loaded.

This forces rasplex to cache the thumbs and fanart from the server, which will make it much faster. Updates will not overwrite this cache, so warming up the cache should be a one-time action.
<h1>Sorry about all the ads</h1>
Since rasplex hasn't been receiving any donations lately, I've been forced to put a shameful amount of ads on the blog.

Just a reminder to everyone that I don't take any money donated to rasplex, it all gets reinvested in the project (along with the advertisement revenue).

If you like the project, please donate at the <a title="donation" href="http://srvthe.net">donation page</a> to support future updates and features! These features and patches don't write themselves ;)
