---
title: Plexberry
modified: 2012-09-22
layout: post
redirect_from:
  -/archives/377
  -/blog/?p=377
tags: []
---


Is it even possible?
====================

I have no idea. But I sure hope so - I've spent a week on it.

A little background
===================

I have always had an interest in HTPCs (Home Theatre Personal Computers). My first experience with them was a Microsoft Xbox 1.0. I contend that, this was and perhaps always will be the best product that Microsoft has ever produced. It had one major problem though - the software on it was crap. It was intended as a gaming platform, which gives it ample hardware capability to decode video and do fancy home theatre stuff.

So, the open source community hacked the Xbox, and created "XBMC", Xbox Media Center. The project was very successful, and I used it from near its inception. The system that I have, I have been using for 7 years.

XBMC grew and evolved. Support was added to not only playback files, but to learn about them via internet sources like IMDB and TVDB, automatically detecting what the content of your media was. This allows for nifty things like searching by genre, actor, etc.

The Raspberry pi is a tiny, cheap (40 dollar!) computer that can playback HD video. There are several active projects that have XBMC working on Raspberry Pis (raspbmc, Xbian, OpenElec), and it is pretty easy to get an image on an SD card that will get you a lot of bang for your buck out of this cheap little board. The Raspberry pi (r-pi) is somewhat difficult to develop for though, as it runs an Armv6j processor that is different that conventional desktop processors, which most Linux distros target, and the hardware is very constraining for such demanding applications, so everything must be extremely efficient to work properly and reliably.

Plex
====

The XBMC project was later forked to create the project "Plex" by one of the original XBMC developers. Plex still uses XBMC for much of what it does, but it has diverged sufficiently that it is effectively another project. Plex breaks XBMCs functionality into a client-server architecture. This means that you can have a single, beefier machine with a lot of memory and storage decoding and streaming content to light-weight clients - even smartphones!

Plex is broken into two components, Plex Media Server, which is a proprietary backend that handles the media decoding, music, tv show, and movie libraries, as well as file recognition and advanced metadata. By itself, Plex Media Server doesn't do much. But with a client, it allows for easily streaming and browsing media in a way that is comparable to commercial services like Netflix. Plex can stream to playstation 3's smartphones, Xbox 360s, any DLNA compliant device, and of course, other PCs.

Plex has an official client, Plex Media Center that runs on PC and Mac. It provides the maximum Plex experience, and even plays intro theme songs while browsing series -lots of nice features that just make the whole media experience enjoyable, while keeping everything seamlessly organized and easy to browse or search.

Unfortunately, there is no official build of the Linux client of plex, though there is a release of the media server in binary form.

Plex on Linux
=============

Just because there is no build doesn't mean you can't build it! Plex-Linux is available on github, and can be compiled with the appropriate savvy and a lot of patience. Plex, due to its complex nature, suffers from a great deal of dependencies, which makes building it on many platforms complete hell, as the versions of external libraries that it is compiled against will often differ (substantially!) from the system libraries, making linking the executable impossible due to version incompatibilities. To combat this, Plex-linux ships a **large** number of dependencies, making the process easier.

Plex on Gentoo
==============

I've had a great deal of success getting Plex Media Center (PMC) to compile on Gentoo. It was very easy on my 64 bit i5, I only had to patch some of the headers for libpng support. The same patch applied equally well to x86. Which got me to thinking... what about the Rpi?

Plexberry
=========

As I write this article, I am currently compiling Plex on the r-pi. It has required a few work-arounds, but I think that I can automate the process if it turns out to perform well enough. I have created a package repository, and if everything works as I plan (right now I am worried about how video decoding is going to work without a proper hardware accelerated xorg driver... but I am reassured by projects like raspbmc...).

If things work out, I will create an ebuild for Plex on gentoo, and host it in my own portage overlay. I will also host the binary packages required to get everything to build and work properly for each platform, and hopefuly be able to make rpms and debs from these so redhat and debian users can enjoy plex as well.

Of course, the gem I am after here is Plex on the r-pi, which I have decided to call th plexberry.

Stay tuned folks, it's almost done compiling...
