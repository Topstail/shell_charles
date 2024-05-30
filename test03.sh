#!/bin/bash

# shell数值计算

# (()) 只能用来计算整数， 效率高 , 也可以做逻辑判断  &&是and   ||是or , 与if条件句配合使用: if((整数表达式))
echo $((num1=5+7))
echo $((num2=num1*3))
echo $(( 5>7 && 8<19 )) 
echo $(( 6>3 || 4>7 ))

# let 只能用来计算整数, 作用:用于赋值,是最简洁的整数运算赋值命令计算赋值用法: let变量名=整数运算表达式
let n1=5+3
let n2=n1*3
echo ${n1}
echo ${n2}

# bc 被算的参数需要用管道符传入， 可以计算小数
echo "2+3" | bc
echo "5 * 8" | bc
echo "3.2*2" | bc

# expr 被算参数必须以三个参数的形式传入， 不支持小数计算
# expr 还可以用来计算字符串长度和字符串匹配， 并且字符串匹配会匹配最长的字符串
expr 2 + 3
expr 2 "*" 3
expr length "7ujm7ujmij"
expr match "6yhn6yhnyhn.jkp" ".*\.jkp"
expr "6yhn6yhnyhn.jkp" : ".*yhn"

