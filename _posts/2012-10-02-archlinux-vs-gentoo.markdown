---
title: Archlinux Vs Gentoo
modified: 2012-10-02
layout: post
redirect_from:
  - /archives/380/
  - /blog/?p=380/
tags: []
---


Why did I move
==============

It wasn't long ago that I was extolling the virtues of Archlinux, particularly in comparison to Ubuntu.

I have to say, most of those still stand, as I believe Archlinux to be a lightweight, highly customizable distribution.

However, for me, Gentoo gives an even higher degree of customizability. It seems that even the Arch community agrees, as [this comparison on Arch wiki ][https://wiki.archlinux.org/index.php/Arch\_Compared\_to\_Other\_Distributions\#Gentoo\_Linux] points out that Gentoo is more customizable, though it isn't as quick to deploy.

For me though, the main selling feature is Portage over Pacman

Portage vs Pacman
=================

Both Gentoo and Archlinux are rolling release systems, meaning that there are no cut-off "release levels", such as the version numbers that we see with distros like Ubuntu, Fedora, CentOS, and SuSE. With a rolling release system, the package manager simply gives you the newest stable package. However, the way Arch handles rolling releases is fundamentally flawed.

Why Pacman sucks
----------------

With Pacman, it is possible that you will install a library that is a dependency of one program, then later on, install another program that requires a newer version of the same library. Pacman will let you install the new library, saying that you have satisfied the dependency because you have the older version - not the one that is actually required by the package! This will install the package without any complaints, but it will refuse to run, as it's dependencies aren't satisfied. To me, this is fundamentally broken, as the package manager does not sufficiently handle dependencies.

Furthermore, to fix the problem, you pretty much have to do a dreaded pacman -Syu, which is almost guaranteed to break something else, as this will update all packages on your system to the stable state, but the transition is rarely smooth. There is no way in pacman to simply install the newer version of the few libraries that you need - even manually!

Why Portage is awesome
----------------------

Portage has no such restriction. With portage, you can install any version of any package you like for which there is an ebuild in portage. The ebuilds are also hardened into "stable/unstable/masked" levels, so you have multiple options for different versions of the package or library, allowing you to surgically fix any dependency issues (I have encountered very few anyways!). This allows you to fix your system with a scalpel instead of a cleaver (Syu!).

Furthermore, portage allows you to customize the configure level features of each package! This means that you can dynamically add support for an option to a package as you need it. This is done using portage's "USE" flags, which are standardize wrappers for configure options.

Portage enables a fully customized system, while providing proper dependency resolution and support for multiple versions of a package. This makes updating simple, and fixing broken dependencies surgical.

Portage uses files called "ebuilds", which are simply, bash-like scripts that define how to build and install the package, and what it depends on. Ebuilds are actually really easy to write, so this allows you to track every single program (even ones that you compiled yourself, outside of the portage tree!) in portage. No other distro can offer this.

What about compilation time?
============================

One of the main things that people prefer about Arch over gentoo is the necessity of having to build every single package, rather then just copying a binary image. This is only partially true. Using the "buildpkg" FEATURE in make.conf, it is simple to set up your own binary package repository. For my uses, I only had to compile all my packages on one machine, and then I used that machine as a binary repository for all my other amd64 machines.

Furthermore, portage has built in support for distcc, meaning that when you do have to compile packages, you can share the workload among as many computers as you have. This reduces the time required to create the initial binary packages, which you can then easily distribute to your other machines.

Setting up a binary package repository is also (perhaps ironically) easier on gentoo than on any other distribution that I have encountered - there is no configuration necessary! The /usr/portage/packages directory where placed can simply be tossed onto your favorite httpd, and then the URL is the PORTAGE\_BINHOST in the client's make.conf. Otherwise, you can just copy the package directory to each machine, for lightning fast emerging.

You should switch
=================

If you crave a distro that you will be able to run indefinitely without ever having to reinstall, you should go for gentoo.

I have switched all of my machines to gentoo, and I run my own binary package repositories. If you are the kind of user that craves complete control over your package management, you should switch to gentoo!
