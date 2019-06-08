#!/bin/sh

mkdir tmp
./18445019_kadai3.sh $1 $2 > tmp/$$-status

if [ -s "tmp/$$-status" ]; then
	cat tmp/$$-status
else
	echo "異常終了"
fi

rm -r tmp

