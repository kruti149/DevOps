#! /bin/bash

#looping and renaming files

FILES=$( ls *.txt )
NEW="new"
for file in $FILES 
do
echo "value of file is: $file" 
#echo "value of ls files: $FILES"
        if [ $file = "file1.txt" ]
        then echo "renaming file 1"            
        else
        echo "renaming other files"
        fi 
mv $file $NEW-$file 
echo "file names changed"
done 