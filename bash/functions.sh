#! /bin/bash

#functions demo

function hello()
{
    echo "Hello world!"
}

function greet()
{
    echo "hello $1 and your age is $2"
}

function createdirfile()
{
    mkdir newdir
    touch "newdir/filewrite.txt"
    echo "New directory and file created" > "newdir/filewrite.txt"
}

hello
read -p "enter your name: " name
read -p "enter your age: " age
greet "$name" "$age"
createdirfile