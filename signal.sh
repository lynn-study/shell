#!/bin/bash

trap "echo 'sorry you can not stop it by Ctrl-c'" SIGINT SIGTERM

echo "this is a test"

count=1
while [ $count -le 3 ]
do
        echo "Loop $count"
        sleep 2
        (( count++ ))
done

trap "echo 'bye bye'" EXIT

trap - EXIT

#nohup ./script.sh
