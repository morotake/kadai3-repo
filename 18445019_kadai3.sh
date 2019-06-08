#!/bin/sh

if [ $# -ne 2 ]; then
	result="エラー"
	msg="引数を２つ入力してください"
	echo $result ; echo $msg
	exit 1
elif [ $1 -eq $2 ]; then
	result="エラー"
	msg="異なる数字を入力してください"
	echo $result ; echo $msg 
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

result="正常終了"
msg="最大公約数は、$b です"
echo $result ; echo $msg

exit 0

