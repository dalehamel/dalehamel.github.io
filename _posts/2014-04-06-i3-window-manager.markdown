---
title: i3 Window Manager
modified: 2014-04-06
layout: post
comments: true
tags: []
---

# notion is dead. Long live i3!

Years ago when Ubuntu introduced Unity, I desperately sought an alternative window manager. I wasn't too happy with gnome, and a friend of mine recommended i tiling window manager he'd been using - ion3. ion3 was pretty good, I really liked how minimalist it was - enabling me to easily create and destroy workspaces, and while defining tiling layouts was a bit clunky (involved using menus), and the configuration was a mess (highly obfuscated lua), it did pretty will for me for several years.

Then the creator of ion3 had a shitfit (read about [Tuomov and why he stopped maintaining ion3](http://tuomov.iki.fi/software/), it's quite amusing), and the project was forked to 'notion' or 'not-ion', but was effectively unmaintained. The multi-monitor support has always been pretty terrible, and it's got quite a few nasty bugs (random crashes, chrome tabs are not dockable, gimp is super broken).

The actual reason that spurred me to switch to a different tiling window manager was the terrible multihead support. ion3 requires an actual separate X display to display workspaces on their own screen, rather than its default behaviour which is to stretch between the two. This requires ZaphodHead functionality, which is sketchy at best in open source nvidia drivers. 

So, I sought out to try to replace notion/ion3. My main criteria was to find a window manager that solved my multihead problem, and was easy to configure a setup that was similar what I was used to in ion3.

## awesome

The first candidate I tried was [awesome wm](http://awesome.naquadah.org/). All in all, it's a nice piece of software. I got a setup that was pretty close to my ion3 setup fairly easily, but features that I needed like a scratchpad and a customizable status bar were difficult to configure, and the docs were kind of out of date and shitty because of incompatibilities between versions. It's scripted in lua, and the lua framework is definitely better to program in than ion3. 

What killed awesome for me was the predefined tiling layouts. They are just too much of a pain in the ass to configure, and I don't like the idea of cycling linearly through them. It's kind of a cool concept, but it's just not practical for me, and was too much of an aberration from the simple ion3 setup I was used to. So I kept looking.

## i3 - love at first sight

Well, not quite. At first there were a few major pain points with i3. The biggest one was that i3 by default wants you to cycle through workspaces in order and has no concept of grouping workspaces between physical displays. So, you would find yourself alternating a lot between different displays if you aren't careful which order your create your workspaces in.

But none of this matters. i3 has hands down the best scripting interface of any tiling window manager I've tried. The magic sauce is 'i3-cmd' which lets you query the wm state in json objects, and inject window management commands. So, you can add a simple hook into your base config to call a script that queries the wm state, then inject whatever you want to get it to your desired state. This is incredible powerful. Using less than a hundred lines of ruby I was able to script an even better verison of the ion3 tiling and workspace management I was used to.

On top of that, the i3-status is extremely simple and refreshingly barebones. The whole development mentality of i3 has been to keep it clean and simple, and i3 has succeeded. It's probably only fitting that I ended up with i3, since people always thought I was talking about i3 anyways when I mentioned that I used ion3. I wonder if that confusion was intentional by the authors...

# Give i3 a shot!

If you're looking to set up a tiling WM I highly recommend i3. Awesome is pretty great too, so you may as well give it a go. 
