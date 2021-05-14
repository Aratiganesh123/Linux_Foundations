#!/bin/awk -f
BEGIN{
print "Value\tSensorNumber\t";
FS=","
RS="!"
OFS="\t"
ORS="\n"
}
{
$1=$1
#for(i = 1; i <= NF; i++) { print $1 $2}
if(NF==2)
{
print $0
}
}
