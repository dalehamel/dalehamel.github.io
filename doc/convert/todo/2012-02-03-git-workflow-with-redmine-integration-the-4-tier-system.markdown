---
layout: post
status: publish
published: true
title: 'Git workflow with Redmine integration: the 4 tier system'
author: dale.hamel
author_login: umhameld
author_email: daleha@gmail.com
wordpress_id: 138
wordpress_url: http://prometheus.gotdns.com:88/wordpress/?p=138
date: 2012-02-03 03:50:47.000000000 -05:00
categories:
- FOSS
- git
- Tutorials
tags:
- software development
- git
- git tutorial
- redmine
- git project
- project tracking
comments:
- id: 6
  author: Eric Davies on Facebook
  author_email: 778980581@facebook.com
  author_url: http://www.facebook.com/profile.php?id=778980581
  date: '2012-02-03 04:34:13 -0500'
  date_gmt: '2012-02-03 04:34:13 -0500'
  content: That's actually fairly helpful, although rebase still feels wrong to me
    (although pull-merge-commit-push seemed wrong at the beginning). However, aside
    from the actual content, your blog is completely ridiculous :P
- id: 7
  author: Dale Hamel on Facebook
  author_email: 660396301@facebook.com
  author_url: http://www.facebook.com/profile.php?id=660396301
  date: '2012-02-03 04:43:30 -0500'
  date_gmt: '2012-02-03 04:43:30 -0500'
  content: How do you mean w.r.t. ridiculous except for content (i'd say the whole
    thing is ridiculous :p)? And IMHO, rebasing is the only way to go - avoid merges
    like the plague.
- id: 8
  author: Eric Davies on Facebook
  author_email: 778980581@facebook.com
  author_url: http://www.facebook.com/profile.php?id=778980581
  date: '2012-02-03 04:45:38 -0500'
  date_gmt: '2012-02-03 04:45:38 -0500'
  content: The ridiculous logo and the wordpressiness of it all :P
- id: 9
  author: Dale Hamel on Facebook
  author_email: 660396301@facebook.com
  author_url: http://www.facebook.com/profile.php?id=660396301
  date: '2012-02-03 04:47:08 -0500'
  date_gmt: '2012-02-03 04:47:08 -0500'
  content: The logo is lovely (and true!) and wordpress is easy ;)
- id: 22
  author: Programmer
  author_email: m166784@rtrtr.com
  author_url: ''
  date: '2012-09-06 21:57:11 -0400'
  date_gmt: '2012-09-06 21:57:11 -0400'
  content: Thanks for the guide.  Most git tutorials assume git-flow or github-flow
    but the "code promotion"  methodology with permanent dev/test/prod branches you're
    referencing here is rarely discussed which is surprising since an n-tier architecture
    is ubiquitous in large business.
---
<p>This is the four tier git workflow. Higher levels are the most tested, lower levels are the most experimental/volatile. To update a branch at a particular tier, you pull from the branch at the tier above. The process of pushing code to a higher tier is called "promotion", and is best performed via a rebase. Code promotion should only be done to signify that a feature has been tested enough to be promoted.</p>

<p>This workflow has been assembled from various useful sources, including ( but not limited to ) <a href="http://book.git-scm.com/" title="the official git book">the official git scm book</a>, <a href="http://progit.org/book/" title="progit">progit</a>, and <a href="http://gitready.com/" title="git ready">git ready</a>. Github also has some nice info, though it is hard to find, and often github specific.</p>

<p>Note: whenever performing a rebase or switching branches you must have a clean working tree. This means any changes have been committed or stashed. This is enforced by git so that you don't overwrite any untracked changes. I prefer rebases over git merges, and always do pull --rebase, instead of a git pull. Git pull runs "git fetch &amp;&amp; git merge", whereas git pull --rebase runs "git fetch &amp;&amp; git rebase". Rebasing tends to work better in my experience, and keeps the history clean of merge commits. For more information, see <a href="http://progit.org/book/ch3-6.html" title="progit section">progit section</a> on rebasing.</p>

<h1>Tier 1: master</h1>

<p>This is la crème de la crème. Code sent here is "done done", ready to be sent off to the "client". This code has been tried, and tested by at least 2 developers, other than the author. Anything commit (by sha or tag) sent here should be marked 100% in redmine.</p>

<p>This is the default branch when a repository is cloned or created.</p>

<h1>Tier 2: unstable</h1>

<p>Push here once you are pretty sure your feature as done (and have tested it in your deployment environment). Mark it up to 80% in redmine ( or less, depending on your confidence in how done it is). This is the branch you will use for collaboration with your team. For SVN developers, this replaces the "svn upstream trunk". When you push code to upstream unstable, mark down the HEAD SHA at the time that you pushed on any relevant redmine features. Or even better, <a href="http://learn.github.com/p/tagging.html" title="tag it">tag it</a> so that it isn't just a SHA1 hash, and is more descriptive for the other developers.</p>

<p>To create the unstable branch:</p>

<ul>
<li>git checkout -b unstable &amp;&amp; git push origin unstable</li>
</ul>

<p>To promote from unstable onto master:</p>

<ul>
<li>git rebase unstable master &amp;&amp; git push origin master.</li>
</ul>

<h1>Tier 3: Personal branches</h1>

<p>Each developer on the team should have a personal branch. This is the branch that development is actually done on locally, but it is a good idea to back it up on the remote server too. Use this for extremely experimental code changes that are not ready to be tested. To update, pull from upstream unstable. Once a feature is completed and tested, push to upstream unstable from this branch. You can use this branch to transfer code from one machine to another, without stepping on other developers toes (never use the unstable branch to simply transfer code!).</p>

<p>To create a personal branch:</p>

<ul>
<li>git checkout unstable</li>
<li>git checkout -b your_name</li>
</ul>

<p>To update a personal branch:</p>

<ul>
<li>Long way: (more descriptive)

<ul>
<li>git checkout unstable</li>
<li>git pull --rebase origin unstable</li>
<li>git rebase unstable your_name</li>
<li>git checkout your_name</li>
</ul></li>
<li>Quick way:

<ul>
<li>git pull --rebase origin unstable &amp;&amp; git rebase unstable your_name</li>
</ul></li>
</ul>

<p>To promote code from a personal branch to unstable:</p>

<ul>
<li>git checkout unstable</li>
<li>git rebase your_name</li>
<li>git push origin unstable</li>
</ul>

<p>To push a personal branch upstream ( for backing up )</p>

<ul>
<li>git push origin your_name</li>
</ul>

<h1>Tier 4: Feature/bugfix branches (optional but highly recommended!):</h1>

<p>When you start working on a new feature/bugfix from redmine, create a new branch off of your personal branch. To update this branch, you should first update your personal branch, and then rebase onto the feature branch. The main benefit of feature branches is that they keep features separate from each other, and allow for atomic development. This way, you can work on multiple features at a time, and submit them up to unstable without pulling along code from another feature that was unfinished.</p>

<p>To create a feature branch:</p>

<ul>
<li>git checkout your_name</li>
<li>git checkout -b feature_name</li>
</ul>

<p>To update a feature branch (note: this is simplified by setting up <a href="http://book.git-scm.com/4_tracking_branches.html" title="tracking branches">tracking branches</a>:</p>

<ul>
<li>git checkout your_name</li>
<li>git pull --rebase origin unstable &amp;&amp; git rebase unstable your_name</li>
<li>git rebase your_name feature_name</li>
<li>git checkout feature_name</li>
</ul>

<p>To promote a feature branch:</p>

<ul>
<li>git checkout your_name</li>
<li>git rebase feature_name</li>
<li>git branch -D feature_name (optional: delete the branch as it is no longer needed, and has been rebased - good to keep things tidy).</li>
<li>git push origin :feature_name (optional: used to delete the feature branch from upstream, if you pushed it)</li>
<li>promotion steps for personal branch.</li>
</ul>

<p>To switch between features:</p>

<ul>
<li>git checkout feature_name (now isn't that nice!)</li>
</ul>
