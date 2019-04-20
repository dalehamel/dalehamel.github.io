---
layout: post
status: publish
published: true
title: Rasplex-0.1-rc3 released, feature freeze in effect, procedure changes
author: dale.hamel
author_login: umhameld
author_email: daleha@gmail.com
wordpress_id: 540
wordpress_url: https://blog.srvthe.net/?p=540
date: 2013-02-11 05:42:26.000000000 -05:00
categories:
- Uncategorized
tags: []
comments:
- id: 120
  author: blackbay
  author_email: blackbay@hotmail.com
  author_url: ''
  date: '2013-02-11 11:21:58 -0500'
  date_gmt: '2013-02-11 11:21:58 -0500'
  content: Awesome progress on the releases Dale, unfortunately in RC3 auto start
    doesn't work, there's still the assertion errors and the Plex iOS app remote doesn't
    work at all.
- id: 127
  author: dale.hamel
  author_email: daleha@gmail.com
  author_url: ''
  date: '2013-02-12 02:28:44 -0500'
  date_gmt: '2013-02-12 02:28:44 -0500'
  content: |-
    The assertions are a known issue with PHT, it happens on ubuntu as well.

    As for autostart, I'm aware of this issue.

    As for iOS, it's working in rc4, but it's been dodgy from the beginning. If you notice it doesn't work, try killing the iOS app and restarting it. If you find more bugs, please report them on https://trello.com/board/plex-on-raspberry-pi/510c4d34e1d17df66c00092a instead of here, so that we can keep them on the radar.
---
<h1>RC3 is up, hopefully with some new features</h1>
<ul>
	<li>Attempting for OOB CEC (my white whale apparently)</li>
	<li>Ripped out GLEW, as it wasn't needed</li>
	<li>added LIRC with support for what should be <strong>most</strong> remotes supported by lirc</li>
	<li>added rasplex-updater, and other helpful scripts (such as pastbin and pastelog)</li>
	<li>updated config.txt based off of raspbmc</li>
</ul>
<h1>Lets get stable</h1>
rc3 should be the last image that will add features for a while, from now on the focus is going to be on improving stability and reducing crashes. I'm going to be spending some time refactoring and cleaning up patches, and trying to get automated builds working. We've been moving really fast lately, and I think it's time to catch our breath, and focus on getting a new, shiny, stable release out. So, to this end, a feature freeze is now in effect - only bug fixes and cleanups for a while. This will involve profiling the gui to see where it spends its time, and trying to figure out how to stop random crashes.
<h1>Procedure changes</h1>
From now on, the focus will be on being able to update without reflashing. I have created a rasplex-update script, which should be able to be used to accomplish this. Hopefully, this will enable more rapid testing of changes. I've also added a "pastelog" script, that will upload a log file, and return the pastebin url.

I want to quell the rumors that there are "secret builds" or "invite only builds". There are only two types of builds: stable and unstable, which are effectively pointers to specific versions of rasplex.

Stable builds can always be found at <a href="https://rasplex.srvthe.net/rasplex-unstable.img.zip">https://rasplex.srvthe.net/rasplex-stable.img.zip</a> (currently this is rc1). The ideal with stable builds is that the should be a mostly releasable project.

Unstable builds can always be found at <a href="https://rasplex.srvthe.net/rasplex-unstable.img.zip">https://rasplex.srvthe.net/rasplex-unstable.img.zip</a> (which is what is currently rc3) Unstable builds are for the adventurous folks who want to help improve rasplex be working off of the bleeding edge builds.

You can expect unstable builds to be updated almost daily, but we will only update stable when we are really pleased with the quality.

&nbsp;
<h1>OpenELEC, Raspbian in the works</h1>
We now have devs actively working to port to these platforms. I expect that raspbian will be ready this week, and plan to release all builds in parallel for both the existing rasplex (gentoo based) and the raspbian based rasplex. OpenELEC is looking to be more challenging, but once it is ready we will also release in parallel with it. So, there should be 3 flavors of rasplex available : )

This is why I am focusing on the build procedure this week. I want to set up automatic nightlies, so that we don't end up with 3 divergent projects.

Thanks everyone, and enjoy!
