---
layout: post
status: publish
published: true
title: Yet another Linux Command line guide.
author: dale.hamel
author_login: umhameld
author_email: daleha@gmail.com
wordpress_id: 164
wordpress_url: http://prometheus.gotdns.com:88/wordpress/?p=164
date: 2012-02-25 05:56:55.000000000 -05:00
categories:
- FOSS
- git
- Tutorials
tags:
- linux
- command line
- shell
- bash
- gnu
- hacking
- hacker
comments:
- id: 11
  author: Andre Hamel
  author_email: AndreLHamel@gmail.com
  author_url: ''
  date: '2012-02-26 01:46:32 -0500'
  date_gmt: '2012-02-26 01:46:32 -0500'
  content: mkdir, make directory; rmdir, remove directory; cp, copy file/s; mv, move
    files/s
---
<h1>The basics</h1>

<p>No guide is going to be able to "teach you command line". This post will attempt to point out the most useful commands for an absolute novice.</p>

<h1>The commands</h1>

<h2>Shell navigation</h2>

<h3>ls</h3>

<p>The ls command is probably the command that I use most frequently. It is a very simple command; it just shows the contents of the current directory (note: directory = folder). Some usage examples are below</p>

<p>[crayon lang="sh"] ls #(simply list the contents of the current directory to the terminal) [/crayon]
[crayon lang="sh"] ls -l # list the contents of the current directory, one per line, full details on things like permissions, date modified, etc. This will also differentiate files from folders by adding a "d" to the front of the permission list [/crayon]
[crayon lang="sh"] ls -la # like ls -l, but also shows hidden (dot) files. [/crayon]
[crayon lang="sh"] ls .. # list the contents of the parent directory [/crayon]</p>

<h3>pwd</h3>

<p>The pwd command shows you what directory (folder) you are currently in. It can be helpful if you get lost in the file system.</p>

<p>[crayon lang="sh"] pwd #(show your current directory)[/crayon]</p>

<p>Sample output:</p>

<p>[crayon lang="sh"] /home/myusername/Documents/myproject/ [/crayon]</p>

<h3>cd</h3>

<p>The cd command is used to change directory. Together, the cd, pwd, and ls commands give you the basic tools you need to navigate the filesystem.</p>

<p>[crayon lang="sh" lang="sh"] cd .. # (change to parent directory, this will update the output of the "pwd" command to reflect that you are now one level up).[/crayon]
[crayon lang="sh"] cd myfolder/ # changes directory into the folder named "myfolder" within the current directory.[/crayon]
[crayon lang="sh"] cd OR cd ~ OR cd $HOME # takes you to your home directory[/crayon]
[crayon lang="sh"] cd / # takes you to the root of the filesystem, not often useful unless you really know what you are doing and/or have root access.[/crayon]</p>

<h2>File Based Commands</h2>

<h3>cp</h3>

<p>The cp command is short for "copy". It can be used to copy a single file, or to copy a directory.</p>

<p>[crayon lang="sh"] cp myfolder/myfile . # copies myfile from myfolder to the current folder[/crayon]
[crayon lang="sh"] cp -r myfolder/ backup # copies the entire contents of myfolder to backup[/crayon]</p>

<h3>rm</h3>

<p>The rm command is used to delete files and directories. Warning: it cannot be undone!</p>

<p>[crayon lang="sh"] rm myfile.txt # deletes myfile.txt[/crayon]
[crayon lang="sh"] rm -rf myfolder # deletes myfolder[/crayon]</p>

<h3>wget</h3>

<p>The wget command is useful for downloading files from websites. <strong>wget is not a standard Unix command</strong>, but most linux distributions include it as it is extremely useful.</p>

<p>[crayon lang="sh"] wget http://somewebsite/somefile.zip [/crayon]</p>

<h3>cat</h3>

<p>The cat command unfortunately has nothing to do with cats. Cat is useful for quickly showing the contents of a file to the terminal.</p>

<p>[crayon lang="sh"] cat myfile.txt # spits out the contents of myfile.txt to the terminal. If myfile.txt is large, the terminal buffer may overflow.[/crayon]</p>

<h2>Finding Files or File Contents</h2>

<h3>grep</h3>

<p>The grep command is useful for finding text within a file. It is a little bit more advanced, but also more powerful.</p>

<p>[crayon lang="sh"] grep "text i want to find" myfile.txt # searches myfile.txt for "text i want to find". If it is found, the lines containing the match will be printed to the terminal, otherwise, nothing is printed[/crayon]
[crayon lang="sh"] grep -r "text i want to find" . # searches every file and folder rooted at the current directory for "text i want to find". Useful if you are searching through lots of files.[/crayon]</p>

<h3>find</h3>

<p>The find command is useful for finding files by name, rather than searching their contents. It is also useful for quickly listing all files and folders in a directory, kind of like the ls commands, but it also works on directories inside of the current directory, and so on.</p>

<p>[crayon lang="sh"] find . # shows all files and folders rooted at the current directory, including subdirectories.[/crayon]
[crayon lang="sh"] find . -name "<em>.txt" # searches all directories for a file with the suffix ".txt". You can use any text, but the "</em>." combination is useful for finding filetypes[/crayon]
[crayon lang="sh"] find . | grep <em>.txt # exactly the same as the above command[/crayon]
[crayon lang="sh"] find . -name "</em>.txt" | xargs rm # finds all .txt files in the current directory and subdirectories, and deletes them. Caution: this can be dangerous![/crayon]</p>
