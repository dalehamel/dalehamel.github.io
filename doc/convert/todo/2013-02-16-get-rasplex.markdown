---
layout: page
status: publish
published: true
title: Get rasplex
author: dale.hamel
author_login: umhameld
author_email: daleha@gmail.com
wordpress_id: 565
wordpress_url: http://blog.srvthe.net/?page_id=565
date: 2013-02-16 21:46:16.000000000 -05:00
categories: []
tags: []
comments:
- id: 421
  author: antranidox
  author_email: antranidox@hotmail.com
  author_url: ''
  date: '2013-03-09 15:28:56 -0500'
  date_gmt: '2013-03-09 15:28:56 -0500'
  content: "if you use this script on a machine with more than 9 disks there is gonna
    be a problem.\r\ni tried this on a Mac Pro and it didn't work out because disk10
    was my sdcard.\r\nbut the script thought it is disks1!:\r\n\r\n\r\nAre you sure
    you want to install rasplex to '/dev/disk10'  [y/N]\r\ny\r\nUnmount of all volumes
    on disk1 was successful\r\n[...] and later:\r\nUnmount of all volumes on disk1
    was successful\r\ni was really lucky that disk1 was busy, because this is my osx
    boot partition...\r\nand yes i really really typed disk10 and not disk1 ;)\r\n\r\nthanks
    \ anyway :)"
- id: 433
  author: dale.hamel
  author_email: daleha@gmail.com
  author_url: ''
  date: '2013-03-10 16:00:48 -0400'
  date_gmt: '2013-03-10 16:00:48 -0400'
  content: |-
    That's a pretty severe bug. I'll look into it.

    That part of the code is based on the raspbmc installer.
- id: 460
  author: reallynotnick
  author_email: reallynotnick@gmail.com
  author_url: ''
  date: '2013-03-13 15:35:27 -0400'
  date_gmt: '2013-03-13 15:35:27 -0400'
  content: I'm using these instructions on OS X and it downloaded the .1.17 version
    instead of the newer .1.24 version. I'm not sure what the problem is.
- id: 468
  author: dale.hamel
  author_email: daleha@gmail.com
  author_url: ''
  date: '2013-03-14 06:10:23 -0400'
  date_gmt: '2013-03-14 06:10:23 -0400'
  content: Did you try using the -b flag?
---
This page is deprecated, check out our new home at <a href="http://rasplex.com">rasplex.com</a>

The equivalent page is <a href="http://rasplex.com/get-started/download-rasplex.html">here</a>
