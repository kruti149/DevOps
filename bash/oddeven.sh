#! /bin/bash

echo "script to find odd even"
read -p "enter number" number

if [ "$(( $number % 2 ))" -eq 0 ]
then echo "this is even"

elif [ "$(( $number % 2 ))" -eq 1 ]
then echo "this is odd"

else
echo "invalid number"
fi 
