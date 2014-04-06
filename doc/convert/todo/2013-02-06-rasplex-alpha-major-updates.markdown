---
layout: post
status: publish
published: true
title: Rasplex Alpha major updates
author: dale.hamel
author_login: umhameld
author_email: daleha@gmail.com
wordpress_id: 490
wordpress_url: http://blog.srvthe.net/?p=490
date: 2013-02-06 08:06:36.000000000 -05:00
categories:
- Uncategorized
tags: []
comments: []
---
<h1>Progressing fast!</h1>
If you're tracking our progress on our <a href="https://trello.com/board/plex-on-raspberry-pi/510c4d34e1d17df66c00092a" >trello board </a>, you'll notice how fast things have been going!

I'd like to particularly thank LongChair, El Massman, and Johan B for their hard work on the project.

It's hard to believe that just a week ago the GUI was thrashing all over the place, unuseable, with no playback support.
<h1>Various fixes</h1>

We now have an alpha that I consider to be fairly useable. There are still some major bugs remaining, particularly the prefere
nces panel is completely unuseable.

If you'd like to try it out, I updated the <a href="http://blog.srvthe.net/archives/474"> quick install blog post </a>.
<h1>Added features</h1>
<ul>
	<li>SSH user by default (user:pass is plexuser:rasplex)</li>
	<li>Wicd-curses installed (must be run as root, but lets you setup wifi connects from ssh)</li>
	<li>Autostart of PHT</li>
	<li>Improved OMXPlayer (includes Plex DVDPlayer patches)</li>
	<li>Various skin tweaks by El Massman</li>
	<li>DD image size decreased from 4.6GB to 1.8GB.</li>
	<li>Includes overclocking by default, so gui is much more responsive</li>
</ul>
<h1>Known issues</h1>
<ul>
	<li>Various UI problems, particularly with backdrops not drawn (hard to read text)</li>
	<li>Preference pane is by far the worst</li>
	<li>On deck and recently added are temporarily removed from home screen due to inefficient processing they were doing (plans to add them back)</li>
	<li>Some movies/TV shows are reported to not play properly, trying to figure out why.</li>
</ul>
