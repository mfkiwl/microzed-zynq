#!/usr/bin/env bash
if [ "$1" == "" ]; then
	echo "$0 source"
	echo "convert old .mod to new .kicad_mod footprint file"
	exit 1
fi

SRC_FILE="$1"
DST_DIR="`dirname $0`/../microzed.pretty"
python2 /usr/share/doc/kicad/scripts/lib_convert.py ${SRC_FILE} ${DST_DIR}
