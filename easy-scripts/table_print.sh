#!/bin/bash

# Reading The Number
read -p "Enter the Number: " num

# Exiting if it's not an Integer
if [[ ! "$num" =~ ^-?[0-9]+$ ]]; then
    echo "Error: Not a valid number."
    exit 1
fi

# Exiting if it's a 0 or Negative Number
if [[ $num -lt 1 ]]; then
    	echo "Dont Enter 0 or Negative Number"
	exit 1
fi

# Printig Table
for (( i=1; i<=10; i++ )); do
	product=$((i*num))
	echo "$num X $i = $product"
done
