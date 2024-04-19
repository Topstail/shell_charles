#! /bin/bash

var1="test01"

# 使用source调用其他的shell脚本， 可以调用其他脚本声明的变量；这是和'bash 脚本名'命令的不同之处
source test02_internal.sh

echo ${var2}
