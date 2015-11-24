#!/bin/bash
#user.sh
#add|del users
#users_add_del(){
#    user_list=($@)
#    if [ $1 == "--add" ];then
#        for i in `seq 1 $[$#-1]`;do
#            if id ${user_list[i]} &>/dev/null;then
#	        echo "${user_list[i]} exists."
#	    else
#	        useradd ${user_list[i]} &>/dev/null
#		echo ${user_list[i]}|passwd --stdin ${user_list[i]} &>/dev/null
#		echo "add ${user_list[i]} successfully"
#	    fi
#	done
#    elif [ $1 == "--del" ];then
#        for i in `seq 1 $[$#-1]`;do
#            if id ${user_list[i]} &>/dev/null;then
#	        userdel -r ${user_list[i]} &>/dev/null
#		echo "delete ${user_list[i]} successfully"
#	    else
#	        echo "${user_list[i]} not exists."
#	    fi
#	done
#    elif [ $1 == "--help" ];then
#        echo "Usage: --add|--del user1 user2..."
#        exit 0
#    else
#        echo "Usage: --add|--del user1 user2..."
#        exit 11 1>&2
#    fi
#}
#
#if [ $# -lt 2 ];then
#    echo "Usage: --add|--del user1 user2..."
#    exit 1 1>&2
#elif [ `id -u` -ne 0 ];then
#    echo "Please re-run as root"
#    exit 2 1>2&
#else
#users_add_del $@
#fi
#
#
file_list=($@)
if [ $# -lt 2 ];then
  echo "Usage: `basename $0` copy_to_file cpfile1 cpfile2 ..."
  exit 1 1>&2
fi
if [ -e $1 ] && [ -d $1 ];then
  for i in `seq 1 $[$#-1]`;do
    cp ${file_list[i]} $1
    echo "copy ${file_list[i]} successfully."
  done
else
  echo "Usage: `basename $0` copy_to_file cpfile1 cpfile2 ..."
  exit 2 1>&2
fi 
