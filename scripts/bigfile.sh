#!/bin/bash
#/etc/inittab，内容多余100行，大文件
num=`cat /etc/inittab | wc -l | cut -d" " -f1`
[ $num -gt 100 ] && echo "big file" || echo "small file"
