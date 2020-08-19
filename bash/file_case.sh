#! /bin/bash

echo "This is file option demo"
FILE="file.txt"

if [ -f "$FILE" ]
then echo "This is file"

else
echo "This is not file"
fi 


#case stmt
read -p "Are you above 18? Y/N " ANS
case "$ANS" in 
[yY] | [yY][eE][sS])
echo "welcome to college"
;;
[nN] | [nN][oO])
echo "Sorry you have to wait"
;;
*)
echo "Please enter correct value Y/Yes or N/No"
;;
esac 
