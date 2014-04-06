---
title: Git Branch Basics
modified: 2012-02-06
layout: post
redirect_from:
  - /archives/150
  - /blog/?p=150
tags: []
---


This tutorial will cover the basics of creating, sharing, switching, and deleting branches. At the end, there is some additional information on the internals, which are useful to know for when you fsck something up.

Note that before creating or switching branches, you must have a clean working tree. If you aren't sure if your working tree is clean, run Git status.

What is a branch?
=================

This seems like a silly question, but it is important to understand that Git takes a totally different approach to branches that you might be used to if you use SVN. You must empty your mind of any pre-conceived notions of a branch.

At it's core, a branch is simply a commit. To elaborate, a branch is a reference to the commit to use as the HEAD revision of the branch. When you check out a branch, you are changing the current HEAD of the repository to the head of that branch. This makes switching, creating, sharing, and even destroying branches lighting fast, and makes merging branches much simpler and easier than the approach taken by SVN and other version control systems, of treating branches as separate working trees.

If you are familiar with C/C++, you can think of a branch as a " commit\*". You dereference a branch to get a commit SHA.

Wait, these seem just like tags!
--------------------------------

Branches are a lot like tags. The only difference is that branches can be swapped in as the HEAD of the repository, whereas tags are used to switch between commits within a given branch. So, it is a question of scope. Branches are scoped to the entire repository, and tags are scoped within a branch.

Checking your branches
======================

To see which branches your repository has:

-   git branch

Optionally, to see what the head of each branch is:

-   git branch -v (will show minimal unique SHA, as well as commit message stub)

There will be an asterix beside the branch that you are currently on.

Running "git status" will also tell you your current branch.

Creating a branch
=================

When you create a branch, you are adding a new HEAD to your repository. You give a name that you want for that branch, and git creates a mapping of that name to the SHA that you are currently on.

For instance, with a clean working tree, I run

-   git checkout master (to put myself on the master branch, or whichever branch i want to branch off of)
-   git checkout -b my\_new\_branch ( to create and then checkout my\_new\_branch. The branch's head is initialized to the head of the branch you are currently on).

You will now be on my\_new\_branch, and I can now start commiting changes to this branch. Each time a commit is made on a branch, the head reference is updated to the SHA of the new commit.

Sharing a branch
================

To share a branch with your team, or to simply back it up remotely for yourself, simply commit all of the changes that you want to share, and then run

-   git push origin my\_branch\_name

Where I assume origin is the remote that you want to push to.

When you push a new branch, you are creating a new head for the repository. This is exactly what it is remotely - a reference to the head commit of that branch.

Each time you push, git pushes all objects in the repository. This means that even if you don't push your branch, all of your changes are pushed to the remote anyways. Pushing a branch simply adds the reference to the commit object so that you have that reference backed up/ ready to share.

Switching branches
==================

To switch branches, you must have a clean working tree. You can see this by running a git status command. If your working tree is not clean, you must stash or commit your changes. I recommend simply committing all changes for tracked files, and adding any files you do not want to track to the gitignore. This way, git status will be empty and you know you have a clean working tree.

Once your working tree is clean, run

-   git checkout other\_branch

To switch branches.

What this does is it looks at the branch name, dereferences it to get a commit SHA, then checks out the working tree stored in that commit object. This decompresses any changed files from the git object store into the working tree, and deletes any tracked files that should not exist in the new working tree (don't worry - the live in the object store, and are accessible via or old branch reference).

Deleting branches
=================

Once you no longer have use for a branch, it makes sense to delete the branch, so that it doesn't clutter up the list of branches that you see when you run git branch.

Deleting a branch simply deletes the reference to the branch head - the actual data still exists in the object store, as the commit is never deleted, and persists after the branch reference is destroyed.

To delete a local branch, run

-   git branch -d branchname

Or, if you don't want to be prompted for confirmation,

-   git branch -D branchname.

To delete a remote branch (this is a little weird syntax...) run

-   git push origin :branchname

The : says "delete the reference with the name branchname".

Internals
=========

From the root of your repository, run

-   cat .git/HEAD

You will see something like: "ref: refs/heads/your\_current\_branch"

This is how git stores what the current head to use is. To see all possible heads, run

-   ls .git/refs/heads

This is the same as you would see if you were to run git branch.

When you run

-   cat .git/refs/heads/some\_head

You will see a SHA - this is the commit that the branch references.

When you commit on a branch, that SHA is updated. When you create a branch, the file is created. When you push a branch, this file is added to the other repositories .git/refs/heads folder. Finally, when you delete a branch, this file is destroyed.
