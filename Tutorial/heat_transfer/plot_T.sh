#!/bin/bash

export LIBGL_ALWAYS_INDIRECT=1
export PATH=$PATH:/opt/plotter/bin
FN=$1
if test -z "$FN"; then
    echo "Usage: $0 <filename>"
    exit 1
fi

plotter2d -f ${FN} -v T -s "t0,0,0" -c "-1,-1,-1" -o T -min 0 -max 1000  -zonal 
#-colormap HotDesaturated
