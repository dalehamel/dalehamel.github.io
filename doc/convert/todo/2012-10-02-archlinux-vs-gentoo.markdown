---
layout: post
status: publish
published: true
title: Archlinux vs Gentoo
author: dale.hamel
author_login: umhameld
author_email: daleha@gmail.com
wordpress_id: 380
wordpress_url: https://blog.srvthe.net/?p=380
date: 2012-10-02 20:35:24.000000000 -04:00
categories:
- Uncategorized
tags:
- linux
comments:
- id: 337
  author: What about compilation time?
  author_email: jelou@gmail.com
  author_url: ''
  date: '2013-03-05 19:14:53 -0500'
  date_gmt: '2013-03-05 19:14:53 -0500'
  content: "but you still have to recompile whenever you want the newer version of
    any package. Gentoo does not provide a big number of binary packages; in fact
    just the huge ones that some people may find painful to compile. Whereas Arch
    works as a precompiled distro by default, somewhat optimised for the i686 and
    x86_64 instruction sets, with an optional system \"a la *BSD ports and Gentoo
    Portage\" ( the Arch Build System) that gives you some if not all of the CPU-specific
    optimisations achievable with a source based distro. I think the ABS only lags
    behind Portage because of the former lack of USE flags.\r\n\r\nAnd your complaint
    about Pacman is totally untrue. It is impossible for an application foo that mandatorily
    depends on a newer version of library bar to reach the official repositories before
    bar is updated. Do you think the package maintainers are dumb? And when you upgrade
    foo and bar, if there exists some other packages that still rely on the older
    bar, pacman won't replace it; that would potentially break those other packages.
    Instead pacman will leave both versions of bar and will treat the old one as a
    dependency as long as it is required."
- id: 342
  author: dale.hamel
  author_email: daleha@gmail.com
  author_url: ''
  date: '2013-03-06 06:23:43 -0500'
  date_gmt: '2013-03-06 06:23:43 -0500'
  content: Who cares? It compiles so fast it doesn't matter on modern computers. I'd
    rather have my own packages customized the way I want them.
- id: 537
  author: KevinW
  author_email: mos19k@gmail.com
  author_url: ''
  date: '2013-03-18 15:27:15 -0400'
  date_gmt: '2013-03-18 15:27:15 -0400'
  content: "Interesting article! I've just purchased a new laptop and have been debating
    on which distro to use.  Arch seems compelling and Ubuntu with its Mint derivative
    seems shiny, new, and \"hands free.\"\r\n\r\nI've been using gentoo for over 10
    years and experienced a lot of its growing pains.  Perhaps my changing roles from
    a sysadmin/developer to systems engineering has been a detriment to my understanding
    of gentoo since my daily role does depend on managing a linux system.   I'm curious
    how much tweaking you've done and how you use your system.  I've found the past
    year and to be nearly unbearable for updates and I feel like it's mostly my fault
    between the autounmask feature and many of the new changes I've been unable to
    keep up with.  I've been in a constant cycle of fighting with package dependencies
    and it's refreshing to hear that, maybe, it is just my particular configuration.
    \ It also sounds like arch may suffer from dependency issues as bad as portage
    can.\r\n\r\nWith that said I've never had ubuntu \"just work\" on anything other
    than a VM.  Every physical install has disliked my hardware and locked up, typically
    due to display driver issues.  This has been across several laptops and physical
    servers. I also don't particularly care for Ubuntu's history of making things
    like proprietary drivers or codecs hard(er) to obtain, though it seems like much
    of that has changed in recent releases.\r\n\r\nSo, before I commit I think I'm
    going to give mint and arch a test drive in a virtual environment to see which
    I like. Either way I'm curious to hear how bleeding edge you're running gentoo
    and as to whether or not you've experienced any of the dependency pain having
    just switched over to gentoo as recently as you have.  Also, if you care to have
    your eyes bleed I'd be happy to post a pastebin of what my current build wants
    me to do just to update :-)\r\n\r\nThanks!"
- id: 863
  author: Sircharge
  author_email: hajatvrc@gmail.com
  author_url: ''
  date: '2013-04-13 23:42:49 -0400'
  date_gmt: '2013-04-13 23:42:49 -0400'
  content: "It's fine if you like the extra control you get with Gentoo (no one denies
    that it's nice), but please don't spread misinformation about Pacman. Every complaint
    you made about any alleged stability problems is coming from nowhere. If you can't
    manage to RTFM, good luck with Gentoo.\r\n\r\nArchWiki: \"Enhancing Arch Linux
    Stability\""
- id: 943
  author: dale.hamel
  author_email: daleha@gmail.com
  author_url: ''
  date: '2013-04-25 01:44:30 -0400'
  date_gmt: '2013-04-25 01:44:30 -0400'
  content: |-
    Archlinux is great for some applications. I would be happy to edit the post for anything you can correct me on : ) (and hopefully learn something in the process ;)

    In my opinion though, Arch has been doing some very silly things lately. For instance, I found the switching of init systems is hilarious, as it breaks so many packages that previously had working daemons.

    Every time I go to install a package, the mirrors have to be updated...

    I loved Arch when I first started, but found long-term system maintenance to be a total nightmare. I really liked the rolling release idea until it really bit me a few times. I'm not the only one, many of my friends have switched away from Arch for the same reason.

    To be fair, I spent a lot more time jumping into portage than pacman, but it seems to me that Arch suffers from the same issues that any binary distro has.

    I am a HUGE fan of the Arch wiki and community, as well as AUR. I still use Archwiki as my go-to linux wiki.
- id: 944
  author: dale.hamel
  author_email: daleha@gmail.com
  author_url: ''
  date: '2013-04-25 01:47:43 -0400'
  date_gmt: '2013-04-25 01:47:43 -0400'
  content: "I have certainly run into some dependency issues here and there, but it
    never takes too long to fix.\n\nUsually, the issues only arise with things like
    udev, qt libraries, and a few other core packages that lots of things depend on.
    \n\nIn the absolute worst case scenario, I will typically just fork the portage
    tree and hack my own ebuild in my overlay to put something into its own slot,
    to freeze it at a particular version (but that's pretty rare, and reserved for
    shit like boost that breaks the ABI with even minor releases...)"
- id: 945
  author: dale.hamel
  author_email: daleha@gmail.com
  author_url: ''
  date: '2013-04-25 01:53:01 -0400'
  date_gmt: '2013-04-25 01:53:01 -0400'
  content: |-
    Fair criticisms.

    I do think that the arch maintainers have made some questionable design decisions, but they are necessary evils of juggling a rolling release system with rapid deployment of packages. I'm particularly annoyed with what they've done with init, though I'm a huge fan of OpenRC...

    I personally don't mind the compile time, as it's trivial on modern hardware after you have the initial setup. I have distcc setup on all my machines, so that it shares the load and speeds things up even more. I also maintain my own binhost, so I can easily deploy to new hardware.

    The issue with multiple versions of required libs is that pacman doesn't offer any sort of solution like gentoo's slotting, which would allow multiple versions of a lib to exist on the same system to keep both foo and bar happy...
- id: 1323
  author: hadrons123
  author_email: piruthiviraj@gmail.com
  author_url: ''
  date: '2013-07-11 02:25:17 -0400'
  date_gmt: '2013-07-11 02:25:17 -0400'
  content: Great article.  Gentoo is recieving negative reviews for source-based building
    and configuartion options. I  have a very fast system and I feel very very confortable
    with gentoo compared to both fedora and Arch when dealing with updates.  Souce
    building is easier on Gentoo than anyother distro.
- id: 1894
  author: Chris
  author_email: crk5070@gmail.com
  author_url: ''
  date: '2013-09-19 19:03:45 -0400'
  date_gmt: '2013-09-19 19:03:45 -0400'
  content: "Just as a quick note, if you're still looking into the rolling release
    distros, Debian Unstable would be a candidate. If you install apt-listbugs, it'll
    display any potential problems with any packages that are about to be installed
    or upgraded using apt or aptitude.\r\n\r\nFedora also has a \"rolling-release\"
    branch called Rawhide. That can be a little tricky to run since packages may be
    git snapshots rather than the last stable upstream release.\r\n\r\nBut if you're
    still looking for a source-based operating system, I'd say FreeBSD is more elegant
    than Gentoo. For one, it uses a nice ncurses pop-up box as opposed to USE flags
    to select/deselect options. The drawback though is hardware support."
- id: 1971
  author: hammackj
  author_email: nospam@hammackj.com
  author_url: https://hammackj.com
  date: '2013-10-01 16:08:54 -0400'
  date_gmt: '2013-10-01 16:08:54 -0400'
  content: "I rarely even notice when I have to recompile apps, except for Chrome/Firefox/OO.
    Most apps its like a slow download via a slow APT mirror. All of my boxes are
    i7 quadcore though or VMs.\r\n\r\nBeing able to remove java from my system and
    prevent anything from installing it is great =)"
- id: 2042
  author: poinck
  author_email: ich@poinck.de
  author_url: ''
  date: '2013-10-11 10:51:15 -0400'
  date_gmt: '2013-10-11 10:51:15 -0400'
  content: "I have to try the distcc-thing, because I don't want to overheat my laptop
    compiling \"loads\" of things. \r\n\r\nCurrently this laptop runs Debian. I admit,
    that I have no problems with it except that some programs could be newer. That
    is why I installed Arch on my other desktop-computer. But Arch is too new. It
    adops to quickly not well tested programs (except systemd). Core application should
    be stable. Arch introduces new features and new bugs.\r\n\r\nI hope, that Gentoo
    can solve this problem for me; having a stable version of systemd and a modern
    version of the desktop environment I have choosen (Gnome in my case). I don't
    want to worry about some programs when I decide to move to Gnome 3.10; only hard-dependencies
    (upstream dependencies) should be updated with the process; not the entire system
    (\"pacman -Syua\"). So far I love Gentoo and I am learning much, but I am still
    migrating the PC from Arch to Gentoo. If I am successful, I will switch from Debian
    to Gentoo on my laptop as well.\r\n\r\nAnd, as long I do not know how to cross-compile,
    my Raspberry Pi will stay on Arch"
- id: 2068
  author: marko
  author_email: marko.kauzlaric@gmail.com
  author_url: ''
  date: '2013-10-15 20:53:00 -0400'
  date_gmt: '2013-10-15 20:53:00 -0400'
  content: You should try sabayon (https://www.sabayon.org/) which is a binary gentoo
    distribution. It uses the entropy package management which is compatible with
    portage. So yes, on this system you can use both. Whenever I need a fine grained
    installation and options I use emerge (portage) and for other stuff I use equo
    (entropy). For instance you might have some software available on a layman repo
    so you just do layman -a whatever and then emerge it, just like in gentoo. Give
    it a try.
---
<h1>Why did I move</h1>
<p>It wasn't long ago that I was extolling the virtues of Archlinux, particularly in comparison to Ubuntu.</p>
<p>I have to say, most of those still stand, as I believe Archlinux to be a lightweight, highly customizable distribution.</p>
<p>However, for me, Gentoo gives an even higher degree of customizability. It seems that even the Arch community agrees, as [this comparison on Arch wiki ][https://wiki.archlinux.org/index.php/Arch_Compared_to_Other_Distributions#Gentoo_Linux] points out that Gentoo is more customizable, though it isn't as quick to deploy.</p>
<p>For me though, the main selling feature is Portage over Pacman</p>
<h1>Portage vs Pacman</h1>
<p>Both Gentoo and Archlinux are rolling release systems, meaning that there are no cut-off "release levels", such as the version numbers that we see with distros like Ubuntu, Fedora, CentOS, and SuSE. With a rolling release system, the package manager simply gives you the newest stable package. However, the way Arch handles rolling releases is fundamentally flawed.</p>
<h2>Why Pacman sucks</h2>
<p>With Pacman, it is possible that you will install a library that is a dependency of one program, then later on, install another program that requires a newer version of the same library. Pacman will let you install the new library, saying that you have satisfied the dependency because you have the older version - not the one that is actually required by the package! This will install the package without any complaints, but it will refuse to run, as it's dependencies aren't satisfied. To me, this is fundamentally broken, as the package manager does not sufficiently handle dependencies. </p>
<p>Furthermore, to fix the problem, you pretty much have to do a dreaded pacman -Syu, which is almost guaranteed to break something else, as this will update all packages on your system to the stable state, but the transition is rarely smooth. There is no way in pacman to simply install the newer version of the few libraries that you need - even manually!</p>
<h2>Why Portage is awesome</h2>
<p>Portage has no such restriction. With portage, you can install any version of any package you like for which there is an ebuild in portage. The ebuilds are also hardened into "stable/unstable/masked" levels, so you have multiple options for different versions of the package or library, allowing you to surgically fix any dependency issues (I have encountered very few anyways!). This allows you to fix your system with a scalpel instead of a cleaver (Syu!). </p>
<p>Furthermore, portage allows you to customize the configure level features of each package! This means that you can dynamically add support for an option to a package as you need it. This is done using portage's "USE" flags, which are standardize wrappers for configure options.</p>
<p>Portage enables a fully customized system, while providing proper dependency resolution and support for multiple versions of a package. This makes updating simple, and fixing broken dependencies surgical. </p>
<p>Portage uses files called "ebuilds", which are simply, bash-like scripts that define how to build and install the package, and what it depends on. Ebuilds are actually really easy to write, so this allows you to track every single program (even ones that you compiled yourself, outside of the portage tree!) in portage. No other distro can offer this.</p>
<h1>What about compilation time?</h1>
<p>One of the main things that people prefer about Arch over gentoo is the necessity of having to build every single package, rather then just copying a binary image. This is only partially true. Using the "buildpkg" FEATURE in make.conf, it is simple to set up your own binary package repository. For my uses, I only had to compile all my packages on one machine, and then I used that machine as a binary repository for all my other amd64 machines.</p>
<p>Furthermore, portage has built in support for distcc, meaning that when you do have to compile packages, you can share the workload among as many computers as you have. This reduces the time required to create the initial binary packages, which you can then easily distribute to your other machines.</p>
<p>Setting up a binary package repository is also (perhaps ironically) easier on gentoo than on any other distribution that I have encountered - there is no configuration necessary! The /usr/portage/packages directory where placed can simply be tossed onto your favorite httpd, and then the URL is the PORTAGE_BINHOST  in the client's make.conf. Otherwise, you can just copy the package directory to each machine, for lightning fast emerging.</p>
<h1>You should switch</h1>
<p>If you crave a distro that you will be able to run indefinitely without ever having to reinstall, you should go for gentoo. </p>
<p>I have switched all of my machines to gentoo, and I run my own binary package repositories. If you are the kind of user that craves complete control over your package management, you should switch to gentoo!</p>
