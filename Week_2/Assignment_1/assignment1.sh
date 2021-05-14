#!/bin/bash

#take the input file name which is passed as an argument
for file in "$@"
do
	count=$(grep -wo -c  '[0-9]\+' $file)
	echo "Number of lines having one or more digits are:" $count
	echo "Digits found:"
	grep -wo  '[0-9]\+' $file
done
#find the number of lines with one or more digits present in the input file

#print the number of line with one or more digits found

#find the digits present in the input file

#print the digits found


