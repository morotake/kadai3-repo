#!/bin/sh

if [ $# -ne 2 ]; then
	echo "終了：引数を２つ入力してください"
	exit 1
elif [ $1 -eq $2 ]; then
	echo "終了：異なる数字を入力してください"
	exit 1
elif [ $1 -lt $2 ]; then
	a=$2
	b=$1
else
	a=$1
	b=$2
fi

r=$((a%b))
while [ $r -ne 0 ]
do
	a=$b
	b=$r
	r=$((a%b))
done

echo "最大公約数は、$b です"

exit 0

