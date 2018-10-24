#!/usr/bin/env sh

SCRDIR="`dirname $0`"
PRJDIR=`readlink -f "$SCRDIR/.."`

PRJNAME="microzed"

SCHFILES="$PRJDIR/${PRJNAME}.sch
`find $PRJDIR/sch -name '*.sch' -type f`"

#echo "PRJDIR is $PRJDIR"
#echo "SCHFILES is $SCHFILES"

# restore PWR serial number
echo $SCHFILES | xargs sed -i 's/#PWR[^" ]*/#PWR?/'

rm -f $PRJDIR/fp-info-cache
rm -f $PRJDIR/${PRJNAME}-cache.lib
rm -f $PRJDIR/${PRJNAME}-rescue.lib
rm -f $PRJDIR/${PRJNAME}-rescue.dcm
rm -f $PRJDIR/${PRJNAME}.bak
rm -f $PRJDIR/sch/*.bak
echo $PRJDIR/sym-lib-table | xargs sed -i "/${PRJNAME}-cache/d"
echo $PRJDIR/sym-lib-table | xargs sed -i "/${PRJNAME}-rescue/d"
echo $SCHFILES | xargs sed -i "/LIBS:${PRJNAME}-cache/d"
echo $SCHFILES | xargs sed -i "s/${PRJNAME}-rescue:\([^ ]*\)-${PRJNAME}/${PRJNAME}:\1/"
echo $SCHFILES | xargs sed -i '/AR Path/d'
