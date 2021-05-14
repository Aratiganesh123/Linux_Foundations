#!/bin/bash

#take the input of csv file name which is passed as an argument
for file in "$@"
do 
	 sort -k1 -t, $file
done

#sort the csv file alphabetically based on first column data

