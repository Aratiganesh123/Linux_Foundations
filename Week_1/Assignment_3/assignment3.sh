#!/bin/bash

#take the input of csv file name which is passed as an argument
for file in "$@"
do
       cut -d"," -f 1,3 $file|grep '^S\|^"S'|sort -s -k1,1 -t, 
	#grep '^S\|^"S' $file|cut -d"," -f 1,3|sort  -k1,1 -s -n -t, 
done



#print the details of only 1st and 3rd column, if the first column data starts with letter "S"
#and sort it alphabetically based on first column data

