#!/bin/bash

# gawk能提供一个类编程环境来修改和重新组织文件中的数 据

# Ctrl+D组合键会在bash中产生一个EOF字符
gawk '{print "Hello World!"}'

# 使用数据字段变量
# gawk程序读取文本文件，只显示第1个数据字段的值
gawk '{print $1}' test

# -F选项指定其他字段分隔符的文件
gawk -F: '{print $1}' /etc/passwd

# 程序脚本中使用多个命令
echo "My name is Rich" | gawk '{$4="Christine"; print $0}'

# 从文件中读取程序
gawk -F: -f script.gawk /etc/passwd

# 在处理数据前运行脚本
gawk 'BEGIN {print "The test File Contents:"} \
{print $0}' test

# 在处理数据后运行脚本
gawk 'BEGIN {print "The test File Contents:"} \
{print $0}\
END {print "End of File"}' test

# 引入配置文件完成数据处理
gawk -f script1.gawk /etc/passwd
