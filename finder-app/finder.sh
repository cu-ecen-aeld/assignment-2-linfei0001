#!/bin/bash

# check input parameters

if ["$#" -ne 2 ]; then
	echo "Error: Two arguments are required."
	echo "Usage: $0 <filesdir> <searchstr> "
	exit 1
fi

# assign arguments to variables

filesdir=$1
searchstr=$2

if [! -d "$1"]; then
	echo "Error: $filesdir is not a directory."
	exit 1
fi

num_files=$(find "$filesdir" -type f | wc -l)


num_matching_lines=$(grep -r "$searchstr" "$filesdir" 2>/dev/null | wc -l)

echo "The number of files are $num_files and the number of matching lines are $num_matching_lines"


