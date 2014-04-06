---
title: Git Part 1 Commits
layout: post
tags: []
---


Why learn about commits?
========================

In case in happens (when it happens) that you or one of your collaborators fscks up a merge, rebase, and/or ( **breaks from whatever your establish workflow is**) (I recommend [this simple one](http://srvthe.net/blog/archives/86 "A simple git workflow for collaborating"), and [the 4 tier system](http://srvthe.net/blog/archives/138 "Git workflow with Redmine integration: the 4 tier system")).

Just remember the commit golden rule: **Make a commit when you you are (or are about to be!) frustrated, or, if you think you may have made progress, or that something is wrong.**

It is not a bad idea to daemonize git committing of staged content.

Commits let you take control of your code!

Don't worry, there's sample code at the bottom!
===============================================

Really!

Bookmark this page so that you can find it later!

As a teaser, here are some useful commands you might be trying to lookup:

Make a commit

-   git add . && git commit -a -m "I'm commiting everything, bwahaha!"

Revert a commit ( safe force ):

-   git add . && git commit -a -m "snapshot \$(`date`)" && git checkout -b temp\_branch && git reset --hard HEAD\^" \# as a safety measure, this puts you on a fallback branch while conserving everything you had, so you can do a post-mortem.

Take a quick snapshot (no staging of new files) + git commit -a -m "My awesome feature fix"

What is a commit?
=================

Commits make up your branches. This article complements my post on [git branch basics](http://prometheus.gotdns.com:88/wordpress/archives/150 "Git branch basics").

Conceptually
------------

### Description

A commit can be viewed as a card. When you make a change, you write a line on it. For each file, you have a line on your commit, that is the diff between the previous version.

You can view a commit as a delta, as it is a list of every line that has changed in every file. If a line is added, then it is denoted with a +. If a line is removed, then it is devoted with a -.

A stack of commits is a stack of deltas. It mirrors the state of all your files at any given time.

td;tl a commit is a working tree snapshot.

Internally
----------

A commit stores references to "blobs". This is how git views a delta. A single blob can be viewed as a collection of deltas for a small portion of the code/data on in the working tree. Git views your working tree in terms of blobs and trees. Trees are basically just blobs strung together.

So, blobs store diffs, and diffs are the binary data that changed during the time delta, blobs are basically just git's way of organizing diffs.

Trees can be viewed as snapshots of the directory hierarchy.

Git stores data on the "line" level, groups it into the "file level", and then the directory hierarchy level.

### Commit identifiers

Commit identifiers are called a view things: commits, shas, hash's, revisions, and snapshots depending on the context.

What is important to know though is the "sha" of a commit. This is your handle to get a commit from git. Git uses a buttload of hash tables (for lightning fast operations!). Each hash is a sha of the actual contents contained in it (the blobs and trees, and other git objects). This is done using the sha-1 algorithm, hence the name.

A sample commit (viewed with git log) looks like:

commit 1e1147e3656d416a46224584454c8f7ba476ab5a Author: Foobar [spamalot@gmail.com](mailto:spamalot@gmail.com) Date: Thu Feb 9 03:37:53 2012 +0000

     My amazing commit message about all the code you wish I was writing!

The number next to the commit is the sha. The other fields should be obvious (but if they aren't, they are more human readable representations of the commit, metadata associated with it.)

Commits as parts of branches.
-----------------------------

Commits are basically doubly linked lists. They store a reference to the the next, and previous node in history along a given branch.

A parent can have many children, but child nodes cannot have more than one parent. However, you can perform a process called **rebasing** to re-assign a node's parent. This is effectively like grafting a branch from one tree onto another.

The tip of a branch is called its HEAD. This is just a commit, like another, only it happens to be the latest to be appended.

Commit metaphors
----------------

A commit is a card. A branch is a stack of cards. you can pick up the pile from one branch, and stack them onto the other, just like you can take a branch from one tree, and graph it onto another.

Commit pitfalls.
================

The commit and branch structure of git makes it lighting fast. The only operations that can be slow in git are the ones that hashes for lots of data at once (when a *huge* commit is done, which is highly abnormal for a regular workflow).

You should get into the habbit of committing often. Remember the golden rule!
