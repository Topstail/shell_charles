#!/bin/bash
#
#name="xuewenbuhao 944kaichebuhaozenmeban"
## output:buhao 944kaiche
##echo ${name:6}
#
## output: 944kaichebuhaozenmeban  # the output contain a empty
#tmp1=${name#*buhao}
#echo ${tmp1:0}
## output:zenmeban
#echo ${name##*buhao}
## output:xuewenbuhao 944kaiche
#echo ${name%buhao*}
## output:xuewen
#echo ${name%%buhao*}
#

name="xuewenbuhao 944kaichebuhaozenmeban"
echo $name

# 
# output:34
echo $name | wc -L
# output:35
echo $name | wc -c
# output:35
echo $name | wc -m

#
