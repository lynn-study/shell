!/bin/bash

sed -e "s/test/big test/;s/brown/green/;s/dog/cat/" ./data

sed -f config ./data

sed 's/test/trial/g' ./data
sed -n 's/test/trial/p' ./data

sed 's/\/bin\/bash/\/bin\/chs/' ./test.sh

sed '2s/text/file/' ./data
sed '2,5s/text/file/' ./data
sed '2,$s/text/file/' ./data
sed '/pattern/s/text/file/' ./data

sed '3d' ./data
sed '3,$d' ./data
sed '2,3d' ./data
sed '/number 1/d' ./data
sed '/1/,/3/d' ./data

echo "line 2" | sed 'i\line 1'
echo "line 2" | sed 'a\line 1'

sed '3a\line' ./data
sed '3i\line' ./data
sed '$a\line' ./data

sed '3c\the new line' ./data
sed '2,3c\the new line' ./data

sed 'y/123/456/' ./data

sed '1,2w test' ./data

sed -n '/IN/w IMcust' ./data

sed '3r data12' ./data

sed '/number 2/r data12' ./data

sed '$r data12' ./data

==============================================

echo "the books are expensive" | sed -n '/book/p'

echo "the books  are expensive" | sed -n '/  /p'

  .*[]^${}\+?|()

echo "the books  are 1$" | sed -n '/\$/p'

echo "/bin/user/" | sed -n '/\//p'

echo "book is " | sed -n '/^book/p'
echo "is book" | sed -n '/^book/p'
echo "is ^book" | sed -n '/\^book/p'
echo "is boo^k" | sed -n '/boo^k/p'

echo "this is a good book" | sed -n '/book$/p'

echo "this is a good book" | sed -n '/^this is a good book$/p'

sed '/^$/d' ./data

sed -n '/.at/p' ./data

sed -n '/[ch]at/p' ./data
sed -n '/[^ch]at/p' ./data

echo "yes" | sed -n '/[yY][Ee][sS]/p'
echo "Yes" | sed -n '/[yY]es/p'

sed -n '/[1234]/p' ./data
sed -n '/[0-9]/p' ./data
sed -n '/^[1234]$/p' ./data

sed -n '/[c-h]/p' ./data
sed -n '/[a-ch-m]/p' ./data

echo "ieek" | sed -n '/ie*k/p'

echo "this is a good skill" | sed -n '/^this.*skill/p'
echo "baat" | sed -n '/b[ae]*t/p'

sed '/head/{n ; d}' ./data

sed '/head/{ N ; s/\n/ /}' ./data

sed 'n ; s/li\nne/te\nst/;s/line/test/; N ; s/li\nne/te\nst/;s/line/test/' ./data

sed -n '/first/{
h
p
n
p
g
p
}' data

sed '{2,3b ; s/this/This/}' ./data

sed '{/first/b jump1; s/this/This/
:jump1
s/this/on no/
}' ./data

echo "This, is, a, test," | sed -n '{
:start
s/,//1p
/,/b start
}'

sed '{
s/first/matched/
t
s/this is /no match/
}' ./data

echo "this is a cat, not a hat" | sed '{s/.at/"&"/g}'

echo "That furry cat is pretty" | sed 's/furry \(.at\)/\1/'

echo "1234567" | sed '{
:start
s/\(.*[0-9]\)\([0-9]\{3\}\)/\1,\2/
t start
}'

sed '$!G' ./data

sed '=' ./data | sed 'N s/\n/ /'

sed '{
:start
$q
N
11,$D
b start
}' /etc/passwd

sed '/./,/^$/!d' ./data

sed '/./,$/!d' ./data

sed '{
:start
/^\n*$/{$d;N;b start}
}' ./data
