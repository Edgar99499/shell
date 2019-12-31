#!/bin/bash

# using the tee command for logging
# tee命令相当于管道的一个T型接头。它将从STDIN过来的数据同时发往两处
# 一处是 STDOUT，另一处是tee命令行所指定的文件名
# 默认情况下，tee命令会在每次使用时覆盖输出文件内容
# 用-a选项将数据追加到文件中
tempfile=test
echo "This is the start of the test" | tee $tempfile
echo "This is the second line of the test" | tee -a $tempfile
echo "This is the end line of the test" | tee -a $tempfile


