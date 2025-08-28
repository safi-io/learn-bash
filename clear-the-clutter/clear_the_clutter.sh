#!/bin/bash

# Reading The Current Directory Files and Storing in a Variable
files=$(ls)

# For Counting the Files
count=1

# Iterating Over The Files
for f in $files; do

	# Skipping this Script
	if [[ "$f" = "clear_the_clutter.sh" ]]; then
		continue
	fi

    	# Split filename using IFS
	IFS="." read -r file_name ext <<< $f

	# If no Extension, Then Skip Iteration
	if [[ -z "$ext" ]]; then
		continue
	fi

	# Making Directory, If it does not Exist of that name
	$(mkdir -p $ext)

	# Moving the File into the Respected Folder
	$(mv $f $ext/)

	echo "Done File Number:" $count"."
	count=$((count + 1))

done

