#!/bin/bash
#
#FILE=$1
#
#if [ ! -e $FILE ]
#then
# echo "$FILE not exiest."
# exit 6 1>&2
#elif [ -f $FILE ]
#then
# echo "$FILE is a file."
#elif [ -d $FILE ]
#then
# echo "$FILE is a diroctory."
#else
# echo "Unknown."
#fi
echo $1
shift
echo $1
