---
layout: post
status: publish
published: true
title: 'Git part 1: Commits'
author: dale.hamel
author_login: umhameld
author_email: daleha@gmail.com
wordpress_id: 161
wordpress_url: http://prometheus.gotdns.com:88/wordpress/?p=161
date: 2012-02-28 15:38:05.000000000 -05:00
categories:
- FOSS
- git
- Tutorials
tags:
- git
- git commit
- git tutorial
comments: []
---
<h1>Why learn about commits?</h1>

<p>In case in happens (when it happens) that you or one of your collaborators fscks up a merge, rebase, and/or  ( <strong> breaks from whatever your establish workflow is </strong>) (I recommend <a href="http://srvthe.net/blog/archives/86" title="A simple git workflow for collaborating">this simple one</a>, and <a href="http://srvthe.net/blog/archives/138" title="Git workflow with Redmine integration: the 4 tier system">the 4 tier system</a>).</p>

<p>Just remember the commit golden rule: <strong> Make a commit when you you are (or are about to be!) frustrated, or, if you think you may have made progress, or that something is wrong.</strong></p>

<p>It is not a bad idea to daemonize git committing of staged content.</p>

<p>Commits  let you take control of your code! </p>

<h1>Don't worry, there's sample code at the bottom!</h1>

<p>Really!</p>

<p>Bookmark this page so that you can find it later!</p>

<p>As a teaser, here are some useful commands you might be trying to lookup:</p>

<p>Make a commit</p>

<ul>
<li>git add . &amp;&amp; git commit -a -m "I'm commiting everything, bwahaha!"</li>
</ul>

<p>Revert a commit ( safe force ):</p>

<ul>
<li>git add . &amp;&amp; git commit -a -m "snapshot $(<code>date</code>)" &amp;&amp; git checkout -b temp_branch &amp;&amp; git reset --hard HEAD^" # as a safety measure, this puts you on a fallback branch while conserving everything you had, so you can do a post-mortem.</li>
</ul>

<p>Take a quick snapshot (no staging of new files)
+ git commit -a -m "My awesome feature fix"</p>

<h1>What is a commit?</h1>

<p>Commits make up your branches. This article complements my post on <a href="http://prometheus.gotdns.com:88/wordpress/archives/150" title="Git branch basics">git branch basics</a>.</p>

<h2>Conceptually</h2>

<h3>Description</h3>

<p>A commit can be viewed as a card. When you make a change, you write a line on it. For each file, you have a line on your commit, that is the diff between the previous version.</p>

<p>You can view a commit as a delta, as it is a list of every line that has changed in every file. If a line is added, then it is denoted with a +. If a line is removed, then it is devoted with a -.</p>

<p>A stack of commits is a stack of deltas. It mirrors the state of all your files at any given time.</p>

<p>td;tl a commit is a working tree snapshot.</p>

<h2>Internally</h2>

<p>A commit stores references to "blobs". This is how git views a delta. A single blob can be viewed as a collection of deltas for a small portion of the code/data on in the working tree. Git views your working tree in terms of blobs and trees. Trees are basically just blobs strung together.</p>

<p>So, blobs store diffs, and diffs are the binary data that changed during the time delta, blobs are basically just git's way of organizing diffs.</p>

<p>Trees can be viewed as snapshots of the directory hierarchy.</p>

<p>Git stores data on the "line" level, groups it into the "file level", and then the directory hierarchy level.</p>

<h3>Commit identifiers</h3>

<p>Commit identifiers are called a view things: commits, shas, hash's, revisions, and snapshots depending on the context.</p>

<p>What is important to know though is the "sha" of a commit. This is your handle to get a commit from git. Git uses a buttload of hash tables (for lightning fast operations!). Each hash is a sha of the actual contents contained in it (the blobs and trees, and other git objects). This is done using the sha-1 algorithm, hence the name.</p>

<p>A sample commit (viewed with git log) looks like:</p>

<p>commit 1e1147e3656d416a46224584454c8f7ba476ab5a
 Author: Foobar <a href="&#x6d;&#97;&#x69;&#108;&#x74;&#111;&#x3a;&#x73;&#112;&#x61;&#109;&#x61;&#108;&#x6f;&#116;&#64;&#x67;&#109;&#x61;&#105;&#x6c;&#46;&#99;&#x6f;&#109;">&#x73;&#112;&#x61;&#109;&#x61;&#108;&#x6f;&#116;&#64;&#x67;&#109;&#x61;&#105;&#x6c;&#46;&#99;&#x6f;&#109;</a>
 Date:   Thu Feb 9 03:37:53 2012 +0000</p>

<pre><code> My amazing commit message about all the code you wish I was writing!
</code></pre>

<p>The number next to the commit is the sha.
The other fields should be obvious (but if they aren't, they are more human readable representations of the commit, metadata associated with it.)</p>

<h2>Commits as parts of branches.</h2>

<p>Commits are basically doubly linked lists. They store a reference to the the next, and previous node in history along a given branch.</p>

<p>A parent can have many children, but child nodes cannot have more than one parent. However, you can perform a process called <strong>rebasing</strong> to re-assign a node's parent. This is effectively like grafting a branch from one tree onto another.</p>

<p>The tip of a branch is called its HEAD. This is just a commit, like another, only it happens to be the latest to be appended.</p>

<h2>Commit metaphors</h2>

<p>A commit is a card. A branch is a stack of cards. you can pick up the pile from one branch, and stack them onto the other, just like you can take a branch from one tree, and graph it onto another.</p>

<h1>Commit pitfalls.</h1>

<p>The commit and branch structure of git makes it lighting fast. The only operations that can be slow in git are the ones that hashes for lots of data at once (when a <em>huge</em> commit is done, which is highly abnormal for a regular workflow).</p>

<p>You should get into the habbit of committing often. Remember the golden rule!</p>
