#!/bin/bash

#using a library file the wrong way

# source命令会在当前shell上下文中执行命令，而不是创建一个新shell
# source命令有个快捷的别名，称作点操作符(dot operator)
. ./12-脚本库.sh

result=`addem 10 15`
echo "The result is $result"
