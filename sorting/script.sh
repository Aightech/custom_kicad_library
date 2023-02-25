#!/bin/bash
for f in libs/*; do
    name=`echo "$f" | sed "s/libs\/ul_//"`
    echo "name ${name}"
    cp "$f"/STEP/* step/"${name}".step
    cp "$f"/20*/STEP/* step/"${name}".step
    cp "$f"/KiCAD/20*/20* lib/"${name}".lib
    cp "$f"/KiCAD/20*/foot*/* mod/"${name}".kicad_mod
done
