#!/bin/bash

while getopts ab:c opt
do
        case $opt in
                a)
                        echo "found -a";;
                b)
                        var=$OPTARG
                        echo $var;;
                c)
                        echo "found -c";;
                *)
                        echo "unknow opt"
        esac
done

shift $[ $OPTIND - 1 ]

count=1
for par in "$@"
do
        echo "$count: $par"
        count=$[ $count + 1 ]
done
