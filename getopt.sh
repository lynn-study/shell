#!/bin/bash

set -- `getopt ab:c "$@"`

while [ -n "$1" ]
do
        case $1 in
                -a)
                        echo "found -a";;
                -b)
                        var=$2
                        echo $var
                        shift;;
                -c)
                        echo "found -c";;
                --)
                        shift
                        break;;
        esac
        shift
done

count=1
for par in "$@"
do
        echo "$count: $par"
        count=$[ $count + 1 ]
done
