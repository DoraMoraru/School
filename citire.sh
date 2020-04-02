#!/bin/bash
D=$1

for F in `find $D -perm 755`; do
{       read -p "Do you want to change the mode for $F [y/n] " result
                if test $result = "y"; then
                               chmod 744 $F
                fi
}
done
