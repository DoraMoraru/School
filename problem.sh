#!/bin/bash
D=$1
S=0
count=0
var=1
for F in `find $D -type f`; do
        NR=`grep "" $F | wc -l`
        S=`expr $S + $NR`
        count=`expr $count + $var`
        echo $S
done
echo `expr $S / $count`

        

