#!/bin/bash

#take the input file name which is passed as an argument
for file in "$@"
do 
  grep -o '\s[0-9]\+[.][0-9]\+[.][0-9]\+[.][0-9]\+\s' $file|sed  's/^ *//g' |awk 'BEGIN{FS="."}{{if(($1>=0 && $1<=255) && ($2>=0 && $2<=255) && ($3>=0 && $3<=255) && ($4>=0 && $4<=255)){if($1 >=0 && $1<=127){print $1"."$2"."$3"."$4 "A"}else if($1>127 && $1<=191){print $1"."$2"."$3"."$4 "B"}else if($1>191 && $1<=223){print $1"."$2"."$3"."$4 "C"}else if($1>223 && $1<=239){print $1"."$2"."$3"."$4 "D"}else if($1>239 && $1<=247){print $1"."$2"."$3"."$4 "E"}else {print $1"."$2"."$3"."$4 "Not Defined"}}}}'
done
#find the valid IP addresses present in the input file

#print the valid IP addresses found

