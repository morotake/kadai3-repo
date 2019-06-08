#!/bin/sh

echo -n "１番目の数字を入力してください"
read m
echo -n "２番目の数字を入力してください"
read n

if [ $m = $n ]; then
	echo "終了：異なる数字を入力してください"
	exit 1
elif [ $n -gt $m]; then
	$a = $n
	$b = $m
else
	$a = $m
	$b = $n
fi

$r = $a % $b
while [ $r != 0 ]
do
	$a = $b
	$b = $r
	$r = $a % $b
done

echo "最大公約数は、$b です"

exit 0

