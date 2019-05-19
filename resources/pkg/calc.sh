#!/usr/bin/env sh
SRCF=$1
SELFD=`dirname "$(readlink -f $0)"`
echo "SELFD is $SELFD"

SRCF="$SELFD/pin_delay/xc7z020clg484.csv"
DSTF="$SELFD/pin_delay/xc7z020clg484.map"
rm $DSTF
touch $DSTF
$SELFD/ps2mm.sh $SRCF >> $DSTF

declare -A PINMAP=()
while read LINEDATA; do
	DARRAY=($LINEDATA)
	PNUM=${DARRAY[0]}
	LEN=${DARRAY[1]}
	PINMAP["$PNUM"]="$LEN"
	#echo "$PNUM, $LEN, ${PINMAP["$PNUM"]}"
done < $DSTF
echo ${PINMAP["H10"]}

FPCB="$SELFD/../../microzed.kicad_pcb"
FPCB_NEW="$FPCB.new"

rm -f $FPCB_NEW
touch $FPCB_NEW
RSTAT=0
PINNAME=""

IFS_old=$IFS
IFS=$'\n'
while read LINEDATA; do
	if [ $RSTAT -eq 0 ]; then
		echo "$LINEDATA" >> $FPCB_NEW
		BEGINFLAG=`echo "$LINEDATA" | grep "XC7Z020-1CLG484C"`
		if [ "$BEGINFLAG" != "" ]; then
			let RSTAT=RSTAT+1
		fi
	elif [ $RSTAT -eq 1 ]; then
		ENDFLAG=`echo "$LINEDATA" | grep " *(model "`
		if [ "$ENDFLAG" != "" ]; then
			echo $LINEDATA >> $FPCB_NEW
			let RSTAT=RSTAT+1
		else
			PADFLAG=`echo "$LINEDATA" | grep "(pad "`
			if [ "$PADFLAG" != "" ]; then
				echo $LINEDATA >> $FPCB_NEW
				PINNAME=`echo $LINEDATA | sed 's/ *(pad \([^ ]*\) .*/\1/'`
			elif [ "$PINNAME" == "" ]; then
				echo $LINEDATA >> $FPCB_NEW
			else
				PINLEN=${PINMAP["$PINNAME"]}
				echo "PINNAME $PINNAME, PINLEN: $PINLEN"
				if [ "$PINLEN" != "" ]; then
					echo `echo $LINEDATA | sed "s/\(.*\))$/\1 (die_length $PINLEN))/"` >> $FPCB_NEW
				else
					echo $LINEDATA >> $FPCB_NEW
				fi
				PINNAME=""
			fi
		fi
	elif [ $RSTAT -eq 2 ]; then
		echo $LINEDATA >> $FPCB_NEW
	fi
done < $FPCB
IFS=$IFS_old
