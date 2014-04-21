#!/bin/bash

for (( i = 0; i < 10; i++ ))
do
        echo $i
done > log

for (( i = 10; i > 0; i-- ))
do
        echo $i
done | sort

var=10
if (( $var ** 2 > 90 ))
then
        (( var1 = $var ** 2))
        echo $var $var1
fi

if [[ $USER == x* ]]
then
        echo hello $USER
fi

count=1
for pa in "$*"
do
        echo $count : $pa
done

count=1
for pa in "$@"
do
        echo $count : $pa
done
