#!/bin/bash
D=$1
zero=0
for F in `find $D -type f`; do
    var=`grep ".*[0-9]\{5,\}.*$" $F | wc -c`
    if test $var -gt $zero; then
      echo $F
    fi
done
