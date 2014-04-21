#!/bin/sh

user=x
if grep $user /etc/passwd
then
echo "the bash files for user $user are: "
ls -a /home/$user/.b*
else
echo "can not find the user"
fi

#if command1
#then
#commands
#elif command2
#then
#more commands
#fi

var1=10
var2=15

if [ $var1 -ge $var2 ]
then
echo "$var1 >= $var2"
else
echo "$var1 < $var2"
fi

user=rich
if [ $user = rich ]
then
echo "$user == rich"
else
echo "$user != rich"
fi

var1=baseball
var2=hoc
if [ $var2 \> $var1 ]
then
echo "$var2 > $var1"
else
echo "$var2 < $var1"
fi

val1=testing
val2=''

if [ -n "$val1" ]
then
echo "$val1 is not empty"
else
echo "$val1 is empty"
fi

if [ -z "$val1" ]
then
echo "$val1 is empty"
else
echo "$val1 is not empty"
fi

if [ -d $HOME ]
then
echo "Your home exists"
ls $HOME
else
echo "Your home is not exists"
fi

val1=10

if (( $val1 ** 2 > 90 ))
then
(( val2=$val1 **2 > 90 ))
echo "the square of $val1 is $val2"
fi
