#! /bin/bash

# loop through all files with a name starting with "CHAPTER"
for file in CHAPTER*
do
  # extract the chapter number from the file name
  chapter_num=$(echo "$file" | sed 's/CHAPTER //')

  # convert the chapter number to lowercase
  chapter_num=$(echo "$chapter_num" | tr '[:upper:]' '[:lower:]')

  # create the block of text to be appended to the file
  block="---
title: \"${file%.*}\"
date: 2022-11-20T09:03:20-08:00
draft: true
---
"

  # rename the file to be lowercase
  mv "$file" "chapter$chapter_num"

  # prepend the block of text to the file
  echo "$block" | cat - "chapter$chapter_num" > temp && mv temp "chapter$chapter_num"
done
