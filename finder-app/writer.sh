#!/bin/bash

# Check if the correct number of arguments are provided
if [ "$#" -ne 2 ]; then
    echo "Error: Two arguments are required."
    echo "Usage: $0 <writefile> <writestr>"
    exit 1
fi

writefile=$1
writestr=$2


# Extract the directory path from the writefile path
writedir=$(dirname "$writefile")

mkdir -p "$writedir"

echo "$writestr" > "$writefile"

# Check if the file was created successfully
if [ $? -ne 0 ]; then
    echo "Error: Could not create the file $writefile."
    exit 1
fi
