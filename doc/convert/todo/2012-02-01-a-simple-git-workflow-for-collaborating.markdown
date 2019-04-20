---
layout: post
status: publish
published: true
title: A simple git workflow for collaborating
author: dale.hamel
author_login: umhameld
author_email: daleha@gmail.com
wordpress_id: 86
wordpress_url: https://prometheus.gotdns.com:88/wordpress/?p=86
date: 2012-02-01 02:18:07.000000000 -05:00
categories:
- FOSS
- git
- Tutorials
tags:
- git
- git workflow
- collaboration
comments: []
---
<h1>It all comes down to one thing</h1>

<p><strong> Never commit directly onto the master branch.</strong>
Instead, commit to a designated "unstable" branch until the code has been tested.</p>

<p>The way to do this is to just do your work on your own local branch. To add to this, branch off for each feature/bug fix you are working on. For me, this would look like:</p>

<ul>
<li>git checkout dales_branch (assuming it already exists)</li>
<li>git checkout -b myfeature</li>
<li>[ code code code ]</li>
<li>git add . &amp;&amp; git commit -a -m "coded my feature but it's not tested yet"</li>
<li>git checkout unstable</li>
<li>git pull --rebase origin unstable</li>
<li>git push origin unstable</li>
<li>[ test test test ]</li>
<li>git checkout master &amp;&amp; git pull --rebase</li>
<li>git rebase origin unstable</li>
</ul>

<p>If everyone in your group follows this workflow, everything will be kept nice and organized.</p>
