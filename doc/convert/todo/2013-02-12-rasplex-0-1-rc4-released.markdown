---
layout: post
status: publish
published: true
title: rasplex 0.1-rc4 released
author: dale.hamel
author_login: umhameld
author_email: daleha@gmail.com
wordpress_id: 544
wordpress_url: http://blog.srvthe.net/?p=544
date: 2013-02-12 02:33:20.000000000 -05:00
categories:
- Uncategorized
tags: []
comments: []
---
<h1>Small changes, big improvements</h1>
Due to many known issues with rc3, I have rolled out <a href="https://trello.com/c/oJN0FC6l">0.1-rc4</a> as quickly as possible.

The main improvement provided by rc4 is to use xbmc's ffmpeg, which enables transcoding. There are also some GUI changes that seem to make things much more stable.

One thing I have noticed with all versions of PHT is that they are extremely unstable if you try to do too much with them before the thumbnails cache. If you leave PHT running for a while (20 minutes) after first start, the performance tends to be much better and much more stable.
