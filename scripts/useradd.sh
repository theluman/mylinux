#!/bin/bash
#批量添加用户
#root权限才能执行
#你的excell另存为，格式选择以制表符分隔的txt文档，文档名user.txt
#此脚本和user.txt放到同一个目录内
#执行完脚本，同目录内会有useradd.log,可查看添加结果


dir_name=./user.txt
log_name=./useradd.log
u_name=(`awk '{print $1}' $dir_name 2>/dev/null`)
u_passwd=(`awk '{print $2}' $dir_name 2>/dev/null`)
u_h_phone=(`awk '{print $3}' $dir_name 2>/dev/null`)
u_o_phone=(`awk '{print $4}' $dir_name 2>/dev/null`)
g_name=(`awk '{print $5}' $dir_name 2>/dev/null`) 
u_num=`cat $dir_name 2>/dev/null | wc -l 2>/dev/null`
o_addr=beijing
dos2unix $dir_name &>/dev/null

if [ ! -e $dir_name ];then
  echo "user.txt not exit."
  exit 1 1>&2
fi

if [ `id -u` -ne 0 ];then
  echo "script must be run as root"
  exit 1 2>&2
else
  echo "adding..."
  for i in `seq 1 $[$u_num-2]`;do
    groupadd ${g_name[i]} &>/dev/null
    useradd -g ${g_name[i]} -c "${u_name[i]},$o_addr,${u_o_phone[i]},${u_h_phone[i]}" ${u_name[i]} &>/dev/null
    echo "${u_passwd[i]}" | passwd --stdin ${u_name[i]} &>/dev/null
    if `id ${u_name[i]} &>/dev/null`;then 
      echo "add ${u_name[i]} successfully." &>>$log_name
    else
      echo "add ${u_name[i]} failure." &>>$log_name
    fi
  done
  echo "done."
  echo "check the $log_name to see if all the users are added successfully."
fi
