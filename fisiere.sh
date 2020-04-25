#!/bin/bash
for F in `find -type f ` ; do
        if test -f $F; then
        {
                echo $F
                grep "" $F | wc -l
                grep "." $F | wc -m
         }
         elif test -d $F; then
         { echo $F is a dir
           find $F -type f | wc -l
          }
         fi
  done
