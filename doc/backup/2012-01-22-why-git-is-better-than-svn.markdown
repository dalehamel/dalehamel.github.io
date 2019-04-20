---
title: Why Git Is Better Than Svn
modified: 2012-01-22
layout: post
tags: []
---


Punchy Why Git Is Better Than Svn, I know. First of all, I don't just mean SVN, I am including CVS, Perforce (shudder), and any other centralized version control system (CVCS) under the blanket of SVN, as SVN is the most widely used CVCS, but other CVCS's all implement the same basic interface. In other words, I know that I've already pissed off any SVN diehards, but I am also looking to drum up argument among users of any CVCS.

So what makes Git different? Well, Git is a distributed version control system, a DVCS. This throws the separate client/server architecture that CVCS's depend on out the window. This means that all repositories on all machines are equal - they are clones of the entire project tree, rather than clippings from the end of the branch.

With Git, you don't rely on storing your code on your filesystem. That seems weird, since use every single API call in git without a connection to the internet. So where is the data stored? In a hashtable. There are only two operations in git that affect the file system. Git commit is used to read the working tree state(files in the native filesystem tracked by git), and store the difference from the last commit in a binary blob, which is then SHA-1'd, to give a unique handle to that commit. So, a SHA points to a blob, which contains a working tree diff. When you stack these SHA's on top of each other, you get a branch, the top commit on the stack being the branches HEAD revision. Git checkout is used to replace the current working tree with the one from a specific commit.

This makes Git different from other VCS's, which puts the history on a separate filesystem from the actual data. This means that when you want to revert, or change branches, you have to actually send the data over a network, when all off this information could be easily cached locally. This is why switching branches in git is so fast - you already have the data you need, there is no need to transmit it.

But wait, there's more! Because of this architecture, branching is implicit to its design. Every local repository is just a branch from the remote master branch. The branches are synced remotely by the same mechanism that they use to sync locally.

I do have to concede that all most of what you can do with Git, you can do with systems like SVN. The VCS interface is implemented by both DVCS's and CVCS's alike, but Git implements them better. The operations that are done most frequently, syncing (merging two branches), committing, and checking out, are handled far better and more naturally because of gits branch-centric design. Git can be used to implement SVN workflows, but the distributed element adds the advantage of having a local repository.

This, at the very least, encourages developers to commit more, and actually use the VCS as a backup safety net. When the developer performs a sync, the sync is handled more intelligently, as there is more history to work with. When there are merge conflicts in git, you aren't forced to fix them right away, you can stash your merge at any time, and come back to it later. SVN forces you to finish your fix, discard your fix, or work in a broken, unmerged state.

Some people will claim that the option to "lock" a file is a feature, which is something that Git, or any DVCS, will ever be able to implement. This is ludicrous. When you start locking files, you run into the same scheduling problems that cause gridlock and deadlock. Developers are constantly contending for exclusive access to files, and it is more of a band-aid than a solution to one underlying problem - that two people can never be able to work on the exact same thing at the exact same time. Git solves this problem with merging. and provides everyone with full, unrestricted access to the entire repository at any given time.

So, if you are frustrated with the capabilities (or lack thereof) of your VCS to branch, merge, and track your working tree, you should switch to git. If I've at all convinced you with my Git rant, then I implore you to check out [progit](https://progit.org "progit")and my own project, [git-kit](https://github.com/daleha/git-kit "git-kit").
