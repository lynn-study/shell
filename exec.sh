#!/bin/bash

#ls -al bu 2> err
#ls -al bu 1> stout
#ls -al bu &> err & stout
#
#echo "this is an error" >&2
#echo "this is normal"
#
#exec 2>error
#
#exec 1>out
#
#exec 0< testfile
#
#exec 3>test3
#exec 4>>test4
#
#echo "this is show on test3" >&3
#echo "this is show on test4" >&4
#
#exec 3>&1
#exec 1>test_1
#exec 1>&3
#
#exec 6<&0
#exec 0<&test1
#exec 0<&6

exec 3<> testfile
read line <&3
echo "Read: $line"
echo "this is a test line" >&3

# close the file
exec 3>&-

exec 7>test
lsof -a -p $$

ls 2> /dev/null

cat /dev/null > testfile
