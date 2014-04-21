#!/bin/bash

gawk '{print $1}' ./data

gawk -F : '{print $1}' /etc/passwd

echo "My name is Rich" | gawk '{$4="john";print $0}'

gawk -F : -f ./config_gawk /etc/passwd

gawk 'BEGIN {print "hello world"}'

gawk 'BEGIN { print "the begin:"} {print $0} END { print "end of line"}' data

gawk -f config_gawk /etc/passwd

echo "this is a test" | gawk '/this/{print $0}'

=================================================

echo "beat" | gawk '/be?at/{print $0}'
echo "beaeat" | gawk '/b[ea]?t/{print $0}'
echo "beaeat" | gawk '/b[ea]+t/{print $0}'

echo "bt" | gawk --re-interval '/be{1,2}t/{print $0}'
echo "bet" | gawk --re-interval '/be{1,2}t/{print $0}'
echo "beet" | gawk --re-interval '/be{1,2}t/{print $0}'
echo "beaet" | gawk --re-interval '/b[ea]{1,3}t/{print $0}'
echo "beeet" | gawk --re-interval '/be{3}t/{print $0}'

echo "this is a dog" | gawk '/dog|cat/{print $0}'
echo "this is a cat" | gawk '/do[g]|cat/{print $0}'

echo "Sat" | gawk '/Sat(urday)?/{print $0}'
echo "Saturday" | gawk '/Sat(urday)?/{print $0}'

echo "cat" | gawk '/(c|b)a(b|t)/{print $0}'

gawk --re-interval '/^\(?[2-9][0-9]{2}\)?(| |-|\.)[0-9]{4}/{print $0}'

gawk --re-interval '/^([a-zA-Z0-9_\-\.\+]+)@([a-zA-Z0-9_\-\.]+)\.(a-zA-Z){2,5})$/{print $0}'

gawk 'BEGIN{FS=","; OFS="-"} {print $1,$2,$3}' ./data

gawk 'BEGIN{FIELDWIDTHS="1 2 3 4 5"} {print $1,$2,$3,$4,$5}' ./data

gawk 'BEGIN{print ARGC,ARGV[0],ARGV[1]}' ./data

gawk '
BEGIN{
print ENVIRON["HOME"]
print ENVIRON["PATH"]
}'

gawk 'BEGIN{FS=":"; OFS=":"} {print $1,$NF}' /etc/passwd

gawk 'BEGIN{
test="hello world"
print test
test=66
print test
}'

gawk 'BEGIN{
x=4
x=x * 2 + 3
print x
}'

gawk 'BEGIN{
var["a"] = 1
var["g"] = 2
var["f"] = 3
var["b"] = 4
for (test in var)
        {
                print "Index:" ,test, "value:",var[test]
        }
delete var["a"]
for (test in var)
        {
                print "Index:" ,test, "value:",var[test]
        }
}'

gawk 'BEGIN{FS=","} /12/{print $1}' ./data

gawk 'BEGIN{FS=":"} $1 ~ /root/{print $1,$NF}' /etc/passwd

gawk -F : '$4 == 0{print $1}' /etc/passwd

gawk -F : '$1 == "root"{print $0}' /etc/passwd

gawk '{
if ($1 > 20)
        {
                x = $1 * 2
                print x
        }
else
        {
                x = $1 / 2
                print x
        }
}' ./data

gawk '{if ($1 > 20) print $1 ; else print $1,"< 20"}' ./data

gawk '{
        i = 1
        while (i < 4)
        {
                total += $i
                if (i == 2)
                        break
                i++
        }
        print total
}' ./data

gawk '{
total=0
i=0
do
{
        total += $i
        i++
} while (total < 100)
print total
}'

gawk '{
        total=0
        for (i = 1; i < 4; i++)
        {
                total +=$i
        }
        print total
}' ./data

gawk 'BEGIN{
        x = 10 * 100
        printf "the answer is %e",x
}'

gawk 'BEGIN{printf "%s %s\n", $1,$4}' ./data

gawk 'BEGIN{
data = systime()
day = strftime("%A, %B, %d, %y, day")
print day
}'

gawk '
function myrand(limit)
{
        return int(limit * rand())
}

BEGIN{
        x = myrand(10)
        print x
}
' ./data
