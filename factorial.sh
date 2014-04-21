#!/bin/bash

factorial()
{
        if [ $1 -eq 1 ]
        then
                echo 1
        else
                local tmp=$[ $1 - 1 ]
                local ret=`factorial $tmp`
                echo $[ $ret * $1 ]
        fi
}

read -p "enter valud:" value

ret=`factorial $value`

echo "the factorial of $value is $ret"
