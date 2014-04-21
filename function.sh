#!/bin/bash

fun1()
{
        read -p "Enter a value: " var
        return $var
}

fuc2()
{
        read -p "Enter a value: " var
        echo $var
}

fun1
echo "the value you enter: $?"

ret=`fuc2`

echo the value you enter $ret

fun3()
{
        local tmp=2

        echo "local tmp = $tmp"
        echo "first $0"
        echo "second $1"
        echo "third $2"
}

var1=1
var2=2
var3=3

tmp=3
echo "tmp = $tmp"

fun3 $var1 $var2 $var3

testif()
{
    local newarray
    newarray=(`echo "$@"`)
    echo "the new array value is : ${newarray[*]}"
}

myarray=(1 2 3 4 5)
echo "the original array is ${myarray[*]}"

testif ${myarray[*]}

addarray()
{
        local sum=0
        local newarray

        newarray=(`echo "$@"`)

        for var in ${newarray[*]}
        do
                sum=$[ $sum + $var ]
        done

        echo $sum
}

myarry=(1 2 3 4 5)

echo "the original array is : ${myarry[*]}"
echo

arg1=`echo ${myarry[*]}`

ret=`addarray $arg1`

echo "ret = $ret"

arrarydbl()
{
        local origarray
        local newarray
        local elements
        local i

        origarray=(`echo "$@"`)
        newarray=(`echo "$@"`)

        elements=$[ $# -1 ]
        for (( i = 0; i <= $elements; i++))
        {
                newarray[$i]=$[ ${origarray[$i]} * 2 ]
        }

        echo ${newarray[*]}
}

myarry=(1 2 3 4 5)

echo "the origarray is ${myarry[*]}"

arg=`echo ${myarry[*]}`
ret=(`arrarydbl $arg`)

echo "the new array is ${ret[*]}"
