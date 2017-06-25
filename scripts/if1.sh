#!/bin/bash

echo "Student Name = $1"
if [ "$2" = A ]; then 
	echo "$1 Score = 70%"
fi
if [ "$2" = B ]; then 
	echo "$1 Score = 60%"
fi
if [ "$2" = C ]; then 
	echo "$1 Score = 50%"
fi
