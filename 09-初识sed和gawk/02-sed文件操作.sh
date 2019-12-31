#!/bin/bash




# 将文件前两行向文件写入
sed '1,2w test1' test.output
# 不让行显示到STDOUT上
sed -n '1,2w test1' test.output

# 读取文件中的文本插入到指定地址后
sed '3r ./lines' ./test1

# 从文件读取，并插入字符流
# 将数据文件中的所有文本行都插入到数据流中
sed '/lazy/r test' test

# 向数据流末尾添加数据
sed '$r test1' lines


# 利用另一个文件中的数据来替换文件中的占位文本
sed '/lazy/ {
r test1
d
}' test
