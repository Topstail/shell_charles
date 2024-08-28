#! /bin/bash

# var1="test01"

# # 使用source调用其他的shell脚本， 可以调用其他脚本声明的变量；这是和'bash 脚本名'命令的不同之处
# source test02_internal.sh
# echo ${var2}

# # 字符串的截取
# url=https://www.baidu.com
# echo ${url#*.}
# echo ${url##*.}
# echo ${url%.*}
# echo ${url%%.*}

# # 字符串子串的替换
# str="L77ujL87ujL9"
# echo ${str/7uj/ }
# echo ${str//7uj/ }

# 内置命令和外置命令， such as "cd"是内置命令， "ps"是外置命令
# [root@test01 shell_charles]# type cd
# cd is a shell builtin
# [root@test01 shell_charles]# type ps
# ps is /usr/bin/ps
# "compgen -b" 查询出所有的外置命令
# 外置命令都需要创建新的子shell去执行

var=""
echo ${var:-"result"}


# 数学运算
# # && 两边都真才为真
# echo $((3>2 && 8>9)) # 前真后假 output:0
# echo $((3>2 && 8<9)) # 前真后真 output:1
# echo $((3<2 && 8>9)) # 前假后假 output:0
# echo $((3<2 && 8<9)) # 前假后真 output:0
# # || 两边都假才叫假
# echo $((3>2 || 8>9)) # 前真后假 output:1
# echo $((3>2 || 8<9)) # 前真后真 output:1
# echo $((3<2 || 8>9)) # 前假后假 output:0
# echo $((3<2 || 8<9)) # 前假后真 output:1

# echo "$((3+2))"
# echo "$((3-2))"
# echo "$((3*2))"
# echo "$((6/2))"
# echo "$((7%2))"
# echo "$((3**2))"

# 使用let做数学运算， 不如(())效率高
