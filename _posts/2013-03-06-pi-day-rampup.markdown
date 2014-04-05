---
title: Pi Day Rampup
layout: post
tags: []
---


Crazy busy!
===========

As you may know, we are planning a beta release of RasPlex for Pi day, March 14th. I've been crazy busy setting this up, and making sure we are running on all cylinders for when this happens. Rasplex will have it's own domain at [rasplex.com](http://www.rasplex.com), and we'll actually have official documentation and what not there. We've had a lot of great work going on, and as you may know we have releases as high as 0.1.19 out, but these are debug releases. I recommend 0.1.17 as it is currently the most stable, and it is the one that I am using right now. It will likely be the main basis for the Beta candidate, as the 0.1.20 builds I've been running have issues resulting from a recent merge with OpenELEC that has broken playback.

Major improvements identified
=============================

We have identified a severe network error that can cause rasplex to slow down the local network under certain conditions, a fix is underway. More importantly, after a great deal of investigation I now believe I understand why the UI is so laggy. I have talked with Elan about a solution to this, and we have a good plan to fix it. I'm hoping I'll be able to roll it out within a week or two.

Vote for a logo!
================

We are currently hosting a [logo competition](https://trello.com/board/rasplex-com/51332020cc5f0f487e00770b)! You can submit your own designs directly to me, or through the trello system if you are already a member (just ask me on the chat service and i'll invite you), or comment with a link on this post with your design. Just make sure any submissions don't violate the [trademark rules](http://www.raspberrypi.org/trademark-rules)

Sneak preview...
================

We are cooking up a few ways to fund RasPlex. I would like to get preflashed SD cards, as well as the official RasPlex case into a few online vendors. The case in this picture is a prototype that a friend of mine and I designed and 3D printed together. [![](http://blog.srvthe.net/wp-content/uploads/2013/03/premiumrplex-300x218.jpg "premiumrplex")](http://blog.srvthe.net/wp-content/uploads/2013/03/premiumrplex.jpg) A few things to note:

-   I'm applying for a government grant to get the initial production run done (injection molding is expensive)
-   I want to make the case as inexpensive as possible (ie, if it costs 10 to make, sell for 15). I want **everyone** to have this case, I don't care about gross margin.
-   The proceeds from the case go to RasPlex (which I believe will soon become a corporation), where it will be used as the current funds are being used - to improve the project.
-   I have not withdrawn any funds to date, nor do I plan to. I want to reinvest every penny, and see how big RasPlex can get. Support this dream by buying a case!
-   The case will re-route the power  to be on the same side as the ethernet/USB in the mark2 (this is mark1)
-   The case will include an IR receiver, using the GPIO pins instead of USB (and probably a very cheap remote will be recommended)
-   This is a 2 piece case, but a 3 piece kit. Shown in the picture is the main chassis with the VESA mounting plate. There is a second plate that will have friction feet instead of VESA arms, to use it as a set top box instead.
-   The VESA arms will fit both 100mm and 75mm
-   I'll be starting an indygogo for this case as well

Stay tuned!
===========

Thanks everyone or being so patient during the Pi day ramp up. I want to get back into regular releases ASAP, I just want to make sure this roll out goes off without a hitch!
