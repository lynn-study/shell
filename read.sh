#!/bin/bash

echo -n "Enter your name: "
read name
echo "Your name is $name"

read -p "Please enter your age: " age
echo "Your age is $age"

read -p "Please enter tree words: " var1 var2 var3
echo "first : $var1 "
echo "second : $var2 "
echo "three : $var3 "

read -p "Enter you want : "
for var in $REPLY
do
        echo "$var"
done

if read -t 3 -p "please enter your name: " name
then
        echo "your name is $name"
else
        echo
        echo "too slow"
fi

read -n1 -p "Do you want to continue [Y/N]?" answer
case $answer in
        y | Y)
                echo
                echo "continue";;
        n | N)
                echo
                echo "not continue";;
esac

read -s -p "enter your password" pass
echo
echo "you password is $pass"

count=1
cat read.sh | while read line
do
        echo "line $count: $line"
        (( count++ ))
done

exec 0< read.sh

count=1
while read line
do
        echo "line $count: $line"
        (( count++ ))
done
