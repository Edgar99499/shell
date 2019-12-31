#!/bin/bash

# inputbox部件为用户提供了一个简单的文本框区域来输入文本字符串
# dialog命令会将文本字符串的值发给STDERR,必须重定向STDERR来获取用户输入
dialog --inputbox "Enter your age:" 10 20 2>age.txt