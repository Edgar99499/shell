#!/bin/bash

# testing the at command

# at命令允许指定Linux系统何时运行脚本
# at命令会将作业提交到队列中，指定shell何时运行该作业
# at [-f filename] time
# -f选项指明使用哪个脚本 文件
# -M选项来屏蔽作业产生的输出信息。
at -f 01-捕捉信号.sh now
