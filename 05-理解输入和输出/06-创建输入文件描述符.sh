#!/bin/bash
# redirecting input file descriptors

exec 3>&1
echo "This is the 3 file descriptor" >&3

# 在重定向到文件之前， 先将STDIN文件描述符保存到另外一个文件描述符
exec 6>&0
exec 0<test

count=1
while read line
do
	echo "Line #$count: $line"
	count=$[ $count+1 ]
done

# 读取完文件之后再将STDIN恢复到它原来的位置
exec 0<&6
read -p "Are you done now?" answer
case $answer in
Y|y) echo "Goodbye";;
N|n) echo "Sorry, this is the end";;
esac

