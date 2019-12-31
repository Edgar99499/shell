#!/bin/bash
# testing STDERR messages

# 使用输出重定向符来将输出信息重定向到STDERR文件描述符
# 在重定向到文件描述符时，必须在文件描述符数字之前加一个&
echo "This is an error " >&2
echo "This is another error"
echo "This is also an error" >&2

# ./01-临时重定向.sh 2>stderr 1>stdout
