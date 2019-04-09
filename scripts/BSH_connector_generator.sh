#!/usr/bin/env sh

# generate BSH connector footprint

SCRDIR="`dirname $0`"
PRJDIR=`readlink -f "$SCRDIR/.."`

PRJNAME="microzed"

SCHFILES="$PRJDIR/${PRJNAME}.sch
`find $PRJDIR/sch -name '*.sch' -type f`"

PINN=180
PIND="0.5"
IDX=0

HHPN=$(($PINN / 2 - 1))
XPOS=0
for i in `seq -$HHPN 2 $HHPN`; do
	XPOS="$(echo "$i $PIND"|awk '{print ($1*$2)/2}')"
	#echo XPOS is "$XPOS"
	let IDX++
	echo "  (pad $IDX smd rect (at $XPOS 2.864) (size 0.279 2.273) (layers F.Cu F.Paste F.Mask))"
	let IDX++
	echo "  (pad $IDX smd rect (at $XPOS -2.864) (size 0.279 2.273) (layers F.Cu F.Paste F.Mask))"
done
