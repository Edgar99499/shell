#!/bin/bash

#storing STDOUT, then coming back to it

# 脚本将文件描述符3重定向到文件描述符1 的当前位置，也就是STDOUT
# 这意味着任何发送给文件描述符3的输出都将出现在显示器上。
exec 3>&1

# 第二个exec命令将STDOUT重定向到文件，shell现在会将发送给STDOUT的输出直接重定向到输出文件中
# 但是，文件描述符3仍然指向STDOUT原来的位置，也就是显示器
# 如果此时将输出数据发送给文件描述符3，它仍然会出现在显示器上，尽管STDOUT已经被重定向了
exec 1>test

echo "This should store in output file"
echo "along with this line"

# 在向STDOUT(现在指向一个文件)发送一些输出之后，脚本将STDOUT重定向到文件描述符3的当前位置(现在仍然是显示器)
# 这意味着现在STDOUT又指向了它原来的位置:显示器
exec 1>&3

echo "Now things should be back to normal"

# 这是一种在脚本中临时重定向输出，然后恢复默认输出设置的常用方法