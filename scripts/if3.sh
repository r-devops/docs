#!/bin/bash

if [ $# -ne 2 ]; then 
	echo "Invalid Inputs"
	echo "$0 <Studnet-Name> <Score>"
	exit 1 
fi

test $2 -eq 1 2>/dev/null 
if [ $? -eq 2 ]; then
	echo "Score should be a number from 1-100"
	exit 2
fi

echo "Student Name = $1"
if [ "$2" -ge 70 ]; then 
	echo "Student Grade = A"
elif [ "$2" -ge 60 ] ; then
	echo "Student Grade = B"
elif [ "$2" -ge 50 ]; then 
	echo "Student Grade = C"
elif [ "$2" -ge 35 ]; then 
	echo "Student Grade = D"
elif [ "$2" -lt 35 ];then
	echo "Student Grade = F"
else
	echo "Invalid Grade"
fi
