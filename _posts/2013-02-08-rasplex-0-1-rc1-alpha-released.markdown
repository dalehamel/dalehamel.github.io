---
title: Rasplex 0 1 Rc1 Alpha Released
modified: 2013-02-08
layout: post
redirect_from:
  - /archives/519/
  - /blog/?p=519/
tags: []
---


Good news everyone!
===================

(the above must be read with a professor Farnsworth voice), ala httpv://www.youtube.com/watch?v=HHfOejlvVsY Rasplex 0.1-rc1 alpha is ready for use, get it [here](https://rasplex.srvthe.net/rasplex-stable.img.zip). I consider this to be the best build yet, hands down. Here is the [feature card for the release](https://trello.com/c/1oMwUL5L), but here's a summary of what's been added

-   Clean OpenGL drawing (note, if you leave it running over night, it'll cache all of the images, making it run much faster)
-   Updating plexht now works again via emerge -avG plexht
-   Gui is now very much working and very useable
-   Ability to toggle fan art (thanks to El Massman)
-   You can now get the rasplex version with the rasplex-version command
-   You can enable/disable plex autostart with the commands "pht-autostart-on" and "pht-autostart-off"
-   Airplay is now supported by default
-   Boots up faster without DHCP spam

From now on, all versions will be numbered. I may release "unstable" builds once in a while, as previews, but know what you're getting into with them. I am taking down the original image, and the unstable image - this will be the only image available for now.

Not out of the woods just yet...
================================

There's still lots to fix. In some cases, plex will just randomnly crash, not sure why yet. libCEC support is still a work in progress. And other issues I'm sure.

The road ahead
==============

Aside from obvious fixes and feature requests (still want to speed up the GUI some more), we now have some folks actively volunteering their time to port the package to raspbian and openelec. As for myself, I will be spending most of my time getting CEC to work (though I have no way of testing it sadly, which is why it's been so slow), and merging my code with upstream HEAD to bring in features that Tobias has added. You can view the plan for [rasplex-0.1.5](https://trello.com/c/dCy1Pd0a) on the [trello board](https://trello.com/board/plex-on-raspberry-pi/510c4d34e1d17df66c00092a)

Thanks again to everyone who has donated, and volunteered their time
====================================================================

I am keeping the donation money in the paypal account until we at least have a good beta release, then I plan on dividing it up amongst the top contributing developers (tempted as I may be to hoard it all to myself, I think it's a great incentive to get people to help ;) Speaking of donations, you can donate at the [main srvthe.net portal](https://srvthe.net), or by scrolling to the bottom of this page. I want to particularly call out a few stars here...

-   Tobias H. for making and maintaining PlexHT
-   LongChair, for being willing to test broken, terrible builds and put up with my constant "it'll be in the next build"
-   ElMassman, for all of his help with speeding up the GUI, especially in the early early days (hard to believe that was like, 2 weeks ago)
-   Jsmith79, for figuring out that we can now use the OS-X mediastream skin (which El then modified to add the ability to disable fan art)
-   Curtis Vogt (Omus) for airplay support
-   Everyone else in IRC, plex chat, and on the forums!

  Did I mention you can [donate to support this project?](https://srvthe.net) \</shamelessdonationtrolling\>
