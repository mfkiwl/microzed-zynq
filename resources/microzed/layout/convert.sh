#!/usr/bin/env sh
cd `dirname $0`
pdfseparate ../MicroZed_RevF_Layout_131029.PDF ./microzed_layout_%d.pdf
for i in *.pdf; do
	inkscape -z -f $i -l `echo $i | cut -d '.' -f 1`.svg
done
rm *.pdf
