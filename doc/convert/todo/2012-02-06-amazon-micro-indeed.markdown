---
layout: post
status: publish
published: true
title: Amazon micro indeed
author: dale.hamel
author_login: umhameld
author_email: daleha@gmail.com
wordpress_id: 157
wordpress_url: http://prometheus.gotdns.com:88/wordpress/?p=157
date: 2012-02-06 05:02:29.000000000 -05:00
categories:
- Rants
- "/dev/urandom"
tags:
- amazon
- ec2
- cloud
- amazon ec2
- cloud computing
comments: []
---
<p>I can't believe I just DOS'd my own amazon web services micro linux instance with an RSS feed reader updating every 2 seconds. Mission critical applications (redmine, gitweb), were brought down by this...</p>

<p>Changing the update rate to 60 seconds caused everything to work fine. These instances really are micro...</p>
