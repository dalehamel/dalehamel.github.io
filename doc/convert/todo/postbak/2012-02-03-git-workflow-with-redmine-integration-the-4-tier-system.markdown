---
title: title
layout: post
tags: []
---


This is the four tier git workflow. Higher levels are the most tested, lower levels are the most experimental/volatile. To update a branch at a particular tier, you pull from the branch at the tier above. The process of pushing code to a higher tier is called "promotion", and is best performed via a rebase. Code promotion should only be done to signify that a feature has been tested enough to be promoted.

This workflow has been assembled from various useful sources, including ( but not limited to ) [the official git scm book](https://book.git-scm.com/ "the official git book"), [progit](https://progit.org/book/ "progit"), and [git ready](https://gitready.com/ "git ready"). Github also has some nice info, though it is hard to find, and often github specific.

Note: whenever performing a rebase or switching branches you must have a clean working tree. This means any changes have been committed or stashed. This is enforced by git so that you don't overwrite any untracked changes. I prefer rebases over git merges, and always do pull --rebase, instead of a git pull. Git pull runs "git fetch && git merge", whereas git pull --rebase runs "git fetch && git rebase". Rebasing tends to work better in my experience, and keeps the history clean of merge commits. For more information, see [progit section](https://progit.org/book/ch3-6.html "progit section") on rebasing.

Tier 1: master
==============

This is la crème de la crème. Code sent here is "done done", ready to be sent off to the "client". This code has been tried, and tested by at least 2 developers, other than the author. Anything commit (by sha or tag) sent here should be marked 100% in redmine.

This is the default branch when a repository is cloned or created.

Tier 2: unstable
================

Push here once you are pretty sure your feature as done (and have tested it in your deployment environment). Mark it up to 80% in redmine ( or less, depending on your confidence in how done it is). This is the branch you will use for collaboration with your team. For SVN developers, this replaces the "svn upstream trunk". When you push code to upstream unstable, mark down the HEAD SHA at the time that you pushed on any relevant redmine features. Or even better, [tag it](https://learn.github.com/p/tagging.html "tag it") so that it isn't just a SHA1 hash, and is more descriptive for the other developers.

To create the unstable branch:

-   git checkout -b unstable && git push origin unstable

To promote from unstable onto master:

-   git rebase unstable master && git push origin master.

Tier 3: Personal branches
=========================

Each developer on the team should have a personal branch. This is the branch that development is actually done on locally, but it is a good idea to back it up on the remote server too. Use this for extremely experimental code changes that are not ready to be tested. To update, pull from upstream unstable. Once a feature is completed and tested, push to upstream unstable from this branch. You can use this branch to transfer code from one machine to another, without stepping on other developers toes (never use the unstable branch to simply transfer code!).

To create a personal branch:

-   git checkout unstable
-   git checkout -b your\_name

To update a personal branch:

-   Long way: (more descriptive)
    -   git checkout unstable
    -   git pull --rebase origin unstable
    -   git rebase unstable your\_name
    -   git checkout your\_name
-   Quick way:
    -   git pull --rebase origin unstable && git rebase unstable your\_name

To promote code from a personal branch to unstable:

-   git checkout unstable
-   git rebase your\_name
-   git push origin unstable

To push a personal branch upstream ( for backing up )

-   git push origin your\_name

Tier 4: Feature/bugfix branches (optional but highly recommended!):
===================================================================

When you start working on a new feature/bugfix from redmine, create a new branch off of your personal branch. To update this branch, you should first update your personal branch, and then rebase onto the feature branch. The main benefit of feature branches is that they keep features separate from each other, and allow for atomic development. This way, you can work on multiple features at a time, and submit them up to unstable without pulling along code from another feature that was unfinished.

To create a feature branch:

-   git checkout your\_name
-   git checkout -b feature\_name

To update a feature branch (note: this is simplified by setting up [tracking branches](https://book.git-scm.com/4_tracking_branches.html "tracking branches"):

-   git checkout your\_name
-   git pull --rebase origin unstable && git rebase unstable your\_name
-   git rebase your\_name feature\_name
-   git checkout feature\_name

To promote a feature branch:

-   git checkout your\_name
-   git rebase feature\_name
-   git branch -D feature\_name (optional: delete the branch as it is no longer needed, and has been rebased - good to keep things tidy).
-   git push origin :feature\_name (optional: used to delete the feature branch from upstream, if you pushed it)
-   promotion steps for personal branch.

To switch between features:

-   git checkout feature\_name (now isn't that nice!)

