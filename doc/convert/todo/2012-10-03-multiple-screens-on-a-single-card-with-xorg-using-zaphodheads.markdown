---
layout: post
status: publish
published: true
title: Multiple screens on a single card with Xorg using ZaphodHeads
author: dale.hamel
author_login: umhameld
author_email: daleha@gmail.com
wordpress_id: 382
wordpress_url: https://blog.srvthe.net/?p=382
date: 2012-10-03 02:04:56.000000000 -04:00
categories:
- Uncategorized
tags: []
comments:
- id: 26
  author: Eric
  author_email: iamed2@gmail.com
  author_url: ''
  date: '2012-10-03 02:15:40 -0400'
  date_gmt: '2012-10-03 02:15:40 -0400'
  content: I could see this being useful to me someday! Thanks.
- id: 2944
  author: download titanfall
  author_email: merissastorm@bigstring.com
  author_url: https://www.titanfallcdkeys.com/
  date: '2014-02-27 11:08:33 -0500'
  date_gmt: '2014-02-27 11:08:33 -0500'
  content: "Hi there! Do you know if they make any plugins to protect against hackers?\r\nI'm
    kinda paranoid about losing everything I've worked hard on.\r\nAny recommendations?\r\n\r\nReview
    my blog <a href=\"https://www.titanfallcdkeys.com/\" rel=\"nofollow\">download
    titanfall</a>"
---
<h1>X11 Is a pain in the ass</h1>
<p>Configuring X11 is often seen to be one of the most difficult and annoying things about using Linux.</p>
<p>Many distributions handle this automatically, and a basic configuration is actually handled pretty well by simply running "Xorg -configure", but for more complicated setups, it is often quite a pain in the ass.</p>
<p>Nvidia and Ati include their own configuration utilities (nvidia-settings and amdccle), but there are no such tools for the open source alternatives to these drivers, radeon an nouveau.</p>
<p>In particular, configuring multiple displays is a pain, and the documentation is extremely poor for configuring multiple displays on a single card.</p>
<h1>A brief overview of Xorg</h1>
<p>X11 is the windowing system used by Linux. There is a central configuration file, xorg.conf, that is a source of much frustration across the linux community. This is because xorg.conf is a flatfile, that describes the setup of the X11 system, including all input and output devices, the drivers to use for them, and their BusIds where necessary. Make one mistake, and you could find yourself unable to load a graphical environment at all. Debugging X11 server problems is a huge pain in the butt, and the documentation on how to set thing sup is quite poor.</p>
<p>Specifically for displays, you describe your monitors, which are part of screens, and the device that controls that screen. A single screen may span several monitors, or each monitor may have it's own screen. Often, it is desirable to have separate screens for each monitor, so that you may manage the windows for either one independently from the other (perhaps even using a different window manager altogether!). </p>
<h1>Multiple displays</h1>
<p>Typically, it is quite simple to have a single device (a PCI device, such as a graphics card) control a single screen. If you have two graphics cards, you can control two screens. This is often useful when you have a built-in graphics chip on the motherboard or on you processor (all SandyBridge or later intel CPUs have this), in concert with with a PCI graphics card from either ATI or nVidia.</p>
<p>However, many laptops, netbooks, and smaller computers these days have only the integrated graphics, but have multiple outputs through the motherboard. For instance, most Ultrabooks have at least an HDMI out, in addition to their basic display out. It is desirable to be able to control a second screen with the HDMI out, but there is a catch; you only have one device, making it extremely difficult to configure in xorg.</p>
<h1>ZaphodHeads</h1>
<p>Most graphics cards support something called "ZaphodHeads", which is a reference to the Hitchhiker's Guide to the Galaxy. This allows you to have multiple devices in your xorg.conf that map to the same PCI device. You can have as many devices as you have outputs for! For details on how to do this, you can see the section that I wrote for the gentoo wiki here: https://en.gentoo-wiki.com/wiki/X.Org/Dual_Monitors#Single_graphics_card.2C_Multiple_X_screens_with_ZaphodHeads. Note that while this is intended for intel cards, it works equally well with ATI and nVidia cards.</p>
