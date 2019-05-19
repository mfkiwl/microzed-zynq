#!/usr/bin/env sh
SELFD=`dirname "$(readlink -f $0)"`
SRCF=$1
ER=4.5

echo "SELFD is $SELFD"

if [ "x$SRCF" == "x" ]; then
	SRCF="$SELFD/pin_delay/xc7z020clg484.csv"
fi

RATIO="`maxima --batch-string "0.3/sqrt($ER);"|tail -n1|sed 's/ //g'|cut -d ")" -f 2`"

#declare -A PINMAP=()
cat $SRCF | tail -n +8 | while read LINEDATA; do
	LINEDATA=\"`echo $LINEDATA|sed 's/,/","/g'`\"
	DARRAY=(${LINEDATA//,/ })
	PNUM=`echo ${DARRAY[1]} | sed 's/"//g'`
	DMIN=`echo ${DARRAY[4]} | sed 's/"//g'`
	DMAX=`echo ${DARRAY[5]} | sed 's/"//g'`
	if [ "$DMIN" == "" ]; then
		continue
	fi
	LEN="`maxima --batch-string "$RATIO * ($DMIN + $DMAX) / 2;"|tail -n1|sed 's/ //g'|cut -d ")" -f 2`"
	#PINMAP["$PNUM"]="$LEN"
	echo $PNUM `printf "%.3f" $LEN`
done
