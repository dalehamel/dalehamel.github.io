---
title: Yet Another Linux Command Line Guide
modified: 2012-02-25
layout: post
redirect_from:
  -/archive/164
  -/blog/?p=164
tags: []
---


The basics
==========

No guide is going to be able to "teach you command line". This post will attempt to point out the most useful commands for an absolute novice.

The commands
============

Shell navigation
----------------

### ls

The ls command is probably the command that I use most frequently. It is a very simple command; it just shows the contents of the current directory (note: directory = folder). Some usage examples are below

[crayon lang="sh"] ls \#(simply list the contents of the current directory to the terminal) [/crayon] [crayon lang="sh"] ls -l \# list the contents of the current directory, one per line, full details on things like permissions, date modified, etc. This will also differentiate files from folders by adding a "d" to the front of the permission list [/crayon] [crayon lang="sh"] ls -la \# like ls -l, but also shows hidden (dot) files. [/crayon] [crayon lang="sh"] ls .. \# list the contents of the parent directory [/crayon]

### pwd

The pwd command shows you what directory (folder) you are currently in. It can be helpful if you get lost in the file system.

[crayon lang="sh"] pwd \#(show your current directory)[/crayon]

Sample output:

[crayon lang="sh"] /home/myusername/Documents/myproject/ [/crayon]

### cd

The cd command is used to change directory. Together, the cd, pwd, and ls commands give you the basic tools you need to navigate the filesystem.

[crayon lang="sh" lang="sh"] cd .. \# (change to parent directory, this will update the output of the "pwd" command to reflect that you are now one level up).[/crayon] [crayon lang="sh"] cd myfolder/ \# changes directory into the folder named "myfolder" within the current directory.[/crayon] [crayon lang="sh"] cd OR cd \~ OR cd \$HOME \# takes you to your home directory[/crayon] [crayon lang="sh"] cd / \# takes you to the root of the filesystem, not often useful unless you really know what you are doing and/or have root access.[/crayon]

File Based Commands
-------------------

### cp

The cp command is short for "copy". It can be used to copy a single file, or to copy a directory.

[crayon lang="sh"] cp myfolder/myfile . \# copies myfile from myfolder to the current folder[/crayon] [crayon lang="sh"] cp -r myfolder/ backup \# copies the entire contents of myfolder to backup[/crayon]

### rm

The rm command is used to delete files and directories. Warning: it cannot be undone!

[crayon lang="sh"] rm myfile.txt \# deletes myfile.txt[/crayon] [crayon lang="sh"] rm -rf myfolder \# deletes myfolder[/crayon]

### wget

The wget command is useful for downloading files from websites. **wget is not a standard Unix command**, but most linux distributions include it as it is extremely useful.

[crayon lang="sh"] wget http://somewebsite/somefile.zip [/crayon]

### cat

The cat command unfortunately has nothing to do with cats. Cat is useful for quickly showing the contents of a file to the terminal.

[crayon lang="sh"] cat myfile.txt \# spits out the contents of myfile.txt to the terminal. If myfile.txt is large, the terminal buffer may overflow.[/crayon]

Finding Files or File Contents
------------------------------

### grep

The grep command is useful for finding text within a file. It is a little bit more advanced, but also more powerful.

[crayon lang="sh"] grep "text i want to find" myfile.txt \# searches myfile.txt for "text i want to find". If it is found, the lines containing the match will be printed to the terminal, otherwise, nothing is printed[/crayon] [crayon lang="sh"] grep -r "text i want to find" . \# searches every file and folder rooted at the current directory for "text i want to find". Useful if you are searching through lots of files.[/crayon]

### find

The find command is useful for finding files by name, rather than searching their contents. It is also useful for quickly listing all files and folders in a directory, kind of like the ls commands, but it also works on directories inside of the current directory, and so on.

[crayon lang="sh"] find . \# shows all files and folders rooted at the current directory, including subdirectories.[/crayon] [crayon lang="sh"] find . -name "*.txt" \# searches all directories for a file with the suffix ".txt". You can use any text, but the "*." combination is useful for finding filetypes[/crayon] [crayon lang="sh"] find . | grep *.txt \# exactly the same as the above command[/crayon] [crayon lang="sh"] find . -name "*.txt" | xargs rm \# finds all .txt files in the current directory and subdirectories, and deletes them. Caution: this can be dangerous![/crayon]
