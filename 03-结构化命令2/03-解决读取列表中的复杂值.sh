#!/bin/bash

# 使用转义字符来将单引号转义
# 使用双引号来定义用到单引号的值
for test in I don\'t know if "this'll" work
do 
	echo "word:$test"
done
