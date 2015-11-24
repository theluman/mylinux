CGI
  web服务器进程根据对应程序的不同，调用对应的执行环境来执行程序的协议
apache cgi-bin

fastcgi机制  apache为客户端，php解释器为服务器
apache+php
  cgi
  mod
  fastcgi

Nginx+fpm


编程语言
  静态语言：编译型语言
    c,c++,JAVA
     优点：性能好
     缺点：每一次改动都需要重新编译,开发周期长，维护成本大
   动态语言：解释邢语言
     shell,perl,python
     优点：便于维护、众多共享模块，开发周期短，维护成本小
     缺点：性能差

facebook
动态语言-->静态语言
php-->Hiphop->c++

基本语法
算法，数据结构
编译原理
高性能开发

词法分析
语法分析
生成执行路径

opcode 操作码
php解释型语言
php解释器：
php suorce_code -->编译成二进制-->执行二进制格式

zend:opcode

yum install php php-mbstring
/etc/php.ini
