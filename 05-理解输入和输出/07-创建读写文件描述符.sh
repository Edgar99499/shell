#!/bin/bash
# testing inpiut/output file descriptor

# 对同一个文件进行数据读写，shell会维护一个 内部指针，指明在文件中的当前位置
# 任何读或写都会从文件指针上次的位置开始
exec 3<> test
read line <&3
echo "Read: $line"
echo "This is the test line" >&3
