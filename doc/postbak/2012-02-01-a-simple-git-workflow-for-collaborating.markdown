---
title: A Simple Git Workflow For Collaborating
layout: post
tags: []
---


It all comes down to one thing
==============================

**Never commit directly onto the master branch.** Instead, commit to a designated "unstable" branch until the code has been tested.

The way to do this is to just do your work on your own local branch. To add to this, branch off for each feature/bug fix you are working on. For me, this would look like:

-   git checkout dales\_branch (assuming it already exists)
-   git checkout -b myfeature
-   [ code code code ]
-   git add . && git commit -a -m "coded my feature but it's not tested yet"
-   git checkout unstable
-   git pull --rebase origin unstable
-   git push origin unstable
-   [ test test test ]
-   git checkout master && git pull --rebase
-   git rebase origin unstable

If everyone in your group follows this workflow, everything will be kept nice and organized.
