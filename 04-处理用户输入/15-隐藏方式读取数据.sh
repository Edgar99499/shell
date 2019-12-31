#!/bin/bash
# hiding input data from monitor

# -s选项可以避免在read命令中输入的数据出现在显示器上
# 实际上，数据会被显示，只是 read命令会将文本颜色设成跟背景色一样
read -s -p "Please enter your password: " pass

#添加了-s选项之后，不会自动换行，不添加-s 会自动换行
echo 
echo "Is your password really $pass?"
