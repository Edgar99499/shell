#!/bin/bash
# testing $* and $@

# $* 将命令行上提供的所有参数当作一个单词保存
count=1
for param in "$*"
do
	echo "\$* Parameter #$count = $param"
	count=$[ $count+1 ]
done

# $@ 变量会将命令行上提供的所有参数当作同一字符串中的多个独立的单词
count=1
for param in "$@"
do
	echo "\$@ Paramenter #$count = $param"
	count=$[ $count+1 ]
done
