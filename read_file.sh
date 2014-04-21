#!/bin/sh

IFS.OLD=$IFS
IFS=$'\n'

for line in `cat /etc/passwd`
do
        echo $line
        IFS=:
        for word in $line
        do
                echo $word
        done
        IFS=$IFS.OLD
done
