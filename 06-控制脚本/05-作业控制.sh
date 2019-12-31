#!/bin/bash
# Test job control
# $$变量来显示Linux系统分配给该脚本的PID
echo "Script Process ID: $$" #
count=1
while [ $count -le 10 ]
do
       echo "Loop #$count"
       sleep 10
       count=$[ $count + 1 ]
done
#
echo "End of script..."

# 查看作业
# $ ./05-作业控制.sh > test.out &
# $ jobs
# [1]  + running    ./05-作业控制.sh > test.out
# $ jobs -l
# [1]  + 43929 running    ./05-作业控制.sh > test.out
# $ kill 43929 
# [1]  + 43929 terminated  ./05-作业控制.sh > test.out 

# 重启作业
# $ ./05-作业控制.sh

# ^Z
# [1]  + 44649 suspended  ./05-作业控制.sh
# bg命令将其以后台模式重启
# $ bg + 作业号