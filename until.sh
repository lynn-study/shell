#!/bin/sh

var=100

until [ $var -eq 0]
do
        echo $var
        var=`expr $var - 1`
done
