#!/usr/bin/env bash
if [ "$1" == "" ]; then
	echo "$0 source"
	echo "convert old .mod to new .kicad_mod footprint file"
	exit 1
fi

SRC_FILE="$1"
TMP_DIR="`mktemp -d`"
DST_DIR="`dirname $0`/../microzed.pretty"
python2 /usr/share/doc/kicad/scripts/lib_convert.py ${SRC_FILE} ${TMP_DIR}
mv ${TMP_DIR}/* ${DST_DIR}/
rmdir ${TMP_DIR}
