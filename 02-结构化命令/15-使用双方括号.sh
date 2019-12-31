#!/bin/bash
# using pattern matching
# 针对字符串的高级特性

if [[ $USER == r* ]]
then 
	echo "Hello $USER"
else
	echo "Sorry, I do not know you"
fi
