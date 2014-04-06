---
layout: post
status: publish
published: true
title: Rasplex rc9 is out - this is one you have GOT to try
author: dale.hamel
author_login: umhameld
author_email: daleha@gmail.com
wordpress_id: 560
wordpress_url: http://blog.srvthe.net/?p=560
date: 2013-02-16 22:38:31.000000000 -05:00
categories:
- Uncategorized
tags: []
comments: []
---
<h1>This release changes everything. Again</h1>
I hope someone gets that joke.

Anyways, I'm the more excited about this release than any other release. RC8 had <a href="https://trello.com/c/MCByIded">playback issues</a>.

rc9 uses OpenELEC instead of gentoo as a platform, this gives us lots of things for free:
<ul>
	<li>An image that is 100MB instead of 400MB</li>
	<li>lirc support</li>
	<li>Faster boot time</li>
	<li>Various bug fixes</li>
	<li>Less system overhead</li>
</ul>
There are still some issues, and features we want to add:
<ul>
	<li>No wifi support in OpenELEC (not totally true, but we have to set up the xbmc plugin to configure them - top priority so sit tight!)</li>
	<li>Can't autoupdate (must reflash for new versions still) - yet.</li>
	<li>NYX support is still dodgy : (</li>
	<li>Overclocking is default</li>
	<li>In the latest build (rc9) the username/password is "openelec:openelec". Will change it back to "plexuser:rasplex" for consistency.</li>
	<li>Home screen fanouts (recently added/on deck) are a bit dodgy (not instant/don't draw). I find that navigating to and from them a few times forces them to draw. Working on a fix.</li>
</ul>
<h1>New install procedure</h1>
We now have an <a href="https://raw.github.com/dalehamel/rasplex-installer/master/getrasplex.py">installer</a>, which will automatically set up rasplex on linux and OSX. It is based on Sam Nazarko's raspbmc installer, with some added sugar:
<ul>
	<li>Automatic selection of fastest mirror (EU or US)</li>
	<li>Automatically gets the latest installer (only need to get one copy of installer, it updates itself)</li>
</ul>
Find out more details at <a href="https://github.com/dalehamel/rasplex-installer">the installer's github</a>.

Check out the<a title="Get rasplex" href="http://blog.srvthe.net/get-rasplex"> install page</a> to get started.

Special thanks once again to Weelkin for getting the OpenELEC ball rolling (he's also currently working on Wifi config dialog! Go him!)
