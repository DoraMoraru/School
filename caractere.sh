#!/bin/bash
D=$1
for F in `find $D -type f | grep "/.\{2,\}\>"`;do
{
	head -n 10 $F
}
done
