
Help me to write a bash script.
I have multiple files called 'CHAPTER <number>', for example:
"CHAPTER 1.md", "CHAPTER 12.md".

I want to rename them to be lower case without spaces, like:
"CHAPTER 1.md" -> chapter1,
"CHAPTER 12.md" -> chapter12.

I also want to add a block of text on each file based on file name, for example:

In "CHAPTER 1" I want to add:
```
---
title: "CHAPTER 1"
date: 2022-11-20T09:03:20-08:00
draft: true
---
```
at the beginning of the file


In "CHAPTER 12" I want to add
```
---
title: "CHAPTER 12"
date: 2022-11-20T09:03:20-08:00
draft: true
---
```
at the beginning of the file
