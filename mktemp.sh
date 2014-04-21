#!/bin/bash

tempfile=`mktemp test19.XXX`
exec 3>$tempfile

echo "test" >&3

cat $tempfile

exec 3>&-

rm -f $tempfile 2> /dev/null

tempfile=`mktemp -t test.XXX`
echo $tempfile

tempdir=`mktemp -d test.XXX`
cd $tempdir
