#!/bin/bash

# Set the input file name using the first argument
input_file=$1

# Set the Roman number pattern
pattern="# CHAPTER [0-9]+"

# Read the input file line by line
while IFS= read -r line; do
  # Check if the line matches the Roman number pattern
  if [[ $line =~ $pattern ]]; then
    # If the line is a Roman number, set it as the current number
    number=$(echo "$line" | sed 's/# //')
    echo "$line" >> "$number.md"
  else
    # If the line is not a Roman number, append it to the corresponding file
    echo "$line" >> "$number.md"
  fi
done < "$input_file"
