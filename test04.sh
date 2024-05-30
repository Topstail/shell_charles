#!/bin/bash

# test
# test -e 判断文件是否存在， 存在为真/0， 不存在为假/1
test -e test03.sh && echo $?
test -e tmp.test && echo "tmp.test is found" || touch tmp.test

# test -f 判断目标是否是file
# test -d 判断目标是否是directory
test -f tmp.test && echo "tmp.test is a file" || echo "tmp.test is not a file"

# test -z 判断字符串长度是不是zero
test -z "q4f@" && echo "The string's length is zero" || echo "The string's length is not zero"


# 中括号的条件测试
# test和中括号的作用是一样的， 注意中括号前后的空格是必须的
# [ 和test 是 Shell 的内部命令，而[[是Shell的关键字。

# 双中括号和中括号是相似的， 双中括号是后加入的
# 单层方括号（[]）：
# 用于条件测试，例如判断文件是否存在、判断字符串是否等于某个值等。
# 不支持正则表达式匹配，只能进行简单的字符串匹配。
# 不支持逻辑操作符，如-a（与）、-o（或）和!（非）。

# 双层方括号（[[ ]]）：
# 与单层方括号类似，用于条件测试。
# 支持正则表达式匹配，可以使用=~操作符进行匹配。
# 支持逻辑操作符，如-a（与）、-o（或）和!（非）。
# 提供更好的错误处理和防止字符串拆分和文件名扩展的特性。

# 使用[[ ... ]]条件判断结构，而不是[ ... ]，能够防止脚本中的许多逻辑错误。比如，&&、||、<和> 操作符能够正常存在于[[ ]]条件判断结构中，
# 但是如果出现在[ ]结构中的话，会报错。比如可以直接使用if [[ $a != 1 && $a != 2 ]]
# 如果不使用双括号, 则为if [ $a -ne 1] && [ $a != 2 ]或者if [ $a -ne 1 -a $a != 2 ]