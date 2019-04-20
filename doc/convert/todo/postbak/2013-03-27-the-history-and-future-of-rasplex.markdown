---
title: title
layout: post
tags: []
---


tl;dr
=====

RasPlex was born from my love for XBMC, and wouldn't have been possible without the [OpenELEC](https://openelec.tv/), [Xbian](https://xbian.org/), and [Raspbmc](https://www.raspbmc.com/) projects. I call for us all to work together, share our work, and improve one another to provide the best possible UX, and provide stronger platforms than we would separately, reinventing each other's work. If you agree, please take to twitter, tweeting the @SamNazarko, @Koenkk, @raspbmc, and @OpenELEC with \#htpcunite.

It all began
============

8 years ago when I first ran XBMC on my Xbox 1. I loved it, and had been using various modifications (including MythTV, and a few other little tweaks) of the setup quite happily up until this summer, when a friend of mine introduced me to Plex.

Plex BLEW me away
=================

I easily converted my existing media collection (well organized, making it super easy for Plex to assimilate), and built what I consider to be a system that is better than Netflix or a conventional cable service. With features like

-   Easily keeping my media organized in an object oriented way, so I can browse by MOVIE and not by obscure file name
-   Genre, theme based categorization, IMDB classification and description
-   The ability to stop on one frontend, resume on another functionality provided by Client/Server arch
-   On deck/ recently added, media queue
-   iOS / android integration, ease of use, ease of setup

When I envisioned of the setup I was trying to make with XBMC, it was Plex. It seemed to me like Plex had the power and proven reliability of XBMC, with a specific focus towards marketability and UX.

Then I got a Raspberry Pi
=========================

I discovered that XBMC was running on the Rasbperry Pi, and had to get one. It blew me away that the Raspberry Pi could support my favorite HTPC system, even better than the (much larger) Xbox 1 could.

But it wasn't good enough
=========================

I tried [Rampbmc](https://www.raspbmc.com/), which is a great project and makes XBMC remarkably accessible on the Raspberry Pi thanks to the works of Sam Nazarko. As a platform for XBMC, I loved it. But I missed the Plex features that I loved so much.

So the work on RasPlex began
============================

Being the arrogant, cocky guy that I am, I figured that I would just port Plex to the Raspberry Pi. They already had XBMC building, how hard could it be?

plex-linux by gewalker
----------------------

I had already been using plex-linux for a while on my gentoo setup, and was familiar with building plex on linux. I tried to build plex-linux on RPi back in September 2012, and got pretty far pretty quickly.

But there were major issues
---------------------------

I eventually compiled an executable that didn't run, just segfaulted. I investigated, and discovered that it was because the magic that makes [Raspbmc](https://www.raspbmc.com/), [OpenELEC](https://openelec.tv/), and [XBian](https://xbian.org/) work was missing - I wasn't properly linking the VideoCore stuff, and was missing ALL of the RPi XBMC patches.

All that work for nothing!
==========================

In November, I all but abandoned RasPlex, as the task to port all that work into such a diverged tree was ominous. I reluctantly abandoned my dreams of Plex on the Raspberry Pi, and focused on exams and finishing my degree.

Exams are over, I'm done school
===============================

Once crunch time was over, I picked up RasPlex again. I started by deleting everything I had, to take a fresh mind at it. Work was slow, I was still compiling everything on the Pi (with the help of distcc), which meant that it took several days to build the dependencies on Gentoo - the system I was using.

Help from the Gods
==================

Divine action intervened. Tobias Hieta (a Plex god - the maintainer of plex-home-theater) descended from the heavens, and released the newly revamped plex-home-theater source publicly on github in January.

RasPlex is born
---------------

This was the piece of the puzzle that made everything possible. I used my knowledge of building plex-linux (which was basically just XBMC) on the Pi to reverse engineer the XBMC raspberry pi build process into the up-to-date, patched codebase. I wrote the PlatformRPi.cmake file, and applied a few patches where needed. Rasplex booted for the first time shortly after, and I'll never forget my glee - 4 months of work, giving up once, and here it was before my eyes - I was the first person to see RasPlex run.

Well, \*running\* is the wrong word
-----------------------------------

It was clear that there was lots of work to be done. The code was incredibly unstable, prone to crashing, and the GUI Was completely useless for day-to-day use.

The community is born
=====================

I started the chatroom, and LongChair showed up (first person - there from the start!). Many then came (it's true - if you build it, they will come). The trello took off, and the RasPlex hardcores weelkin and a\_wein showed up on the scene. ElMassman contributed lots of GUI tweaks, and helped the project take it's first steps.

Gentoo port dies
================

Weelkin successfully convinced me, much to my chagrin, to abandon the gentoo port and go all out [OpenELEC](https://openelec.tv/). He was right. We got so much for free, and our builds that used to take 2 hours were down to 5 minutes. Rapid development was finally enabled.

OpenELEC growing pains
======================

The first really stable [OpenELEC](https://openelec.tv/) was 0.1.17, which was a landmark build, including Wifi and autoupdate. We pushed through it, and did some more merges and sped things up a bit.

RasPlex.com launches
====================

Dale's scheme to release the rasplex website on Pi day is ignored by most of the world. Until the day after Pi day, when there is a media flurry resulting from engadget and Elan's blog. Over night, the user base of RasPlex explodes.

GUI installers and stability fixes
==================================

The GUI installers are released around the same time as a very stable, polished build 0.1.30 (much better than the 0.1.27 available at launch day).

Here way are
============

And this brings us to today. It's been a wild ride! About 2 months since the birth of RasPlex, we have a stable(ish) build. There is still lots of work to do, including some major caching fixes that are finally underway.

The future
==========

RasPlex plans to deliver on it's code of ethics:

-   Users above all else.
-   By the community, for the community.
-   Relationships over egos.
-   Everything must be FOSS.
-   Collaboration with other HTPC projects over competition.

We are focused on collaborating with the existing HTPC projects, [Xbian](https://xbian.org/), [OpenELEC](https://openelec.tv/), and [Raspbmc](https://www.raspbmc.com/). We have offered our GUI installer to each of them, and hope that their users can benefit from it as much as ours do, so that we can work together to improve it. Users first. There have been some ego issues with these XBMC projects, and we want to put all of that in the past. We work better together than we do in competition. While competition is healthy and necessary, the goal should be to share our work, rather than reinvent the wheel over and over.

HTPC Unite
==========

I call to all developers of XBMC for Raspberry pi, be you core devs, or devs for [OpenELEC](https://openelec.tv/), [Raspbmc](https://www.raspbmc.com/), or [XBian](https://xbian.org/) to join us! This is the true spirit of Open source. Together, we can destroy proprietary platforms like AppleTV and Roku. Divided, we are just rogue hobbyists projects reinventing each others works. RasPlex has benefited from all of these projects, and is happy to give back in any way it can. We will be releasing [Raspbian](https://openelec.tv/) ports soon, and plan to borrow on the work of [Raspbmc](https://www.raspbmc.com/) and [XBian](https://xbian.org/). All of our work will be publicly available, and we hope that we are able to improve these projects as much as [OpenELEC](https://openelec.tv/) has improved us.

Take frodo to the users
=======================

How fitting it is that we need to work together to take frodo (the latest release of XBMC, which powers all of these projects) to the users, as Frodo of Lord Of the Rings set out to take the ring to Mordor. Elrond convened a council of Elves, Dwarves, and Humans to meet this end. They didn't all get along at first, but they learned to. And together, they got it done.
