---
layout: post
status: publish
published: true
title: 'Git part 2: Git branch basics'
author: dale.hamel
author_login: umhameld
author_email: daleha@gmail.com
wordpress_id: 150
wordpress_url: http://prometheus.gotdns.com:88/wordpress/?p=150
date: 2012-02-06 01:59:16.000000000 -05:00
categories:
- FOSS
- git
- Tutorials
tags:
- git
- git branch
- git basics
- git plumbing
comments: []
---
<p>This tutorial will cover the basics of creating, sharing, switching, and deleting branches. At the end, there is some additional information on the internals, which are useful to know for when you fsck something up.</p>

<p>Note that before creating or switching branches, you must have a clean working tree. If you aren't sure if your working tree is clean, run Git status.</p>

<h1>What is a branch?</h1>

<p>This seems like a silly question, but it is important to understand that Git takes a totally different approach to branches that you might be used to if you use SVN. You must empty your mind of any pre-conceived notions of a branch.</p>

<p>At it's core, a branch is simply a commit. To elaborate, a branch is a reference to the commit to use as the HEAD revision of the branch. When you check out a branch, you are changing the current HEAD of the repository to the head of that branch. This makes switching, creating, sharing, and even destroying branches lighting fast, and makes merging branches much simpler and easier than the approach taken by SVN and other version control systems, of treating branches as separate working trees.</p>

<p>If you are familiar with C/C++, you can think of a branch as a " commit*". You dereference a branch to get a commit SHA.</p>

<h2>Wait, these seem just like tags!</h2>

<p>Branches are a lot like tags. The only difference is that branches can be swapped in as the HEAD of the repository, whereas tags are used to switch between commits within a given branch. So, it is a question of scope. Branches are scoped to the entire repository, and tags are scoped within a branch.</p>

<h1>Checking your branches</h1>

<p>To see which branches your repository has:</p>

<ul>
<li>git branch</li>
</ul>

<p>Optionally, to see what the head of each branch is:</p>

<ul>
<li>git branch -v (will show minimal unique SHA, as well as commit message stub)</li>
</ul>

<p>There will be an asterix beside the branch that you are currently on.</p>

<p>Running "git status" will also tell you your current branch.</p>

<h1>Creating a branch</h1>

<p>When you create a branch, you are adding a new HEAD to your repository. You give a name that you want for that branch, and git creates a mapping of that name to the SHA that you are currently on.</p>

<p>For instance, with a clean working tree, I run</p>

<ul>
<li>git checkout master (to put myself on the master branch, or whichever branch i want to branch off of)</li>
<li>git checkout -b my_new_branch ( to create and then checkout my_new_branch. The branch's head is initialized to the head of the branch you are currently on).</li>
</ul>

<p>You will now be on my_new_branch, and I can now start commiting changes to this branch. Each time a commit is made on a branch, the head reference is updated to the SHA of the new commit.</p>

<h1>Sharing a branch</h1>

<p>To share a branch with your team, or to simply back it up remotely for yourself, simply commit all of the changes that you want to share, and then run</p>

<ul>
<li>git push origin my_branch_name</li>
</ul>

<p>Where I assume origin is the remote that you want to push to.</p>

<p>When you push a new branch, you are creating a new head for the repository. This is exactly what it is remotely - a reference to the head commit of that branch.</p>

<p>Each time you push, git pushes all objects in the repository. This means that even if you don't push your branch, all of your changes are pushed to the remote anyways. Pushing a branch simply adds the reference to the commit object so that you have that reference backed up/ ready to share.</p>

<h1>Switching branches</h1>

<p>To switch branches, you must have a clean working tree. You can see this by running a git status command. If your working tree is not clean, you must stash or commit your changes. I recommend simply committing all changes for tracked files, and adding any files you do not want to track to the gitignore. This way, git status will be empty and you know you have a clean working tree.</p>

<p>Once your working tree is clean, run</p>

<ul>
<li>git checkout other_branch</li>
</ul>

<p>To switch branches.</p>

<p>What this does is it looks at the branch name, dereferences it to get a commit SHA, then checks out the working tree stored in that commit object. This decompresses any changed files from the git object store into the working tree, and deletes any tracked files that should not exist in the new working tree (don't worry - the live in the object store, and are accessible via or old branch reference).</p>

<h1>Deleting branches</h1>

<p>Once you no longer have use for a branch, it makes sense to delete the branch, so that it doesn't clutter up the list of branches that you see when you run git branch.</p>

<p>Deleting a branch simply deletes the reference to the branch head - the actual data still exists in the object store, as the commit is never deleted, and persists after the branch reference is destroyed.</p>

<p>To delete a local branch, run</p>

<ul>
<li>git branch -d branchname</li>
</ul>

<p>Or, if you don't want to be prompted for confirmation,</p>

<ul>
<li>git branch -D branchname.</li>
</ul>

<p>To delete a remote branch (this is a little weird syntax...) run</p>

<ul>
<li>git push origin :branchname</li>
</ul>

<p>The : says "delete the reference with the name branchname".</p>

<h1>Internals</h1>

<p>From the root of your repository, run</p>

<ul>
<li>cat .git/HEAD</li>
</ul>

<p>You will see something like: "ref: refs/heads/your_current_branch"</p>

<p>This is how git stores what the current head to use is. To see all possible heads, run</p>

<ul>
<li>ls .git/refs/heads</li>
</ul>

<p>This is the same as you would see if you were to run git branch.</p>

<p>When you run</p>

<ul>
<li>cat .git/refs/heads/some_head</li>
</ul>

<p>You will see a SHA - this is the commit that the branch references.</p>

<p>When you commit on a branch, that SHA is updated. When you create a branch, the file is created. When you push a branch, this file is added to the other repositories .git/refs/heads folder. Finally, when you delete a branch, this file is destroyed.</p>
