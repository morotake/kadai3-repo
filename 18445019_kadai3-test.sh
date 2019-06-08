#!/bin/sh

result=$(./18445019_kadai3.sh)
if [ $result = 0 ]; then
	echo "正常終了"
else
	echo "異常終了"
fi
