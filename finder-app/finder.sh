#!/bin/bash

# Check if the correct number of arguments are passed
if [ $# -ne 2 ]; then
    echo "Error: Missing arguments. Usage: finder.sh <filesdir> <searchstr>"
    exit 1
fi

# Assign arguments to variables
filesdir="$1"
searchstr="$2"

# Check if the first argument is a valid directory
if [ ! -d "$filesdir" ]; then
    echo "Error: $filesdir is not a valid directory."
    exit 1
fi

# Count the number of files in the directory and subdirectories
file_count=$(find "$filesdir" -type f | wc -l)

# Count the number of lines that contain the search string
matching_lines=$(grep -r "$searchstr" "$filesdir" | wc -l)

# Output the result
echo "The number of files are $file_count and the number of matching lines are $matching_lines"
