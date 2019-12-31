#!/bin/bash
# reading data from a file

# 每次调用read命令，它都会从文件中读取一行文本
count=1
cat test | while read line
do
	echo "Line $count: $line"
	count=$[ $count + 1 ]
done
echo "Finished processing the file"

