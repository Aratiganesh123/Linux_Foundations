
#!/bin/bash

#take the input of csv file name which is passed as an argument
for file in "$@"
do
       grep '^"R\|^R' $file| sort -k1 -n -t,
done


#print complete details only if the first column data is starting with letter "R"
#and sort it alphabetically based on first column data

