---
layout: post
status: publish
published: true
title: Plex on Raspberry Pi
author: dale.hamel
author_login: umhameld
author_email: daleha@gmail.com
wordpress_id: 377
wordpress_url: https://blog.srvthe.net/?p=377
date: 2012-09-22 07:05:43.000000000 -04:00
categories:
- Uncategorized
tags: []
comments:
- id: 23
  author: Patrik Dahlström
  author_email: risca88@gmail.com
  author_url: ''
  date: '2012-09-22 12:46:44 -0400'
  date_gmt: '2012-09-22 12:46:44 -0400'
  content: "Oh, it's so exciting! And ARM isn't that hard to cross-compile for, not
    nowadays when there are so many popular ARM devices. Ever tried some obscure hardware
    found in some routers?\r\nGentoo is pretty good at it though :)"
- id: 24
  author: Cortny Adair Hitch on Facebook
  author_email: 1310638091@facebook.com
  author_url: https://www.facebook.com/profile.php?id=1310638091
  date: '2012-09-22 17:59:20 -0400'
  date_gmt: '2012-09-22 17:59:20 -0400'
  content: you so smart :)
- id: 25
  author: umhameld
  author_email: daleha@gmail.com
  author_url: ''
  date: '2012-09-22 18:40:59 -0400'
  date_gmt: '2012-09-22 18:40:59 -0400'
  content: "Unfortunately, It doesn't look like this will be possible for now.\r\n\r\nI
    was able to get pmc to build successfully, but it is giving segmentation faults.
    \r\n\r\nI have a feeling that even if I do get it to run, it won't be able to
    playback video because there is no accelerated graphics card driver for the r-pi
    yet... maybe soon."
- id: 37
  author: m4f1050
  author_email: m4f1050@hotmail.com
  author_url: ''
  date: '2012-11-27 15:51:47 -0500'
  date_gmt: '2012-11-27 15:51:47 -0500'
  content: Just curious, how are they playing XBMC high definition on the Raspberry
    PI?
- id: 41
  author: harald
  author_email: haraldb.kleppe@gmail.com
  author_url: https://rald.nl
  date: '2012-12-27 10:16:21 -0500'
  date_gmt: '2012-12-27 10:16:21 -0500'
  content: Any updates on the situation here? I have the impression from the community
    that it has been quite a lot of progress with the drivers etc, and I suppose I'm
    not alone when I say I would love to see this working :)
- id: 42
  author: Rik
  author_email: knakel2@gmail.com
  author_url: ''
  date: '2013-01-03 15:41:49 -0500'
  date_gmt: '2013-01-03 15:41:49 -0500'
  content: maybe you could use OMXplayer, it's GPU accelerated. and just use an api
    to pause, play and that sort of things.
- id: 43
  author: dale.hamel
  author_email: daleha@gmail.com
  author_url: ''
  date: '2013-01-04 07:51:39 -0500'
  date_gmt: '2013-01-04 07:51:39 -0500'
  content: "Success! I have a working version of a barebones client for PMC on the
    RPi. It requires an iPhone or Android device to control it, but supports streaming
    from both local and remote servers. \r\n\r\nI'll be starting work on a complete
    port of plex-linux to the RPi once I finish stabilizing this prototype and bundling
    it up. Will be making a blog post for this once it's done."
- id: 44
  author: hashi
  author_email: mrhashipashi@hotmail.com
  author_url: ''
  date: '2013-01-06 11:43:54 -0500'
  date_gmt: '2013-01-06 11:43:54 -0500'
  content: Nice work! Looking forward to try it out.
- id: 63
  author: michael
  author_email: michael@started2002.at
  author_url: ''
  date: '2013-01-24 23:27:58 -0500'
  date_gmt: '2013-01-24 23:27:58 -0500'
  content: sounds really great! looking forward to your HOWO
- id: 77
  author: pinak.vashi
  author_email: pinakvashi@gmail.com
  author_url: ''
  date: '2013-02-01 03:41:36 -0500'
  date_gmt: '2013-02-01 03:41:36 -0500'
  content: will it be possible for you to share the source or binaries to test?
- id: 78
  author: pinak.vashi
  author_email: pinakvashi@gmail.com
  author_url: ''
  date: '2013-02-01 03:47:23 -0500'
  date_gmt: '2013-02-01 03:47:23 -0500'
  content: sorry for being dump earlier, I will give it a try from other posts.
- id: 90
  author: Ben
  author_email: dexterfishborne@gmail.com
  author_url: ''
  date: '2013-02-05 16:08:44 -0500'
  date_gmt: '2013-02-05 16:08:44 -0500'
  content: "https://launchpad.net/~plexapp/+archive/plexht\r\n\r\npmc -&gt; officially
    supported pht on linux! (12.04 &amp; 12.10 in the works now..)"
- id: 131
  author: Bimmer Guy
  author_email: sudhindra.madan@gmail.com
  author_url: ''
  date: '2013-02-12 22:15:59 -0500'
  date_gmt: '2013-02-12 22:15:59 -0500'
  content: Considering that Plex is a port of XBMC, and that the plex player source
    is available on github, won't the instructions to complile XBMC on Raspbian, apply
    to Plex HT as well ?
- id: 140
  author: dale.hamel
  author_email: daleha@gmail.com
  author_url: ''
  date: '2013-02-15 01:30:20 -0500'
  date_gmt: '2013-02-15 01:30:20 -0500'
  content: It's not quite so easy, Plex uses CMake and XBMC uses automake. I had to
    reverse engineer the automake configuration to make a CMake configuration.
---
<h1>Is it even possible?</h1>
<p>I have no idea. But I sure hope so - I've spent a week on it.</p>
<h1>A little background</h1>
<p>I have always had an interest in HTPCs (Home Theatre Personal Computers). My first experience with them was a Microsoft Xbox 1.0. I contend that, this was and perhaps always will be the best product that Microsoft has ever produced. It had one major problem though - the software on it was crap. It was intended as a gaming platform, which gives it ample hardware capability to decode video and do fancy home theatre stuff.</p>
<p>So, the open source community hacked the Xbox, and created "XBMC", Xbox Media Center. The project was very successful, and I used it from near its inception. The system that I have, I have been using for 7 years. </p>
<p>XBMC grew and evolved. Support was added to not only playback files, but to learn about them via internet sources like IMDB and TVDB, automatically detecting what the content of your media was. This allows for nifty things like searching by genre, actor, etc. </p>
<p>The Raspberry pi is a tiny, cheap (40 dollar!) computer that can playback HD video. There are several active projects that have XBMC working on Raspberry Pis (raspbmc, Xbian, OpenElec), and it is pretty easy to get an image on an SD card that will get you a lot of bang for your buck out of this cheap little board. The Raspberry pi (r-pi) is somewhat difficult to develop for though, as it runs an Armv6j processor that is different that conventional desktop processors, which most Linux distros target, and the hardware is very constraining for such demanding applications, so everything must be extremely efficient to work properly and reliably.</p>
<h1>Plex</h1>
<p>The XBMC project was later forked to create the project "Plex" by one of the original XBMC developers. Plex still uses XBMC for much of what it does, but it has diverged sufficiently that it is effectively another project. Plex breaks XBMCs functionality into a client-server architecture. This means that you can have a single, beefier machine with a lot of memory and storage decoding and streaming content to light-weight clients - even smartphones! </p>
<p>Plex is broken into two components, Plex Media Server, which is a proprietary backend that handles the media decoding, music, tv show, and movie libraries, as well as file recognition and advanced metadata. By itself, Plex Media Server doesn't do much. But with a client, it allows for easily streaming and browsing media in a way that is comparable to commercial services like Netflix. Plex can stream to playstation 3's smartphones, Xbox 360s, any DLNA compliant device, and of course, other PCs.</p>
<p>Plex has an official client, Plex Media Center that runs on PC and Mac. It provides the maximum Plex experience, and even plays intro theme songs while browsing series -lots of nice features that just make the whole media experience enjoyable, while keeping everything seamlessly organized and easy to browse or search.</p>
<p>Unfortunately, there is no official build of the Linux client of plex, though there is a release of the media server in binary form.</p>
<h1>Plex on Linux</h1>
<p>Just because there is no build doesn't mean you can't build it! Plex-Linux is available on github, and can be compiled with the appropriate savvy and a lot of patience. Plex, due to its complex nature, suffers from a great deal of dependencies, which makes building it on many platforms complete hell, as the versions of external libraries that it is compiled against will often differ (substantially!) from the system libraries, making linking the executable impossible due to version incompatibilities. To combat this, Plex-linux ships a <strong>large</strong> number of dependencies, making the process easier.</p>
<h1>Plex on Gentoo</h1>
<p>I've had a great deal of success getting Plex Media Center (PMC) to compile on Gentoo. It was very easy on my 64 bit i5, I only had to patch some of the headers for libpng support. The same patch applied equally well to x86. Which got me to thinking... what about the Rpi? </p>
<h1>Plexberry</h1>
<p>As I write this article, I am currently compiling Plex on the r-pi. It has required a few work-arounds, but I think that I can automate the process if it turns out to perform well enough. I have created a package repository, and if everything works as I plan (right now I am worried about how video decoding is going to work without a proper hardware accelerated xorg driver... but I am reassured by projects like raspbmc...).</p>
<p>If things work out, I will create an ebuild for Plex on gentoo, and host it in my own portage overlay. I will also host the binary packages required to get everything to build and work properly for each platform, and hopefuly be able to make rpms and debs from these so redhat and debian users can enjoy plex as well.</p>
<p>Of course, the gem I am after here is Plex on the r-pi, which I have decided to call th plexberry.</p>
<p>Stay tuned folks, it's almost done compiling...</p>
