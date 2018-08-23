#!/usr/bin/env sh
set -e

EXE=$0
print_help() {
	echo "${EXE} [pad size] [x number] [y number]"
}

YA=(A B C D E F G H #I
    J K L M N #O
    P #Q
    R S T U V W #X
    Y #Z
    AA AB AC AD AE AF AG AH #AI
    AJ AK AL AM AN #AO
    AP #AQ
    AR AS AT AU AV AW #AX
    AY #AZ
)


if [ "$2" == "" ]; then
	print_help
	exit 1
fi
if [ "$3" == "" ]; then
	print_help
	exit 2
fi

PadSize=$1
XN=$2
YN=$3

YPOS=`echo "-${YN} * ${PadSize} / 2" | bc`
for i in `seq 0 $((${YN} - 1))`; do
	XPOS=`echo "-${XN} * ${PadSize} / 2" | bc`
	for j in `seq 1 ${XN}`; do
		echo "(pad ${YA[$i]}$j smd circle (at ${XPOS} ${YPOS}) (size $PadSize $PadSize) (layers F.Cu F.Paste F.Mask))"
		XPOS=`echo "${XPOS} + ${PadSize}" | bc`
	done
	YPOS=`echo "${YPOS} + ${PadSize}" | bc`
done
