#!/bin/bash   
ten=10  
for F in `ls`; do 
	var=`grep "" $F | wc -l ` 
	if test $var -lt $ten; then 
		cat $F 
	else
	{
		head -n 5 $F 
		tail -n 5 $F 
	}
	fi
done
