#! /bin/bash
echo " this is my first bash scripting"
GREETING="Welcome"
User=$(whoami)
Day=$(date)
echo "$GREETING to $User on day $Day"

#user input
read -p "Enter your name:" name
echo "length of your name is ${#name}"

