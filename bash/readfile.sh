#! /bin/bash

#reading file and printing its content
LINE=1
while read -r CURRENT_LINE
do
echo "$LINE number is: $CURRENT_LINE"
((LINE++))
done < "./file1.txt"

# below code to print outout on file2.txt
#done < "./file1.txt" > "./file2.txt"