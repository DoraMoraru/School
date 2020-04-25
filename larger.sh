#!/bin/bash

D=$1
NR=$2

find $D -type f | while read F; do
	N=`ls -l $F | awk '{print $5}'
	if test $N -gt $NR; then
		 echo $F
	fi
done
