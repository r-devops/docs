#!/bin/bash

echo "Student Name = $1"
case $2 in 
	A) echo "$1 Score = 70%" ;;
	B) echo "$1 Score = 60%" ;;
	C) echo "$1 Score = 50%" ;;
	*) echo "Invalid Grade" ;;
esac
