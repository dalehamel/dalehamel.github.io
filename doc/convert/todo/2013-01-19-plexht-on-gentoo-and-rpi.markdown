---
layout: post
status: publish
published: true
title: PlexHT on Gentoo and RPi
author: dale.hamel
author_login: umhameld
author_email: daleha@gmail.com
wordpress_id: 401
wordpress_url: http://blog.srvthe.net/?p=401
date: 2013-01-19 22:17:48.000000000 -05:00
categories:
- Uncategorized
tags: []
comments: []
---
<h1>PlexHT - Plex-linux reborn</h1>
<p>My previous work with plex on linux had been based off of the plex-linux project, a port of plex for linux by gewalker. The project hadn't been updated in a long time, which made working with it very difficult. </p>
<p>Plex has recently rebooted PMC into PlexHT. It is based off of the latest upstream XBMC, and as such it is much more stable and feature rich. Most importantly for me though, it has the Raspberry Pi patches! As I am writing this post, I am currently building the dependencies for PlexHT on my development board. </p>
<p>I spent some time this week creating an ebuild for PlexHT, and am pleased to say it works on x86-64. It probably has more dependencies than it actually needs, but hey, I'll trim the fat down later. It is as of yet untested on x86, but I bet it works just fine. If you would like to use it, it is available in my plexoverlay at https://github.com/dalehamel/PlexOverlay.</p>
<h1>PlexHT on RPi</h1>
<p>As I mentioned, I am currently building the dependencies for RPi. Even with a cross compiler, I expect this to take at least a day. Then, I will have to do some sort of merge of the cmakelist with the RPi bootstrap/sdk code. I don't expect this to be <strong>too</strong> bad, as most of the legwork is already done, and probably a simple patch to CMakelist will make it quite easy. </p>
<p>One thing I am worried about is X11, though I suspect that the RBP bootstrap will take care of these depndencies. OMXPlayer may need some patches, but my primary concern is getting the GUI to load. If that can be done, than the rest is just a matter of debugging, and, afterall, since XBMC has been shown to work quite well on RPi, it shouldn't be too bad.</p>
<h1>Interested in trying it yourself?</h1>
<ul>
<li>First you'll need an raspberry pi (duh). </li>
<li>Set up an SD Card with Gentoo, and a build server with a cross compiler as described at http://wiki.gentoo.org/wiki/Raspberry_Pi_Quick_Install_Guide</li>
<li>Grab a java8 preview of the jdk, and symlink the contents of the bin directory to /usr/local/bin (needed for building plexht, but no ebuild yet. Will make one soon for my overlay).</li>
<li>Grab my overlay from above, and set PORTDIR_OVERLAY to be /usr/local/portage.</li>
<li>Symlink everything from PlexOverlay into PORTDIR_OVERLAY</li>
<li>emerge plexht, making necessary USE and keyword changes.</li>
</ul>
<p>There are many dependencies, and as of yet plexht won't actually work - it'll just grab all of the dependencies. If/when I get things working, I'll make it as easy as emerging plexht. I also hope to make a raspbmc style installer/distro to make the whole process useable by the novice.</p>
<h1>Sit tight</h1>
<p>I believe that a port of PlexHT to RPi is within our grasp thanks to Tobias at plex for merging upstream XBMC. I can't wait : )</p>
