技巧

打开文件：
vim + filename  打开文件光标处在最后一行
vim +NUM filename  打开文件光标直接处在NUM行
vim +/PATTERN filename   打开文件定位至第一次被模式匹配到的行的行首

i 字符前插入 输入
a 字符后 输入
o 字符所在行的下方新建一行，输入

I 行首，转为输入
A 行尾，转为输入
O 上方新建行，转为输入

:q
:q!
:w
:wq
:w!
 

w移到下一个单词的词首
e跳到当前单词词尾或下一个单词的词尾
b跳到当前或前一个单词的词首

行内跳转
0  跳到本行的绝对行首
^  跳到本行的第一个非空白字符
$ 绝对行尾

numG 行间跳转
G 末尾的行
gg 首行

x 删除光标所在位置的字符
#x 删除向后数量的字符

d 删除
dd
#d
#dd
dw 删除单词
de
db

.
$
+#

p如果复制粘贴内容为整行，则粘贴在下方，不是整行，则粘贴在光标后
P如果复制粘贴内容为整行，则粘贴在上方，不是整行，则粘贴在光标前

y
yy

修改，先删除内容，在转为插入模式

替换
r
R

撤销 u
uuu
反撤销
ctrl+r

重复上一次的编辑操作
.

可视化模式
v 按字符选取
V 矩形选取
ctrl+v 块操作

/PATTERN 查找
  n下一个
  N上一个
?PATTERN 向上查找

s查找并替换
:ADDR1,ADDR2s@PATTERN@string@gi
1,$
%  <==> 1,$表示全文查找并替换

同时打开多个文件 复制粘贴

vim filename1 filename2 ...
切换 
:next 下一个 
:prev 上一个
:last 最后一个
:first 第一个文件
:qa 全部退出
分屏显示文件
:new <--> ctrl+w
ctrl+w松开在按s 水平拆分窗口
ctrl+w松开在按v 垂直拆分窗口
:only 取消分屏

在窗口间切换光标
ctrl+w松开在按箭头或hjkl切换 

分窗口显示多个文件
vim -o filename1 filename2 filename3  水平分割显示
vim -O  垂直分割显示
多窗口打开
:vs file 在新的垂直分屏中打开文件
:sv file 在新的水平分屏中打开文件

将当前的部分内容另存为另一个文件
:w /path/to/somewhere
:ADD1,ADD2w /path/to/somewhere
将另外的文件内容读取到当前文件
:r /path/to/somefile
原窗口新建空白文件：open file
和shell交互
:! command

高级话题
显示或取消显示行号
:set number--> :set nu
:set nonu

显示或略或区分字符大小写
:set ignorecase -->:set ic
:set noic

设定自动缩进
:set autoindent-->:set ai
:set noai
高亮显示搜索到的文本
:set hlsearch
:set nohlsearch
语法高亮
:syntax on
:syntax off

配置文件
全局 /etc/vimrc
当前用户 ~/.vimrc

vimtutor
