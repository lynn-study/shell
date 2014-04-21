#!/bin/bash

for var in a b c d e f
do
echo "the current is $var"
done

for var in I don\'t know if "this'll" work
do
echo "word:$var"
done

list="a b c d e"
list=$list" f"

for var in $list
do
echo "word:$var"
done

file="for.sh"

for state in `cat $file`
do
echo "word:$state"
done

IFS.OLD=$IFS
IFS=$'\n'
for state in `cat $file`
do
echo "word:$state"
done
IFS=$IFS.OLD

for file in /home/x/bin/*
do
        if [ -d "$file" ]
        then
                echo $file is dir
        elif [ -f "$file" ]
        then
                echo $file is file
        fi
done

for (( a = 0; a <= 10; a++ ))
do
        echo "$a"
done
