---
title: Multiple Screens On A Single Card With Xorg Using Zaphodheads
modified: 2012-10-03
layout: post
redirect_from:
  - /archives/382/
  - /blog/?p=382/
tags: []
---


X11 Is a pain in the ass
========================

Configuring X11 is often seen to be one of the most difficult and annoying things about using Linux.

Many distributions handle this automatically, and a basic configuration is actually handled pretty well by simply running "Xorg -configure", but for more complicated setups, it is often quite a pain in the ass.

Nvidia and Ati include their own configuration utilities (nvidia-settings and amdccle), but there are no such tools for the open source alternatives to these drivers, radeon an nouveau.

In particular, configuring multiple displays is a pain, and the documentation is extremely poor for configuring multiple displays on a single card.

A brief overview of Xorg
========================

X11 is the windowing system used by Linux. There is a central configuration file, xorg.conf, that is a source of much frustration across the linux community. This is because xorg.conf is a flatfile, that describes the setup of the X11 system, including all input and output devices, the drivers to use for them, and their BusIds where necessary. Make one mistake, and you could find yourself unable to load a graphical environment at all. Debugging X11 server problems is a huge pain in the butt, and the documentation on how to set thing sup is quite poor.

Specifically for displays, you describe your monitors, which are part of screens, and the device that controls that screen. A single screen may span several monitors, or each monitor may have it's own screen. Often, it is desirable to have separate screens for each monitor, so that you may manage the windows for either one independently from the other (perhaps even using a different window manager altogether!).

Multiple displays
=================

Typically, it is quite simple to have a single device (a PCI device, such as a graphics card) control a single screen. If you have two graphics cards, you can control two screens. This is often useful when you have a built-in graphics chip on the motherboard or on you processor (all SandyBridge or later intel CPUs have this), in concert with with a PCI graphics card from either ATI or nVidia.

However, many laptops, netbooks, and smaller computers these days have only the integrated graphics, but have multiple outputs through the motherboard. For instance, most Ultrabooks have at least an HDMI out, in addition to their basic display out. It is desirable to be able to control a second screen with the HDMI out, but there is a catch; you only have one device, making it extremely difficult to configure in xorg.

ZaphodHeads
===========

Most graphics cards support something called "ZaphodHeads", which is a reference to the Hitchhiker's Guide to the Galaxy. This allows you to have multiple devices in your xorg.conf that map to the same PCI device. You can have as many devices as you have outputs for! For details on how to do this, you can see the section that I wrote for the gentoo wiki here: https://en.gentoo-wiki.com/wiki/X.Org/Dual\_Monitors\#Single\_graphics\_card.2C\_Multiple\_X\_screens\_with\_ZaphodHeads. Note that while this is intended for intel cards, it works equally well with ATI and nVidia cards.
