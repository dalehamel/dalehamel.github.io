---
layout: post
status: publish
published: true
title: RasPlex 0.1.24 Released
author: dale.hamel
author_login: umhameld
author_email: daleha@gmail.com
wordpress_id: 630
wordpress_url: https://blog.srvthe.net/?p=630
date: 2013-03-08 14:56:37.000000000 -05:00
categories:
- Uncategorized
tags: []
comments: []
---
<h1>Thanks for being patient</h1>
This release has been a long time coming, and I have to say it's been pretty cranky. We had quite a few attempts at a release that kept blowing up during video playback, though everything since the OpenELEC Head merge has been much more responsive in the UI.

My rule for releases is that I won't push anything that I am not using myself every day. I had previously been using 0.1.17, and nothing since then had been substantially better enough to justify a push. In my opinion 0.1.24 is something worth getting excited about, as the GUI is now much faster

Thanks again to a_wein for championing this merge!

This version should also have update notifications.
<h1>Some changes</h1>
We are retiring the S3 mirror, and going all out SourceForge for financial reasons.

Plex Inc has donated us some forum space, so feel free to check it out!

<a href="https://forums.plexapp.com/index.php/forum/126-rasplex/">https://forums.plexapp.com/index.php/forum/126-rasplex/</a>
<h1>Pi Day Notes</h1>
I'm going to be spending much of my remaining time making sure the website is up-to-snuff, and hopefully setting up PayPal preorders for the case for anyone who is already really interested. We'll have at least some 3D Cad screenshots.

For Pi Day, we will likely be temporarily disabling fanouts (the things that pop up when you hover over Movies / TV Shows), because these are insanely laggy, display out of date content, and are generally useless. I know how to fix them, so they will be coming back soon.

Once Pi day passes, I'll be turning my attention back to development, and the first thing I'll be doing is probably a PHT upstream merge, and then setting to work on doing a more Pi centric caching scheme that will dramatically boost the GUI responsiveness.

Cheers! We're in the home stretch!
