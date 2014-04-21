#!/bin/bash

var1=5
var2=2
var=`expr $var1 \/ $var2`
echo "$var1 * $var2 = $var"

var1=`echo "scale=4; 3.44 / 5" | bc`
echo $var1

var1=100
var2=45
var3=`echo "scale=4; $var1 / $var2" | bc`
echo $var3

var=`echo "scale=4; 5.2343 + 5.4545" | bc`
echo "5.2343 + 5.4545 = $var"

var=`echo "scale=10; 5.2343 * 5.4545" | bc`
echo "5.2343 8 5.4545 = $var"

count=$[ $count + 1 ]
count=`expr $count + 1`
count=`echo "$count +1" | bc`
(( count++ ))
let count+=1
let count++
count=$(( $count + 1))
