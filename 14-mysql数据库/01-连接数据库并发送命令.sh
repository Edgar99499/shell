#!/bin/bash

# 连接数据库
mysql=$(which mysql)
`
# 发送单个命令
$mysql emwjs -u test -e "show databases;"

# 发送多个命令
$mysql etuDB -u etu <<EOF
show tables;
select * from users;
EOF
