#!/bin/bash
#
# Big_Users - find big disk space users in various directories
#############################################################
#Parameters for script
#
CHECK_DIRECTORIES="/var/log /home" #directories to check
#
######################### Main Script #######################
#
DATE=$(date '+%m%d%y')             #Date for report file
#
exec > disk_space_$DATE.rpt         #Make report file Std Output
#
echo "Top Ten Disk Space Usage"     #Report header for while report
echo "for $CHECK_DIRECTORIES Directories"
#
for DIR_CHECK in $CHECK_DIRECTORIES       #loop to du directories
do
	echo ""
	echo "The $DIR_CHECK Directory:"	#Title header for each directory
#
#	Creating a listing of top ten disk space users
# -s选项用来总结目录一级的整体使用状况
# -S(大写的S)选项为每个目录和子目录分别提供了总计信息
	du -S $DIR_CHECK 2>/dev/null |
	sort -rn | # -n选项允许按数字排序,-r选项会先列出最大数字(逆序)
	sed '{11,$D; =}' |
	sed 'N; s/\n/ /' | 
	gawk '{printf $1 ":" "\t" $2 "\t" $3 "\n"}'
done #End of for loop for du directories
#
