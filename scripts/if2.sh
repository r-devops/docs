#!/bin/bash

echo "Student Name = $1"
if [ "$2" = A ]; then 
	echo "$1 Score = 70%"
elif [ "$2" = B ]; then 
	echo "$1 Score = 60%"
elif [ "$2" = C ]; then 
	echo "$1 Score = 50%"
else
	echo "Invalid Grade"
fi
