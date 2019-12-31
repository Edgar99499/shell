#!/bin/bash

# testing lsof with file descriptors

exec 3>test
exec 6>test
exec 7<test

# lsof命令会列出整个Linux系统打开的所有文件描述符
# -p 允许指定进程ID(PID)
# -d 允许指定要显示的文件描述符编号
lsof -a -p $$ -d0,1,2,3,6,7





