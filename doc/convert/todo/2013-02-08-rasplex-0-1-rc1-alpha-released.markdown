---
layout: post
status: publish
published: true
title: Rasplex 0.1-rc1 alpha released
author: dale.hamel
author_login: umhameld
author_email: daleha@gmail.com
wordpress_id: 519
wordpress_url: http://blog.srvthe.net/?p=519
date: 2013-02-08 22:42:03.000000000 -05:00
categories:
- Uncategorized
tags: []
comments:
- id: 117
  author: Trent
  author_email: ptrent@hotmail.com
  author_url: ''
  date: '2013-02-10 18:41:22 -0500'
  date_gmt: '2013-02-10 18:41:22 -0500'
  content: Windows XBOX remote works fine. Thanx for the excellent work!!
---
<h1>Good news everyone!</h1>
(the above must be read with a professor Farnsworth voice), ala httpv://www.youtube.com/watch?v=HHfOejlvVsY

Rasplex 0.1-rc1 alpha is ready for use, get it <a href="http://rasplex.srvthe.net/rasplex-stable.img.zip">here</a>.

I consider this to be the best build yet, hands down. Here is the <a href="https://trello.com/c/1oMwUL5L">feature card for the release</a>, but here's a summary of what's been added
<ul>
	<li>Clean OpenGL drawing (note, if you leave it running over night, it'll cache all of the images, making it run much faster)</li>
	<li>Updating plexht now works again via emerge -avG plexht</li>
	<li>Gui is now very much working and very useable</li>
	<li>Ability to toggle fan art (thanks to El Massman)</li>
	<li>You can now get the rasplex version with the rasplex-version command</li>
	<li>You can enable/disable plex autostart with the commands "pht-autostart-on" and "pht-autostart-off"</li>
	<li>Airplay is now supported by default</li>
	<li>Boots up faster without DHCP spam</li>
</ul>
From now on, all versions will be numbered. I may release "unstable" builds once in a while, as previews, but know what you're getting into with them. I am taking down the original image, and the unstable image - this will be the only image available for now.
<h1>Not out of the woods just yet...</h1>
There's still lots to fix. In some cases, plex will just randomnly crash, not sure why yet. libCEC support is still a work in progress. And other issues I'm sure.
<h1></h1>
<h1>The road ahead</h1>
Aside from obvious fixes and feature requests (still want to speed up the GUI some more), we now have some folks actively volunteering their time to port the package to raspbian and openelec.

As for myself, I will be spending most of my time getting CEC to work (though I have no way of testing it sadly, which is why it's been so slow), and merging my code with upstream HEAD to bring in features that Tobias has added.

You can view the plan for <a href="https://trello.com/c/dCy1Pd0a">rasplex-0.1.5</a> on the <a href="https://trello.com/board/plex-on-raspberry-pi/510c4d34e1d17df66c00092a">trello board</a>
<h1>Thanks again to everyone who has donated, and volunteered their time</h1>
I am keeping the donation money in the paypal account until we at least have a good beta release, then I plan on dividing it up amongst the top contributing developers (tempted as I may be to hoard it all to myself, I think it's a great incentive to get people to help ;)

Speaking of donations, you can donate at the <a href="http://srvthe.net">main srvthe.net portal</a>, or by scrolling to the bottom of this page.

I want to particularly call out a few stars here...
<ul>
	<li>Tobias H. for making and maintaining PlexHT</li>
	<li>LongChair, for being willing to test broken, terrible builds and put up with my constant "it'll be in the next build"</li>
	<li>ElMassman, for all of his help with speeding up the GUI, especially in the early early days (hard to believe that was like, 2 weeks ago)</li>
	<li>Jsmith79, for figuring out that we can now use the OS-X mediastream skin (which El then modified to add the ability to disable fan art)</li>
	<li>Curtis Vogt (Omus) for airplay support</li>
	<li>Everyone else in IRC, plex chat, and on the forums!</li>
</ul>
&nbsp;

Did I mention you can <a href="http://srvthe.net">donate to support this project?</a>

&lt;/shamelessdonationtrolling&gt;
