#!/bin/bash

var=10
while [ $var -gt 5 ]
do
        echo $var
        var=`expr $var - 1`
        if [ $var -eq 8 ]
        then
        echo "break"
                break
        fi
done

var=10
while [ $var -gt 5 ]
do
        echo $var
        var=`expr $var - 1`
        if [ $var -eq 8 ]
        then
        echo "continue"
                continue
        fi
done

for (( i = 0; i < 10; i++ ))
do
        echo $i
        for (( j = 0; j < 10; j++ ))
        do
                echo $j
                if (( j == 2 ))
                then
                        break 2
                fi
        done
done

for (( i = 0; i < 10; i++ ))
do
        echo $i
        for (( j = 0; j < 10; j++ ))
        do
                echo $j
                if (( j == 2))
                then
                        continue 2
                fi
        done
done
