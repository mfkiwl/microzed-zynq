#!/usr/bin/env sh
set -e

EXE=$0
print_help() {
	echo "${EXE} [pad] [pitch] [x number] [y number]"
}

calc_res() {
	maxima --very-quiet --batch-string="float($1);"|tail -n1 | tr -d ' '
	#echo "$1" | bc -l
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


if [ "$3" == "" ]; then
	print_help
	exit 1
fi
if [ "$4" == "" ]; then
	print_help
	exit 2
fi

Pad=`calc_res "$1"`
Pitch=$2
XN=$3
YN=$4

for i in `seq 0 $((${YN} - 1))`; do
	for j in `seq 1 ${XN}`; do
		YPOS=`calc_res "${Pitch} * ($i - ($YN - 1) / 2)"`
		XPOS=`calc_res "${Pitch} * ($j - 1 - ($XN - 1)/2)"`
		echo "  (pad ${YA[$i]}$j smd circle (at ${XPOS} ${YPOS}) (size $Pad $Pad) (layers F.Cu F.Paste F.Mask))"
	done
done
