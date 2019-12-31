#!/bin/bash

# trying to pass an array variable

function testit {
	# 错误处理方式
	# 函数只会读取数组变量的第一个值
	echo "The parameters are : $@"
	thisarray=$1
	echo "ERROR mode: The received array is ${thisarray[*]}"

	# 正确处理方式
	local newarray
	newarray=(`echo "$@"`)
	echo "CORRECT mode: The new array value is : ${newarray[*]}"
}

myarray=(1 2 3 4 5)
echo "The original array is : ${myarray[*]}"

#将数组变量当成一个函数参数，函数只会去函数变量第一个值
#testit $myarray

testit ${myarray[*]}
