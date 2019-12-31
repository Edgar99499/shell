#!/bin/bash
# simple demonstration of the getopts command

# getopts optstring variable
# 有效的选项字母都会列在optstring中
# 如果选项字母要求有个参数值，就加一个冒号
# 要去掉错误消息的话，可以在 optstring 之前加一个冒号
# getopts命令将当前参数保存在命令行中定义的 variable 中

# getopts命令会用到两个环境变量
# 如果选项需要跟一个参数值，OPTARG 环境变量就会保存这个值
# OPTIND 环境变量保存了参数列表中getopts正在处理的参数位置
while getopts :ab:c opt
do
	case "$opt" in
	a) echo "Found the -a option";;
	b) echo "Found the -b option, with value $OPTARG";;
	c) echo "Found the -c option";;
	*) echo "Unknown option:$opt";;
	esac
done

# ./10-使用getopt命令.sh -ab test1 -c