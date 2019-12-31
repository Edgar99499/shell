#!/bin/bash
#sed编辑器基础

# s命令会用斜线间指定的第二个文本字符串来替换第一个文本字符串模式。
sed 's/lazy/ht/' ./test

# -e 选项允许sed命令行上执行多个命令
sed -e 's/brown/green/; s/dog/cat/' ./test

# 从文件中读取编辑器命令
sed -f script.sed ./test

echo -e "next\n"
##############################################
# 替换标记
#1.数字表明新文本将替换第几处模式匹配的地方
sed 's/test/trial/2' ./test1
#2.g 表明新文件将会替换所有匹配文本出现的地方
sed 's/test/trial/g' ./test1
#3.p 会打印与替换命令中指定的模式匹配的行
# -n选项将禁止sed编辑器输出,但p替换标记会输出修改过的行
# 将二者配合使用的效果就是 只输出被替换命令修改过的行
sed -n 's/test/trial/p' ./test1
#4.w file将替换的结果写到文件中
sed 's/test/trial/w test.output' ./test1

echo -e "next\n"

##############################################
# 替换字符
sed 's/\/bin\/bash/\/bin\/csh/' /etc/passwd
# 感叹号被用作字符串分隔符
sed 's!/bin/bash!/bin/csh!' /etc/passwd

echo -e "next\n"

##############################################
# 使用地址
# 用行寻址(line addressing)将命令作用于特定行或某些行
#1.数字方式的行寻址
sed '2s/lazy/cat/' ./test
sed '2,3s/lazy/cat/' ./test
sed '2,$s/lazy/cat/' ./test
#2.文本模式过滤器
sed '/second/s/test/trial/g' ./test1

# 组合命令,在单行上执行多条命令
sed '2{
s/fox/elephant/
s/dog/cat/
}' test

sed '2,${
s/fox/elephant/
s/dog/cat/
}' test

echo -e "next\n"

##############################################
# 删除行
sed '3d' ./test
sed '2,$d' ./test
sed '/second/d' ./test1
# 删除两个文本模式来删除某个范围的行，第一个开启删除功能，第二个关闭删除功能
sed '/1/,/3/d' ./test

echo -e "next\n"

##############################################
# 插入和附加文本
# 插入(insert)命令(i)会在指定行前增加一个新行
sed '2i\
This is an appended line.' ./test1

# 附加(append)命令(a)会在指定行后增加一个新行
sed '$a\
This is a new line of text.' ./test1

# 在数据流起始位置增加一个新行
sed '1i\
> This is one line of new text.\
> This is another line of new text.' ./test1

##############################################
# 修改行
sed '2c\
This a changed line of text.' ./test1

sed '/second/c\
This a changed line of text.' ./test1

# 替换两行文本
sed '2,3c\
This a changed line of text.' ./test

##############################################
# 转换(transform)命令(y)是唯一可以处理单个字符的sed编辑器命令
sed 'y/123/789/' ./lines

echo -e "next\n"

##############################################
# 回顾打印
# p 打印文本行
# -n 禁止其他行，只打印包含匹配文本模式的行
sed -n '/number 3/p' ./lines

# 查看修改之前的行和修改之后的行
sed -n '/3/{
p
s/line/test/p
}' ./lines

# = 打印行号
sed '=' ./lines

# 打印指定的行和行号
sed -n '/1/{
=
p
}' ./lines

# l 列出行 
# 打印数据流中的文本和不可打印的ASCII字符，任何不可打印的字符都用它们的八进制值前加一个反斜线或标准C风格的命名法，比如用\t来代表制表符
sed -n 'l' ./tab

