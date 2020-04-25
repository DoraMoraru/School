#!/bin/bash
D=$1
for F in `find $D -perm 777`; do
        var="$F.all"
        echo $var
done
