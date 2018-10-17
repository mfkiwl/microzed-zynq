#!/usr/bin/env sh

SCRDIR="`dirname $0`"
PRJDIR=`readlink -f "$SCRDIR/.."`

SCHFILES="$PRJDIR/microzed.sch
`find $PRJDIR/sch -name '*.sch' -type f`"

#echo "PRJDIR is $PRJDIR"
#echo "SCHFILES is $SCHFILES"

# restore PWR serial number
echo $SCHFILES | xargs sed -i 's/#PWR[^" ]*/#PWR?/'

rm -f $PRJDIR/fp-info-cache
rm -f $PRJDIR/microzed-cache.lib
rm -f $PRJDIR/microzed.bak
rm -f $PRJDIR/sch/*.bak
echo $PRJDIR/sym-lib-table | xargs sed -i '/microzed-cache/d'
echo $SCHFILES | xargs sed -i '/LIBS:microzed-cache/d'
echo $SCHFILES | xargs sed -i '/AR Path/d'
