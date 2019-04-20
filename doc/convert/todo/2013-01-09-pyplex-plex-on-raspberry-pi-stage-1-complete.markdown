---
layout: post
status: publish
published: true
title: Pyplex, Plex On Raspberry Pi - Stage 1 complete
author: dale.hamel
author_login: umhameld
author_email: daleha@gmail.com
wordpress_id: 395
wordpress_url: https://blog.srvthe.net/?p=395
date: 2013-01-09 01:42:02.000000000 -05:00
categories:
- Uncategorized
tags: []
comments:
- id: 52
  author: Michael Drozdowski
  author_email: michael.drozdowski@gmail.com
  author_url: ''
  date: '2013-01-12 10:12:25 -0500'
  date_gmt: '2013-01-12 10:12:25 -0500'
  content: Pretty excited by this project! Good luck!
- id: 53
  author: Jan Tore Bøe
  author_email: jan@boee.org
  author_url: ''
  date: '2013-01-13 11:04:08 -0500'
  date_gmt: '2013-01-13 11:04:08 -0500'
  content: "Hello,\r\nVery nice job with pyplex, but I am having problems with the
    latest clone from github, when giving credentials for myplex I get the following
    error:\r\n\r\nTraceback (most recent call last):\r\n  File \"/usr/local/bin/pyplex\",
    line 29, in \r\n    storeAuthdata( args.user, args.password)\r\n  File \"/usr/local/bin/pyplex\",
    line 19, in storeAuthdata\r\n    storeAuthentication(user, password)\r\nNameError:
    global name 'storeAuthentication' is not defined\r\n\r\nSeems to me that the storeAuthentication
    module has not been imported.\r\n\r\nRunning on the latest raspian."
- id: 57
  author: Mumbles1
  author_email: justin_turnage@yahoo.com
  author_url: ''
  date: '2013-01-18 05:08:32 -0500'
  date_gmt: '2013-01-18 05:08:32 -0500'
  content: I just ordered a RBP a couple days ago and this is exactly what I've been
    looking for to run on it!! I can't wait to try this!
- id: 118
  author: Rushingjs
  author_email: Rushingjs@gmail.com
  author_url: ''
  date: '2013-02-10 19:22:51 -0500'
  date_gmt: '2013-02-10 19:22:51 -0500'
  content: Keep up the good work! Just ordered a RBP a few days ago myself and it
    would be awesome to have a PLEX clilent on it!
---
<h1>Good news everyone!</h1>

<p>I've got a stable beta of a Plex player for the RPi. I'm bundling up a complete distro and installer for it so that it is average-joe friendly. Using the XBMC Port of OMXPlayer, along with twisted matrix DirectFB, and SDL,and thanks to some good friends on github who created the initial infrastructure, there is now an avahi (bonjour) discoverable plex frontend service running on the RPi.</p>

<p>You can find the code at https://github.com/dalehamel/pyplex.</p>

<p>Everything you will need to install it on gentoo is in my overlay at https://github.com/dalehamel/PlexOverlay</p>

<p>It should also work on raspbian, but you will need to install the dependencies yourself (they are documented in the ebuilds and shouldn't be too hard to pull out.</p>

<h1>How to build (Gentoo)</h1>

<ul>
<li>Set up a distcc/crossdev environment (unless you are REALLY patient...) https://wiki.gentoo.org/wiki/Raspberry<em>Pi</em>Quick<em>Install</em>Guide#Cross_building</li>
<li>Get the latest firmware for your RPi with https://github.com/Hexxeh/rpi-update</li>
<li>Setup the config.txt file as described in the pyplex documentation</li>
<li>Setup the PlexOverlay as described in the pyplex readme</li>
<li>emerge pyplex</li>
</ul>

<h1>Using pyplex</h1>

<p>You can set it up as a daemon (i'll be adding one for openrc to the overlay soon), or just run it manually with "pyplex".</p>

<p>You can then control it from your iPhone or Android running the plexapp, or using plex web (but can only start stuff - no playback controls).</p>

<p>Currently, the following are supported:</p>

<ul>
<li>Starting media</li>
<li>Pausing</li>
<li>Fast-forward, rewind (no jumping or seeking)</li>
<li>Stopping</li>
</ul>

<p>It may be possible to add seek/resume functionality, but right now this is non-trivial since it doesn't seem like the backend supports it.</p>

<h1>What's next?</h1>

<p>For pyplex, I would like to make a simple web form for settin up myplex so that users can easily set it up. The goal should be that the end user will never need to touch the linux console to use it.</p>

<p>I would also like to make an installer for pyplex, similar to raspbmc. I may also put the packages that I have built up in a repo to save people time.</p>

<h1>Plex-linux</h1>

<p>I haven't given up on a native plex client for raspberry pi. I may be starting an Indygogo to fund the porting effort, but I will use the pyplex client as an incentive for people to donate so that they at least have a working client at the end of the day.</p>
