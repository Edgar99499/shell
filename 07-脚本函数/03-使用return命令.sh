#!/bin/bash

# using the return command in a function

function db1 {
	read -p "Enter a value:" value
	echo "doubling the value"
	return $[ $value * 2 ]
}
# 如果在用$?变量提取函数返回值之前执行了其他命令，函数的返回值就会丢失
# 由于退出状态码必须小于256，函数的结果必须生成 一个小于256的整数值
db1
echo "The new value is $?"
