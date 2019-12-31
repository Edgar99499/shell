#!/bin/bash
# using double parenthesis
# 高级数学表达式

var1=10

if (( $var1 ** 2 > 90))
then 
	(( var2 = $var1 ** 2))
	echo "The square of $var1 if $var2"
fi

