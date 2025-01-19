#!/bin/bash

# Check if the correct number of arguments is passed
if [ $# -ne 2 ]; then
    echo "Error: Missing arguments. Usage: writer.sh <writefile> <writestr>"
    exit 1
fi

# Assign arguments to variables
writefile="$1"
writestr="$2"

# Create the directory path if it does not exist
dirpath=$(dirname "$writefile")

# Check if the directory exists, and create it if it does not
if [ ! -d "$dirpath" ]; then
    echo "Creating directory path: $dirpath"
    mkdir -p "$dirpath"

    # Check if the directory creation was successful
    if [ $? -ne 0 ]; then
        echo "Error: Could not create directory path $dirpath."
        exit 1
    fi
fi

# Try to write the string into the file (overwriting any existing file)
echo "$writestr" > "$writefile"

# Check if writing to the file was successful
if [ $? -ne 0 ]; then
    echo "Error: Could not create or write to the file $writefile."
    exit 1
fi

echo "Successfully wrote to $writefile."
