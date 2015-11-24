#!/bin/bash
#three number,print the max

check_num(){
    if [ $# -lt 2 ];then
        echo "more then 2 canshu"
        exit 1 1>&2
    fi
    if [ $1 -eq $1 ] 2>/dev/null && [ $2 -eq $2 ] 2>/dev/null && [ $3 -eq $3 ] 2>/dev/null;then
        echo "yes" >/dev/null
    else
        echo "no,must int"
        exit 2 1>&2
    fi
    if [ $? -eq 0 ];then
        if [ $1 -gt $2 ];then
            max=$1
        else
           max=$2
        fi
        
        if [ $max -gt $3 ];then
            echo "the max is $max"
        else
            echo "the max is $3"
        fi
    else
        exit 3 1>&2
    fi
}

check_num $*

