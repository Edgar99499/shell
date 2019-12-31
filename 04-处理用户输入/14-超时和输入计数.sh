#!/bin/bash
# timing the data entry

if read -t 5 -p "Please enter your name:" name
then
	echo "Hello, $name, welcome to my script"
else
	#起到换行的作用
	echo
	#输入计数 -n1
	read -n1 -p "Do you want to continue [Y/N]?" answer
	case $answer in
	Y | y) echo
		   echo "Fine, continue on...";;
	N | n) echo
		   echo "OK，goodbye";;
	*) echo
	   echo "OK, wrong, goodbye"
	esac
	echo "Sorry, this is the end of the script"
fi

# -n选项和值1一起使用，告诉read命令在接受单个字符后退出
# 只要按下单个字符 回答后，read命令就会接受输入并将它传给变量，无需按回车键