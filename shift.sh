#!/bin/bash

count=1
while [ -n "$1" ]
do
        echo "Parameter : $count = $1"
        #count=$[ $count + 1 ]
        #count=`expr $count + 1`
        count=`echo "$count +1" | bc`
        #(( count++ ))
        shift
done
