#!/bin/bash

# testing signal trapping

# trap命令允许你来指定shell 脚本要监看并从shell中拦截的Linux信号
trap "echo 'Sorry! I have trapped Ctrl-C'" SIGINT SIGTERM

echo this is a test program

count=1

while [ $count -le 10 ]
do
	echo "Loop #$count"
	sleep 5
	count=$[ $count+1 ]
done
