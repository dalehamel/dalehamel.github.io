---
title: Dd Wrt Unleash Your Router
layout: post
tags: []
---

If you're like me, you are disappointed with just about every router you buy. Ever since I was a kid, my family had the worst luck with routers - we basically had to get a new one every year, because the old ones would fizzle out.
What makes this even more frustrating is how little these routers can do - they are essentially designed to be disposable, and their firmware is designed to be either too simple or to obscure to be useful.

This is why I was so excited when I heard about DD-WRT - Linux for your router!

# The story 

A colleague of mine heard my complaining about routers one day at work. He triumphantly bragged how he spent only 30 dollars on his D-Link router, and how it could do everything he wanted it to and more. This was, of course, because of the DD-WRT firmware that he flashed it with. In his own words "It turns a 30 dollar router into a 300 dollar router with just a few clicks".

I was so excited, I went out and bought 2 of the very same router (using one as a network switch, but effectively keeping it around as a backup).

# The features

+ Port forwarding like a boss using Linux IP tables
+ Graphical bandwidth tracking by day/month (useful if you have a download limit!)
+ Awesome QoS by MAC address - give certain computers priority over others, and give web browsing priority over, say torrenting
+ SSH into your router, install pretty much any Linux application!!!
+ Boost the wireless signal range if you find your wireless is always crapping out.
+ DDNS functionality in case you have a dynamic ip.
+ Much, much more

# Caveats

+ You have to <a href="https://www.dd-wrt.com/wiki/index.php/Supported_Devices" Dd Wrt Unleash Your Router="investigate">investigate</a>the router to make sure you buy a supported model and hardware revision 
+ There is a bug where you have to manually enter an iptables rule to get loopback working - this only matters if you are developing and hosting a website locally.
+ The number of options can be intimidating!

# OpenWRT

If you can't get a supported version of dd-wrt working for you, check out OpenWRT - you can basically hack together your own router firmware if you know what you're doing.
