---
title: Rasplex 0 1 Rc3 Released Feature Freeze In Effect Procedure Changes
layout: post
tags: []
---


RC3 is up, hopefully with some new features
===========================================

-   Attempting for OOB CEC (my white whale apparently)
-   Ripped out GLEW, as it wasn't needed
-   added LIRC with support for what should be **most** remotes supported by lirc
-   added rasplex-updater, and other helpful scripts (such as pastbin and pastelog)
-   updated config.txt based off of raspbmc

Lets get stable
===============

rc3 should be the last image that will add features for a while, from now on the focus is going to be on improving stability and reducing crashes. I'm going to be spending some time refactoring and cleaning up patches, and trying to get automated builds working. We've been moving really fast lately, and I think it's time to catch our breath, and focus on getting a new, shiny, stable release out. So, to this end, a feature freeze is now in effect - only bug fixes and cleanups for a while. This will involve profiling the gui to see where it spends its time, and trying to figure out how to stop random crashes.

Procedure changes
=================

From now on, the focus will be on being able to update without reflashing. I have created a rasplex-update script, which should be able to be used to accomplish this. Hopefully, this will enable more rapid testing of changes. I've also added a "pastelog" script, that will upload a log file, and return the pastebin url. I want to quell the rumors that there are "secret builds" or "invite only builds". There are only two types of builds: stable and unstable, which are effectively pointers to specific versions of rasplex. Stable builds can always be found at [http://rasplex.srvthe.net/rasplex-stable.img.zip](http://rasplex.srvthe.net/rasplex-unstable.img.zip) (currently this is rc1). The ideal with stable builds is that the should be a mostly releasable project. Unstable builds can always be found at [http://rasplex.srvthe.net/rasplex-unstable.img.zip](http://rasplex.srvthe.net/rasplex-unstable.img.zip) (which is what is currently rc3) Unstable builds are for the adventurous folks who want to help improve rasplex be working off of the bleeding edge builds. You can expect unstable builds to be updated almost daily, but we will only update stable when we are really pleased with the quality.  

OpenELEC, Raspbian in the works
===============================

We now have devs actively working to port to these platforms. I expect that raspbian will be ready this week, and plan to release all builds in parallel for both the existing rasplex (gentoo based) and the raspbian based rasplex. OpenELEC is looking to be more challenging, but once it is ready we will also release in parallel with it. So, there should be 3 flavors of rasplex available : ) This is why I am focusing on the build procedure this week. I want to set up automatic nightlies, so that we don't end up with 3 divergent projects. Thanks everyone, and enjoy!
