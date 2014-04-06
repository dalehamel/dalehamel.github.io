---
layout: post
status: publish
published: true
title: The history (and future) of RasPlex
author: dale.hamel
author_login: umhameld
author_email: daleha@gmail.com
wordpress_id: 646
wordpress_url: http://blog.srvthe.net/?p=646
date: 2013-03-27 05:27:35.000000000 -04:00
categories:
- Uncategorized
tags: []
comments:
- id: 635
  author: Michael Horne
  author_email: mike@recantha.co.uk
  author_url: http://www.recantha.co.uk/blog
  date: '2013-03-27 06:50:52 -0400'
  date_gmt: '2013-03-27 06:50:52 -0400'
  content: Good on you - I hope you get the support.
- id: 636
  author: Matthew manning
  author_email: m@core-matrix.co.uk
  author_url: ''
  date: '2013-03-27 07:13:55 -0400'
  date_gmt: '2013-03-27 07:13:55 -0400'
  content: Hear hear!
- id: 637
  author: Megawubs
  author_email: bwubs@me.com
  author_url: ''
  date: '2013-03-27 08:12:52 -0400'
  date_gmt: '2013-03-27 08:12:52 -0400'
  content: Great read! Loved to see the last two moths from up close. Hope i'll find
    some time to help, rather than just sit at the sideline.
- id: 727
  author: Yve
  author_email: yve.de.buysscher@gmail.com
  author_url: ''
  date: '2013-03-31 21:38:48 -0400'
  date_gmt: '2013-03-31 21:38:48 -0400'
  content: Keep up the good work! I just replaced XBMC with Plex on my RPi. I used
    to run Plex on a Mac Mini HTPC, but this is just as good for a fraction of the
    price!
- id: 848
  author: Kevin
  author_email: obospieler@yahoo.com
  author_url: ''
  date: '2013-04-11 23:28:44 -0400'
  date_gmt: '2013-04-11 23:28:44 -0400'
  content: I wish I knew ANYTHING about coding as I would love to help! Can I buy
    you pizza?
- id: 942
  author: dale.hamel
  author_email: daleha@gmail.com
  author_url: ''
  date: '2013-04-25 01:39:12 -0400'
  date_gmt: '2013-04-25 01:39:12 -0400'
  content: 'You can donate at <a href="http://rasplex.com" rel="nofollow">rasplex.com</a>,
    there is a button at the bottom of the page : )'
- id: 2102
  author: Claire
  author_email: claire@eeweb.com
  author_url: http://EEWeb.com
  date: '2013-10-22 19:17:35 -0400'
  date_gmt: '2013-10-22 19:17:35 -0400'
  content: "Hi Dale! I work with engineering website EEWeb.com and would love to interview
    you for our engineer spotlight about your work with Rasplex (see our latest interview
    here -\r\n http://www.eeweb.com/spotlight/interview-with-dr.-mung-chiang). Let
    me know if you're interested and we can go from there. My email is claire@eeweb.com."
- id: 2288
  author: Kris
  author_email: kris.input@gmail.com
  author_url: ''
  date: '2013-11-17 20:24:03 -0500'
  date_gmt: '2013-11-17 20:24:03 -0500'
  content: Cool! Getting my first Pi - one SD card for Raspian in the NOOBS package
    (+XBMC), one SD card for Plex. I'd like to attach several 2.5" USB drives, wireless
    USB, etc. and make this a 'travel' server. For Plex that would mean the Plex Media
    Server would also need to run on the Pi. (1) Plex folks could port PMS to OpenELEC
    Linux? or more likely, (2) Determine which Plex supported Linux runs best on Pi,
    and port the RaspPlex player... Thoughts?
---
<h1>tl;dr</h1>

RasPlex was born from my love for XBMC, and wouldn't have been possible without the <a href="http://openelec.tv/" target="_blank">OpenELEC</a>,  <a href="http://xbian.org/" target="_blank"> Xbian</a>, and  <a href="http://www.raspbmc.com/" target="_blank">Raspbmc</a> projects. I call for us all to work together, share our work, and improve one another to provide the best possible UX, and provide stronger platforms than we would separately, reinventing each other's work. 

If you agree, please take to twitter, tweeting the @SamNazarko, @Koenkk, @raspbmc, and @OpenELEC with #htpcunite.




<h1>It all began</h1>
8 years ago when I first ran XBMC on my Xbox 1. I loved it, and had been using various modifications (including MythTV, and a few other little tweaks) of the setup quite happily up until this summer, when a friend of mine introduced me to Plex.
<h1>Plex BLEW me away</h1>
I easily converted my existing media collection (well organized, making it super easy for Plex to assimilate), and built what I consider to be a system that is better than Netflix or a conventional cable service.

With features like

<ul>
<li>Easily keeping my media organized in an object oriented way, so I can browse by MOVIE and not by obscure file name</li>
<li>Genre, theme based categorization, IMDB classification and description</li>
<li>The ability to stop on one frontend, resume on another functionality provided by Client/Server arch</li>
<li>On deck/ recently added, media queue</li>
<li>iOS / android integration, ease of use, ease of setup</li>
</ul>

When I envisioned of the setup I was trying to make with XBMC, it was Plex. It seemed to me like Plex had the power and proven reliability of XBMC, with a specific focus towards marketability and UX.

<h1>Then I got a Raspberry Pi</h1>
I discovered that XBMC was running on the Rasbperry Pi, and had to get one. It blew me away that the Raspberry Pi could support my favorite HTPC system, even better than the (much larger) Xbox 1 could.

<h1>But it wasn't good enough</h1>
I tried <a href="http://www.raspbmc.com/" target="_blank">Rampbmc</a>, which is a great project and makes XBMC remarkably accessible on the Raspberry Pi thanks to the works of Sam Nazarko. As a platform for XBMC, I loved it. But I missed the Plex features that I loved so much.

<h1>So the work on RasPlex began</h1>

Being the arrogant, cocky guy that I am, I figured that I would just port Plex to the Raspberry Pi. They already had XBMC building, how hard could it be?

<h2>plex-linux by gewalker</h2>

I had already been using plex-linux for a while on my gentoo setup, and was familiar with building plex on linux. I tried to build plex-linux on RPi back in September 2012, and got pretty far pretty quickly.

<h2>But there were major issues</h2>

I eventually compiled an executable that didn't run, just segfaulted. I investigated, and discovered that it was because the magic that makes  <a href="http://www.raspbmc.com/" target="_blank">Raspbmc</a>,  <a href="http://openelec.tv/" target="_blank">OpenELEC</a>, and  <a href="http://xbian.org/" target="_blank">XBian</a> work was missing - I wasn't properly linking the VideoCore stuff, and was missing ALL of the RPi XBMC patches.

<h1>All that work for nothing!</h1>
In November, I all but abandoned RasPlex, as the task to port all that work into such a diverged tree was ominous. I reluctantly abandoned my dreams of Plex on the Raspberry Pi, and focused on exams and finishing my degree.


<h1>Exams are over, I'm done school</h1>

Once crunch time was over, I picked up RasPlex again. I started by deleting everything I had, to take a fresh mind at it. Work was slow, I was still compiling everything on the Pi (with the help of distcc), which meant that it took several days to build the dependencies on Gentoo - the system I was using.

<h1>Help from the Gods</h1>

Divine action intervened. Tobias Hieta (a Plex god - the maintainer of plex-home-theater) descended from the heavens, and released the newly revamped plex-home-theater source publicly on github in January.

<h2>RasPlex is born</h2>

This was the piece of the puzzle that made everything possible. I used my knowledge of building plex-linux (which was basically just XBMC) on the Pi to reverse engineer the XBMC raspberry pi build process into the up-to-date, patched codebase. I wrote the PlatformRPi.cmake file, and applied a few patches where needed. Rasplex booted for the first time shortly after, and I'll never forget my glee - 4 months of work, giving up once, and here it was before my eyes - I was the first person to see RasPlex run.

<h2>Well, *running* is the wrong word</h2>

It was clear that there was lots of work to be done. The code was incredibly unstable, prone to crashing, and the GUI Was completely useless for day-to-day use.

<h1>The community is born</h1>

I started the chatroom, and LongChair showed up (first person - there from the start!). Many then came (it's true - if you build it, they will come). The trello took off, and the RasPlex hardcores weelkin and a_wein showed up on the scene. ElMassman contributed lots of GUI tweaks, and helped the project take it's first steps.

<h1>Gentoo port dies</h1>

Weelkin successfully convinced me, much to my chagrin, to abandon the gentoo port and go all out  <a href="http://openelec.tv/" target="_blank">OpenELEC</a>. He was right. We got so much for free, and our builds that used to take 2 hours were down to 5 minutes. Rapid development was finally enabled.

<h1>OpenELEC growing pains</h1>

The first really stable  <a href="http://openelec.tv/" target="_blank">OpenELEC</a> was 0.1.17, which was a landmark build, including Wifi and autoupdate. We pushed through it, and did some more merges and sped things up a bit.

<h1>RasPlex.com launches</h1>

Dale's scheme to release the rasplex website on Pi day is ignored by most of the world. Until the day after Pi day, when there is a media flurry resulting from engadget and Elan's blog. Over night, the user base of RasPlex explodes.

<h1>GUI installers and stability fixes</h1>

The GUI installers are released around the same time as a very stable, polished build 0.1.30 (much better than the 0.1.27 available at launch day).

<h1>Here way are</h1>

And this brings us to today. It's been a wild ride! About 2 months since the birth of RasPlex, we have a stable(ish) build. There is still lots of work to do, including some major caching fixes that are finally underway.

<h1>The future</h1>

RasPlex plans to deliver on it's code of ethics:

<ul>
<li>Users above all else.</li>
<li>By the community, for the community.</li>
<li>Relationships over egos.</li>
<li>Everything must be FOSS.</li>
<li>Collaboration with other HTPC projects over competition.</li>
</ul>

We are focused on collaborating with the existing HTPC projects,  <a href="http://xbian.org/" target="_blank">Xbian</a>,  <a href="http://openelec.tv/" target="_blank">OpenELEC</a>, and  <a href="http://www.raspbmc.com/" target="_blank">Raspbmc</a>. We have offered our GUI installer to each of them, and hope that their users can benefit from it as much as ours do, so that we can work together to improve it. Users first.

There have been some ego issues with these XBMC projects, and we want to put all of that in the past. We work better together than we do in competition. While competition is healthy and necessary, the goal should be to share our work, rather than reinvent the wheel over and over. 

<h1>HTPC Unite</h1>

I call to all developers of XBMC for Raspberry pi, be you core devs, or devs for  <a href="http://openelec.tv/" target="_blank">OpenELEC</a>,  <a href="http://www.raspbmc.com/" target="_blank">Raspbmc</a>, or  <a href="http://xbian.org/" target="_blank">XBian</a> to join us! This is the true spirit of Open source. Together, we can destroy proprietary platforms like AppleTV and Roku. Divided, we are just rogue hobbyists projects reinventing each others works.

RasPlex has benefited from all of these projects, and is happy to give back in any way it can. We will be releasing  <a href="http://openelec.tv/" target="_blank">Raspbian</a> ports soon, and plan to borrow on the work of  <a href="http://www.raspbmc.com/" target="_blank">Raspbmc</a> and  <a href="http://xbian.org/" target="_blank">XBian</a>. All of our work will be publicly available, and we hope that we are able to improve these projects as much as  <a href="http://openelec.tv/" target="_blank">OpenELEC</a> has improved us.

<h1>Take frodo to the users</h1>

How fitting it is that we need to work together to take frodo (the latest release of XBMC, which powers all of these projects) to the users, as Frodo of Lord Of the Rings set out to take the ring to Mordor.

Elrond convened a council of Elves, Dwarves, and Humans to meet this end. They didn't all get along at first, but they learned to. And together, they got it done.
