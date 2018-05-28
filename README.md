# Linux_Study
------ 
               
#### 作者：冰红茶  
#### 参考书籍：《鸟哥的Linux私房菜》 第三版 鸟哥   
            
------    
            
        
   想想自己以后多半在Linux环境中摸爬滚打了，学习Linux的基本操作必不可少。半年前我学了一半，但是由于一些原因中断了学习。后来学C和Node.js等后端语言的时候，明显感受到shell命令行和Linux环境对于开发的重要性。所以后面打算再补四章的内容：script和软件安装，进程与程序管理和Linux中常见的网络命令^_ ^
  
## 目录
        
## [一、计算机系统与Linux](#1)
### [1.1 计算机系统](#1.1)
### [1.2 Linux是什么](#1.2)   
### [1.3 Linux如何学习](#1.3)
        
## [二、 主机规划与磁盘分区](#4)
### [2.1 各种硬件设备在Linux中的文件名](#4.1)
### [2.2 磁盘分区与组成](#4.2)   
### [2.3 开机流程与主引导分区（MBR）](#4.3)
        
## [三、 首次登陆和在线求助man page](#3)
### [3.1 首次登陆系统](#3.1)
### [3.2 超简单的文本编辑器：nano](#3.2)   
### [3.3 正确的开关机](#3.3)
        
## [四、 文件权限和目录配置](#4)
### [4.1 文件权限的概念](#4.1)
### [4.2 改变文件的属性和权限](#4.2)   
### [4.3 目录与文件的权限意义](#4.3)
### [4.4 Linux的目录配置](#4.4) 
        
## [五、 Linux文件与目录管理](#5)
### [5.1 目录的相关操作](#5.1)
### [5.2 关于执行文件路径的变量：$PATH](#5.2)   
### [5.3 文件内容查阅](#5.3)
### [5.4 修改文件时间或创建新文件：touch](#5.4)   
### [5.5 文件的默认权限与隐藏属性与特殊权限](#5.5)
### [5.6 命令和文件的查询](#5.6)   
        
## [六、 Linux磁盘与文件系统的管理](#6)
### [6.1 EXT2文件系统](#6.1)
### [6.2 注意](#6.2)
### [6.3 相关命令](#6.3)   
### [6.4 目录树与其他文件系统](#6.4)
### [6.5 文件系统的简单操作](#6.5)
### [6.6 磁盘的分区，格式化，检验和挂载](#6.6)
        
## [七、 文件与文件系统的压缩与打包](#7)
### [7.1 常见的压缩命令](#7.1)
### [7.2 完整的备份工具dump和恢复工具restore](#7.2)   
                
## [八、 vim程序编辑工具](#8)
### [8.1 vi与vim](#8.1)
### [8.2 一些常用的命令](#8.2)   
### [8.3 Vim的文件保存，恢复与打开时的警告信息](#8.3)
### [8.4 其他操作与语系转换](#8.4)
            
## [九、 bash](#9)
### [9.1  硬件，内核，shell和bash的关系](#9.1)
### [9.2 shell的变量功能](#9.2)   
### [9.3 Bash shell的操作环境](#9.3)
### [9.4 Bash shell的环境配置文件（太复杂了，不看）](#9.4)   
### [9.5 数据的重定向](#9.5)
### [9.6 命令与管道命令](#9.6)  
        
## [十、 正则表达式](#10)
### [10.1 基础正则表达式](#10.1)
### [10.2 拓展正则表达式](#10.2)
### [10.3 sed工具](#10.3)
### [10.4 格式化打印：printf](#10.4)
### [10.5 awk：好用的数据处理工具](#10.5)
### [10.6 文件比较工具](#10.6)
        
## [十一、 Shell Script](#11)
### [11.1 基础知识](#11.1)
### [11.2 条件判断式](#11.2)
### [11.3 循环](#11.3)
### [11.4 函数function](#11.4)
### [11.5 调试](#11.5)
            
## [十二、 软件安装](#12)
### [12.1 make和configure](#12.1)
### [12.2 软件管理器RPM、RPMS和YUM](#12.2)
        
## [十三、 进程与程序管理](#13)
### [13.1 进程与程序](#13.1)
### [13.2 工作管理](#13.2)
### [13.3 系统资源的查看](#13.3)
        
## [十四、 Linux中常见的网络命令](#14)
### [13.1 设置网络参数的命令](#14.1)
### [13.2 工作管理](#14.2)
### [13.3 系统资源的查看](#14.3)
------      
        
        
<h2 id='1'> 一、计算机系统与Linux</h2>
<h3 id='1.1'>1.1 计算机系统</h3>  
        
#### 1) 五大单元        
> - 输入单元，内存，CPU，输出单元，外部存储设备
#### 2) 存储单位
> - 八进制：
>> - 1Byte（字节）=8bit
>> - 1KB=1024Byte
>> - 1MB=1024KB
>> - 1GB=1024MB
>> - 1TB=1024GB
>> - 1PB=1024TB
> - 十进制：
>> - 1KB=1000Byte
>> - 1MB=1000KB
>> - 1GB=1000MB
>> - 1TB=1000GB
>> - 1PB=1000TB
> - 网络上常用的单位是Mbit/s，1MB/s=8Mbit/s
> - 硬盘上的存储单位是采用十进制Byte，所以500G=500,000,000,000Byte（十进制）≈460GB（八进制）
#### 3) CPU
> - 主板最重要的是芯片组，芯片组有两个桥接器，北桥负责连接速度较快的CPU，内存和显卡，南桥负责连接速度比较慢的周边接口，如硬盘，USB，网卡等；
#### 4) 北桥VS南桥  
> - AMD的CPU为了加快内存和CPU的通讯，直接让内存控制组件集成到CPU中，而不通过北桥让内存和CPU通讯，理论上加速了CPU和内存的传输速度；
> - 北桥的总线称为系统总线，因为是内存传输的主要通道，南桥就是输入输出（I/O）总线，主要用于连接硬盘、USB、网卡等设备。
> - 北桥所支持的频率称为前端总线速度（Front Side
Bus，FSB）。而每次传送的位数则为总线宽度，而总线频宽= FSB\*总线宽度。
> - 与总线宽度相似的，CPU每次能处理的数据量称为字组大小（word
size），字组大小依据CPU的涉及有32位和64位之分，也就是现在我们常说的电脑32位和64位的由来。
#### 5) 外频VS倍频
> - 外频指的是CPU与外部组件进行数据传输/运算时的速度，倍频是CPU内部用来加速工作的一个倍数，两者相乘才是CPU的频率。
#### 6) 内存Memory
> - DRAM，Dynamic Random Access
Memory，动态随机访问内存，由于断电即消失，又称这种RAM为挥发性内存；
> - SRAM，Static Random Access
Memory，动态随机访问内存，晶体管比较多，价格比较贵，不易做成大容量，不过由于速度比较快，因此集成到CPU内称为高速缓存以加快数据的访问。
> - ROM只读存储器，非挥发性内存，Read Only Memory，BIOS（Basic Input Output
System）就是写在ROM里面；
#### 7) 操作系统
> - 内核：Kernel
> - 其实是一组程序，重点在于管理计算机的所有活动以及驱动系统中的所有硬件。即硬件的所有操作都必须通过操作系统来完成，负责整个计算机系统相关的资源分配和管理，内核的功能至少也要有：
>> - 系统调用的接口
>> - 程序管理
>> - 内存管理
>> - 文件系统管理
>> - 设备驱动
> - 系统调用：System Call
> - 操作系统提供一整组的开发接口给工程师来开发软件。
> - 在定义上讲，只要能够让计算机硬件正确无误的运行，那就是操作系统了，所以也就说操作系统就是内核与其提供的接口工具。
> - 驱动程序 操作系统通常会提供给一个开发接口给硬件开发商，让他们可以根据这个接口设计可以驱动他们硬件的驱动程序。
                            
<h3 id='1.2'>1.2 Linux是什么</h3> 
        
> - Linux的内核原型是1991年由托瓦兹（Linux Torvalds）写出来的，
#### 1) Linux是一套操作系统
> - 早期是针对386写的，Torvalds先生再写Linux的时候，其实该内核仅能“驱动386的所有硬件”而已，即所谓的“让386计算机开始运行，并且等待用户指令输入”。
> - Linux是Open
Source的，具备“可移植性”，提供了一个完整操作系统当中最底层的硬件控制与资源管理的完整架构。
> - Linux之前UNIX的历史，UNIX一开始是由Ken
Thompson用汇编写出来的，后来用高级语言的B语言写，发现性能不好，后来他们把B语言改进成C语言，再用C语言去写，最后放出UNIX的发行版（1973年）。              
        
<h3 id='1.3'>1.3 Linux如何学习</h3> 
        
#### 1) Linux有两种界面
分别是图形界面X Window和命令行界面Common Line，X Window
System也只是运行在Linux上的一套软件。
#### 2) 基础知识：
> - 计算机概论与硬件相关知识；
> - 先从Linux的安装和命令学起；
> - Linux操作系统的基础技能；
> - 务必学会vi文本编辑器；
> - Shell和Shell脚本的学习；
> - 一定要会软件管理员；
> - 网络基础的建立；
#### 3) [CentOS7.2 设置GRUB2引导界面分辨率](https://www.cnblogs.com/nidey/p/6374860.html)
> - 最近在学习OS引导启动，GRUB2的学习材料也不少，主要还看官方手册清晰些。公司里办公机的多启动用的ubuntu的界面，还挺炫酷的。之前看其他博客网文里看到可以设置grub2的分辨率，我拿CentOS7.2试了下，发现不行。网上都是说设置GRUB_GFXMODE=1440x900，再update-grub更新下grub.cfg，但是没生效（我又拿ubuntu14.04 server 试了，可以的）后来还是看GRUB官方手册解决了。进入系统后，更改分辨率，设置如下
             
        [root\@min-base \~]\# vim /etc/default/grub

将GRUB_TERMINAL_OUTPUT值由默认的"console"改为"gfxterm"，并添加GRUB_GFXMODE

                
        GRUB_TIMEOUT=2

        GRUB_DISTRIBUTOR="$(sed 's, release .\*$,,g' /etc/system-release)"

        GRUB_DEFAULT=saved

        GRUB_DISABLE_SUBMENU=true

        GRUB_TERMINAL_OUTPUT="gfxterm"

        GRUB_CMDLINE_LINUX="crashkernel=auto rd.lvm.lv=centos/root rd.lvm.lv=centos/swap
        rhgb quiet"

        GRUB_DISABLE_RECOVERY="true"

        GRUB_GFXMODE=1440x900,1024x768,640x480

#### 4) [修改命令行颜色](https://www.cnblogs.com/Q--T/p/5394993.html)
> - PS1应用之——修改linux终端命令行各字体颜色
> - 最近在学习linux操作系统（CentOS 6 & CentOS
7）。觉得linux终端命令行全部为白色,会经常导致命令与输出内容难以分辨。于是上网找到修改linux终端命令行颜色的方法，发现通过定义PS1环境变量即可实现,下面我以root用户身份进行操作。
> - **1.了解PS1** PS1是Linux终端用户的一个环境变量，用来定义命令行提示符的参数。在终端输入命令.可得到当前PS1的定义值
        
                [root@MiWiFi-R3-srv software]# echo $PS1
                //当前用户的账号名称\@主机名的第一个名字工作目录的最后一层目录名
                [\u@\h \W]$

<center>PS1的常用参数以及含义:</center>

>>>> | **PS1的常用参数** | **含义** |
>>>> |-----------------|------------|
>>>> |\d|代表日期，格式为weekday month date，例如："Mon Aug 1"|
>>>> |\H|完整的主机名称|
>>>> |\h|仅取主机名中的第一个名字|
>>>> |\t|显示时间为24小时格式，如：HH：MM：SS|
>>>> |\T|显示时间为12小时格式|
>>>> |\A|显示时间为24小时格式：HH：MM|
>>>> |\u|当前用户的账号名称|
>>>> |\v|BASH的版本信息|
>>>> |\w|完整的工作目录名称|
>>>> |\W|利用basename取得工作目录名称，只显示最后一个目录名|
>>>> |\\#|下达的第几个命令|
>>>> |\$|提示字符，如果是root用户，提示符为\\# ，普通用户则为 \$|

> - **2.颜色设置参数** 在PS1中设置字符颜色的格式为：\\[\\e[F;Bm\\]........\\[\\e[0m\\]，其中“F“为字体颜色，编号为30-37，“B”为背景颜色，编号为40-47,\\[\\e[0m\\]作为颜色设定的结束。

>>>> | **F** | **B** | **颜色** |
>>>> |-----------------|------------|-----------|
>>>> |F|B|颜色|
>>>> |30|40|黑色|
>>>> |31|41|红色|
>>>> |32|42|绿色|
>>>> |33|43|黄色|
>>>> |34|44|蓝色|
>>>> |35|45|紫红色|
>>>> |36|46|青蓝色|
>>>> |37|47|白色|

> - 比如要设置命令行的格式为绿字黑底(\\[\\e[32;40m\\])，显示当前用户的账号名称(\\u)、主机的第一个名字(\\h)、完整的当前工作目录名称(\\w)、24小时格式时间(\\t)，可以直接在命令行键入如下命令：
        
                # PS1='[\[\e[32;40m\]\u@\h \w \t]$ \[\e[0m\]'
> - 个人比较喜欢的的格式:
        
                PS1="\[\e[37;40m\][\[\e[32;40m\]\u\[\e[37;40m\]@\h \[\e[36;40m\]\w\[\e[0m\]]\$ "
> - 但注意这样的设置只是临时性的.
> - **3.修改.bashrc文件,永久保存命令行样式.** 上面的设置的作用域只有当前终端的登陆有效，关闭终端或退出登录即刻失效。要想永久性的保存设置，需要修改.bashrc配置文件。
> - 键入命令：
        
                # cd
                # ls -la
> - 现在可以看到.bashrc这个文件。编辑.bashrc:
        
                # vim .bashrc
                PS1="\[\e[37;40m\][\[\e[32;40m\]\u\[\e[37;40m\]@\h \[\e[36;40m\]\w\[\e[0m\]]\$ "
> - 保存退出。
> - 重新加载bash配置文件:
        
                # source .bashrc
> - 即可立即并永久生效了。
        
------      
        
        
<h2 id='2'>二、 主机规划与磁盘分区</h2>
<h3 id='2.1'>2.1 各种硬件设备在Linux中的文件名</h3> 
        
#### 1) 各种硬件设备在Linux中的文件名
> - 在Linux这个系统中，几乎所有额硬件设备文件都在/dev这个目录内：

>>>> | 设备                 | 设备在Linux内的文件名                     |
>>>> |----------------------|-------------------------------------------|
>>>> | IDE硬盘              | /dev/hd[a-d]                              |
>>>> | SCSI/SATA/USB        | /dev/sd[a-p]                              |
>>>> | 软驱                 | /dev/fd[a-p]                              |
>>>> | 打印机               | 25针：/dev/lp[0-2] USB：/dev/usb/lp[0-15] |
>>>> | 鼠标                 | USB：/dev/usb/mouse[0-15] PS2：/dev/psaux |
>>>> | 当前的CD ROM/DVD ROM | /dev/cdrom                                |
>>>> | 当前鼠标             | /dev/mouse                                |
>>>> | 磁带机               | IDE：/dev/ht0 SCSI：/dev/st0              |        
        
<h3 id='2.2'>2.2 磁盘分区与组成</h3> 
        
#### 1) IDE硬盘
> - 通常主机会提供两个IDE接口，分别叫IDE1(Primary)和IDE2(Secondary)，每个IDE接口可以连接一条IDE扁平电缆，每条IDE扁平电缆可以连接两个IDE
> - Master（主设备）和Slave（从设备）

>>>> | **IDE/Jumping** | **Master** | **Slave** |
>>>> |-----------------|------------|-----------|
>>>> | IDE1(Primary)   | /dev/hda   | /dev/hdb  |
>>>> | IDE2(Secondary) | /dev/hdc   | /dev/hdd  |

#### 2) SCSI/SATA/USB
> - 磁盘没有一定的顺序，要看Linux内核具体检测到的磁盘顺序；
#### 3) 磁盘的组成
> - 磁盘由盘片，机械手臂，磁头和主轴马达组成，数据在盘片上，盘片又可以细分为扇区（Sector）和柱面（Cylinder），其中扇区每个为512Bytes。
> - 其实这个扇盘的第一扇区特别重要，因为它主要记录了两个重要的信息：
>> - 主引导分区（Master Boot Record, MBR）可以安装引导加载程序的地方，有446Bytes
>> - 分区表（partition
table）记录整块硬盘分区的状态，有64Bytes。分区的最小单位是煮柱面，总共分为4组记录区P1\~P4，每组记录区记录了该区段的起始和结束的柱面号码。分区分为主分区primary和拓展分区 extended
        
>>>> | **设备**                 | **设备在Linux内的文件名**                     |
>>>> |----------------------|-------------------------------------------|
>>>> | P1              | /dev/hda1                              |
>>>> | P2        | /dev/hda2                              |
>>>> | P3                 | /dev/hda3                              |
>>>> | P4               | /dev/hda4 |
        
> - 简单的定义
>> - 主分区和拓展分区最多可以有4个；
>> - 拓展分区最多有一个；
>> - 逻辑分区是由拓展分区持续切割出来的分区；
>> - 能够被格式化后作为数据访问的分区为主分区和逻辑分区，拓展分区无法格式化；
>> - 逻辑分区的数量依操作系统的不同而有所区别，IDE硬盘最多有59个逻辑分区（5号\~63号），SATA硬盘最多有11个（5号\~15号）
>> - 主分区和逻辑分区不能够被整合，若强制整合则会破坏拓展分区，拓展分区遭到破坏，其他逻辑分区也会收到牵连。
>> - 拓展分区的目的是使用额外的扇区来记录分区信息，其本身并不能拿来格式化，但可以继续切为逻辑分区（Logical partition）而逻辑分区的命名则从/dev/hda5开始。给新硬盘上建立分区时都要遵循以下的顺序：建立主分区→建立扩展分区→建立逻辑分区→激活主分区→格式化所有分区。
        
<h3 id='2.3'>2.3 开机流程与主引导分区(MBR）</h3> 
        
> - 定义：韧体，写入到硬件上的一个软件程序，BIOS是一个韧体。
> - 流程：开机 BIOS MBR 引导加载程序 内核文件
> - 位于MBR里面的引导加载程序叫Boot roader：
>> - 提供选择不同系统的选项；
>> - 载入内核文件；
>> - 转交其他loader
> - 位于分区里面启动扇区（boot sector）的引导加载程序：
>> - 每个分区都拥有自己的启动扇区（boot sector）；
>> - 实际可开机的内核文件放置到各个分区里面；
>> - loader只认自己分区的内核文件，以及其他loader；
>> - loader可将管理权交给另外的管理程序；
> - 此特色造就了“多重引导”的功能。
        
------      
        
        
<h2 id='3'>三、 首次登陆和在线求助man page</h2>
<h3 id='3.1'>3.1 首次登陆系统</h3> 
        
#### 1) 窗口模式和命令行模式的切换
> - Ctrl+Alt+F1 窗口模式
> - Ctrl+Alt+F2\~F6 命令行模式
> - 命令行模式登陆输入密码的时候“不会显示任何字样。”
> - 退出账号的时候使用命令：exit
> - 模式登陆后所求的程序被称为shell，由于这个程序是内核最外层跟用户进行通讯工作的，所以戏称为“shell”；
#### 2) 命令格式
        
                [lvhongbin@loccalhost ~]$ command [-option] parameter1 parameter2 …
                账号名                     命令  选项  参数1     参数二
> - 一行命令中第一个输入的绝对是“命令”或者是“可执行文件”；
> - 中括号并不实际存在，选项前添加一个短横线-；
> - 命令太长的时候，可以使用反斜杠“\\”来转义[Enter]符号，使命令连续到下一行
#### 3) Linux是区分大小写的；
> - 如ls这个命令列出“自己主文件夹（\~）”，显示日期的date，显示日历cal，显示好用的计算器：bc，离开计算器回到命令提示符时用quit。
#### 4) 重要的热键
        
>>>> | **快捷键**                 | **含义**                     |
>>>> |----------------------|-------------------------------------------|
>>>> | 【Tab】【Tab】           |具有“命令补全”和“文件补齐”的功能； |
>>>> | 【Ctrl】+ c            | 强制当前程序“停止”；  |
>>>> | 【Ctrl】+ d            | 关闭文字界面；   |
>>>> | man命令              | 按下空格键进行往下翻页，按下“q”离开man环境    |
>>>> | info命令             | 可以按下N、P、U分别进行下一个，上一个和上一个节点的选择，光标选中开头具有“\*”命令的一行并按下【ENTER】便可进入该节点，？号显示命令一览表   |
            
        
<h3 id='3.2'>3.2 超简单的文本编辑器：nano</h3> 
            
> - 打开或者新建一个新的文件：nano text.txt
> - 其中，指数符号\^ 表示【Ctrl】M表示【Alt】        
        
<h3 id='3.3'>3.3 正确的开关机</h3> 
        
#### 1) 注意 
> - Linux是一个多用户工作的系统，不能随便关掉电源来关机。在关机时需要注意：
>> - 查看系统的使用状态 如果看网络的联机状态，可以执行“netstat> - -a”的命令，
        
                [root@MiWiFi-R3-srv software]# netstat -a
                Active Internet connections (servers and established)
                Proto Recv-Q Send-Q Local Address           Foreign Address         State      
                tcp        0      0 0.0.0.0:sunrpc          0.0.0.0:*               LISTEN     
                tcp        0      0 MiWiFi-R3-srv:domain    0.0.0.0:*               LISTEN     
                tcp        0      0 0.0.0.0:ssh             0.0.0.0:*               LISTEN     
                tcp        0      0 localhost:ipp           0.0.0.0:*               LISTEN     
                tcp        0      0 localhost:smtp          0.0.0.0:*               LISTEN     
                tcp6       0      0 [::]:sunrpc             [::]:*                  LISTEN     
                tcp6       0      0 [::]:ssh                [::]:*                  LISTEN     
                tcp6       0      0 localhost:ipp           [::]:*                  LISTEN     
                tcp6       0      0 localhost:smtp          [::]:*                  LISTEN     
                udp        0      0 0.0.0.0:51977           0.0.0.0:*                          
                udp        0      0 0.0.0.0:54043           0.0.0.0:*                          
                udp        0      0 0.0.0.0:mdns            0.0.0.0:*                          
                udp        0      0 MiWiFi-R3-srv:domain    0.0.0.0:*                          
                udp        0      0 0.0.0.0:bootps          0.0.0.0:*                          
                udp        0      0 0.0.0.0:bootpc          0.0.0.0:*                          
                udp        0      0 localhost:323           0.0.0.0:*                          
                udp6       0      0 [::]:49660              [::]:*                             
                udp6       0      0 localhost:323           [::]:*                             
                raw6       0      0 [::]:ipv6-icmp          [::]:*                  7          
                Active UNIX domain sockets (servers and established)
                Proto RefCnt Flags       Type       State         I-Node   Path
                unix  2      [ ACC ]     STREAM     LISTENING     16128    /var/run/rpcbind.sock
                unix  2      [ ACC ]     STREAM     LISTENING     13569    /run/lvm/lvmetad.socket
                unix  2      [ ACC ]     STREAM     LISTENING     16132    /var/run/libvirt/virtlogd-sock
                unix  2      [ ACC ]     STREAM     LISTENING     36700    @/tmp/dbus-10iqxiu4
>> - 如果要看后台执行的程序，可以执行“ps -aux”的命令;
        
                [root@MiWiFi-R3-srv software]# ps -aux
                USER        PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
                root          1  0.0  0.1 193744  6888 ?        Ss   May26   0:16 /usr/lib/systemd/systemd --switched-root --system --deserialize 21
                root          2  0.0  0.0      0     0 ?        S    May26   0:00 [kthreadd]
                root          3  0.0  0.0      0     0 ?        S    May26   0:00 [ksoftirqd/0]
                root          5  0.0  0.0      0     0 ?        S<   May26   0:00 [kworker/0:0H]
                root          7  0.0  0.0      0     0 ?        S    May26   0:00 [migration/0]
                root          8  0.0  0.0      0     0 ?        S    May26   0:00 [rcu_bh]
                root          9  0.0  0.0      0     0 ?        R    May26   0:07 [rcu_sched]
                root         10  0.0  0.0      0     0 ?        S    May26   0:00 [watchdog/0]
                root         11  0.0  0.0      0     0 ?        S    May26   0:00 [watchdog/1]
                root         12  0.0  0.0      0     0 ?        S    May26   0:00 [migration/1]
                root         13  0.0  0.0      0     0 ?        S    May26   0:00 [ksoftirqd/1]
> - 通知在线用户关机的时刻 对于Linux系统来讲，重启和关机：reboot，halt和poweroff是非常重要的操作，一般需要root用户才能执行

#### 2) 数据同步写入磁盘：sync
> - 一般来讲，数据都要经过内存才能被CPU执行，而且数据又经常需要通过内存读入或者写进硬盘。但是硬盘的传输和读写效率很低，为了提高效率，某部分数据进入内存后先不写入硬盘，继续保留在内存中，方便后续的修改。如果这时候突然死机后者关掉电源，由于内存是挥发性存储器，数据会丢失。所以在关机之前需要做好数据从内存写入硬盘的操作。用命令sync完成。
> - 事实上一般账户也能使用sync命令，只是只能保留自己的数据罢了。
#### 3) 常用的关机命令：shutdown
> - shutdown执行它的工作是送信号〔signal〕给init程序﹐要求它改变runlevel。Runlevel> - 0被用来停机〔halt〕﹐runlevel 6是用来重新激活〔reboot〕系统﹐而runlevel> - 1则是被用来让系统进入管理工作可以进行的状态﹔这是预设的﹐假定没有-h也没有-r参数给shutdown。要想了解在停机〔halt〕或者重新开机〔reboot〕过程中做了哪些动作﹐你可以在这个文件/etc/inittab里看到这些runlevels相关的资料。
        
>>>> | **参数** | **参数说明** |
>>>> |-----------------|------------|
>>>> | [-t] | 在改变到其它runlevel之前﹐告诉init多久以后关机。
>>>> | [-r] | 重启计算器。
>>>> | [-k] | 并不真正关机﹐只是送警告信号给每位登录者〔login〕。
>>>> | [-h] | 关机后关闭电源〔halt〕。
>>>> | [-n] |不用init﹐而是自己来关机。不鼓励使用这个选项﹐而且该选项所产生的后果往往不总是你所预期得到的。
>>>> | [-c] | cancel current> - process取消目前正在执行的关机程序。所以这个选项当然没有时间参数﹐但是可以输入一个用来解释的讯息﹐而这信息将会送到每位使用者。
>>>> | [-f] | 在重启计算器〔reboot〕时忽略fsck。
>>>> | [-F] | 在重启计算器〔reboot〕时强迫fsck。
>>>> | [-time] | 设定关机〔shutdown〕前的时间。
        
> - 例如：
                
                /sbin/shutdown －h now－－－－－立即关机；
                /sbin/shutdown －h 20：49－－－－20：49分关机
                /sbin/shutdown －h ＋10－－－－－10分钟后关机
                /sbin/shutdown －r now －－－－－立即重启
                /sbin/shutdown －r ＋10 ‘The system will> - reboot'－－－－10分钟后系统重启并给每个登录用户发通知
                /sbin/shutdown －k now ‘The system will> - reboot'－－－－仅给每个登录用户发通知并不真关机

#### 4) halt 最简单的关机命令
> - 其实halt就是调用shutdown> - -h。halt执行时﹐杀死应用进程﹐执行sync系统调用﹐文件系统写操作完成后就会停止内核。
>>>> | **参数** | **参数说明** |
>>>> |-----------------|------------|
>>>> | [-n] | 防止sync系统调用﹐它用在用fsck修补根分区之后﹐以阻止内核用老版本的超级块〔superblock〕覆盖修补过的超级块。
>>>> | [-w] | 并不是真正的重启或关机﹐只是写wtmp〔/var/log/wtmp〕纪录。
>>>> | [-d] | 不写wtmp纪录〔已包含在选项[-n]中〕。
>>>> | [-f] | 没有调用shutdown而强制关机或重启。
>>>> | [-i] | 关机〔或重启〕前﹐关掉所有的网络接口。
>>>> | [-p] | 该选项为缺省选项。就是关机时调用poweroff。

#### 5) reboot
> - reboot的工作过程差不多跟halt一样﹐不过它是引发主机重启﹐而halt是关机。它的参数与halt相差不多。
#### 6) 切换执行等级：init
> - init是所有进程的祖先﹐它的进程号始终为1﹐所以发送TERM信号给init会终止所有的用户进程﹑守护进程等。shutdown就是使用这种机制。init定义了8个运行级别(runlevel)，init 0为关机﹐init1为重启。关于init可以长篇大论﹐这里就不再叙述。另外还有telinit命令可以改变init的运行级别﹐比如﹐telinit -iS可使系统进入单用户模式﹐并且得不到使用shutdown时的信息和等待时间。
#### 7) Poweroff
> - 关机，在多用户方式下(Runlevel 3)不建议使用。Poweroff基本和halt一致，不过使用poweroff会关机后并且切断电源。poweroff在关闭计算机操作系统之后，最后还会发送ACPI指令，通知电源，最后切断电源供应，当然路由器等嵌入系统不支持ACPI的，所以这个无效。

        
------      
        
               
<h2 id='4'>四、 文件权限和目录配置</h2>
<h3 id='4.1'>4.1 文件权限的概念</h3> 
        
> - “ls”命令表示list，“-al”表示all，文件名前面的“.”表示包含隐藏文件，下面是一般格式：
        
                -rw-rw-r--.  1      lvhongbin   lvhongbin   17      Dec 31 17:20    hello.txt
                文件权限    连接数 所有者     用户组 文件大小 最后修改的日期    文件名
> - 第一列代表这个文件的类型和权限（permission）；
>> - 第一个文件权限共10个字符，共分4组，第一个字符自己一组，后面每三个字符一组，分别记为group1\~group4。r的权利最容易获得，其次是x，最难是w。
        
>>>> | **参数** | **参数说明** |
>>>> |-----------------|------------|
>>>> | group1:目录，文件或者链接文件|
>>>> | [d] | 表示目录 |
>>>> | [-] | 表示文件|
>>>> | [\|] | 表示连接文件linkfile|
>>>> | [b] | 表示设备文件里面的可供存储的接口设备|
>>>> | [c] | 表示设备文件里面的串行端口设备，如鼠标和键盘|
>>>> | |
>>>> | |
>>>> | group2 | 文件所有者的权限|
>>>> | [r] | 表示可读|
>>>> | [w] | 表示可写|
>>>> | [x] | 表示可执行|
>>>> | [-] | 表示啥权利都没有>《<|
>>>> | |
>>>> | |
>>>> | group3 | 同用户组的权限|
>>>> | [r] | 表示可读|
>>>> | [w] | 表示可写|
>>>> | [x] | 表示可执行|
>>>> | [-] | 表示啥权利都没有>《<|
>>>> | |
>>>> | |
>>>> | group4 | 其他非本用户组的权限|
>>>> | [r] | 表示可读|
>>>> | [w] | 表示可写|
>>>> | [x] | 表示可执行|
>>>> | [-] | 表示啥权利都没有>《<|

> - 第二列表示有多少文件名连接到此节点；
> - 第三列表示这个文件（或目录）的“所有者账号”；
> - 第四列表示所属的用户组 你的账号会依附于一个或者多个用户组。
> - 第五列为文件大小 文件大小的单位默认为Byte。
> - 第六列为最近修改的日期；
> - 第七列为文件名；

<h3 id='4.2'>4.2 改变文件的属性和权限</h3> 
        
#### 1) chgrp改变文件所属用户组
> - 格式：chgrp [-r] 用户组 文件名/文件目录
> - [-r]表示递归，即连同子目录下的所有文件和目录；

#### 2) chown改变文件所有者
> - 格式：chown [-r] 所有者 文件名/文件目录
> - chown也能改变用户组名称，在所有者后面加上“.”和所要修改的用户组名称，当然了，也能单纯的修改用户组名称，所有者换成“.”和所要修改的用户组名称；

#### 3) chmod改变文件的权限
> - 法一：数字类型改变 rwx分别代表4、2、1，然后xyz分别代表owner、group和others三种身份的权限累加；
        
                格式：chmod [-r] xyz 文件名/文件目录
> - 法二：符号类型改变
    
>>>> | chmod | u g o a | \+(加入) -(除去) =(设置) | r w x | 文件或者目录 |
>>>> |-------|---------|--------------------------|-------|--------------|
                
                // 注意，以上u=rwx,go=rx的逗号旁边是没有空格隔开的
                [root@MiWiFi-R3-srv software]# chmod u=rwx,go=rx hello.txt
#### 4) cp复制
> - 格式：cp 源文件 目标文件
            
<h3 id='4.3'>4.3 目录与文件的权限意义</h3> 
        
#### 1) 权限对文件的重要性
> - 三种权限均主要针对文件的内容而言的，与文件的存在与否没有关系
> - r：可读取此文件的实际内容；
> - w：可以编辑，新增或者修改该文件的内容；
> - x：该文件具有被系统执行的权限；
#### 2) 权限对目录的重要性；
> - r：可读取此目录结构列表的权限，既可以查询该文件目录下的文件名数据；
> - w：可以更改该目录结构列表的权限，即新建新的文件与目录，删除已经存在的文件或者目录，将已存在的文件或者目录进行重命名，转移改目录内的文件、目录位置；
> - x：该文件具有被系统执行的权限，即代表用户能否进入该目录称为工作目录的用途，所谓工作目录（work directory）就是你目前所在的目录，拥有x权限可以查阅文件的内容，所以在开放目录给别人浏览的时候，应该至少给予r及x的权限，但是w的权限不能随便给；

#### 3) 重要的命令：
> - cd：切换目录
> - mkdir：新建目录
> - touch：新建空的文件
> - su：切换用户
> - cd ..：返回上一级目录
> - cd /：返回根目录
> - rm：删除文件
> -  rm -r ：删除文件目录                                   
                                                            
<h3 id='4.4'>4.4 Linux的目录配置</h3> 
        

#### 1) Filesystem hierarchy standard, FHS目录配置标准
        
>>>> |                  | 可分享的shareable     | 不可分享的unshareable |
>>>> |------------------|-----------------------|-----------------------|
>>>> | 不变的static     | /usr软件放置处        | /etc配置文件          |
>>>> |                  | /opt第三方软件        | /boot开机与内核文件   |
>>>> | 可变动的variable | /var/mail用户邮件信箱 | /var/run程序相关      |
>>>> |                  | /var/spool/news新闻组 | /var/lock程序相关     |
        
> - 可分享的shareable：可以分享给网络上其他主机挂载用的目录；
> - 不可分享的unshareable：不可以分享给网络上其他主机挂载用的目录；
> - 不变的：这些数据不经常变动，例如一些函数库和文件说明文件等；
> - root：与开机系统有关；
> - usr：UNIX software resource：与软件的安装/执行有关；
> - var：variable，与系统运作有关；
> - prop：跟内存数据相关的文件夹，由于数据都在内存中，所以不占据硬盘空间；
        
>>>> | 目录   | 内容                                             |
>>>> |--------|--------------------------------------------------|
>>>> | /bin   | 系统执行文件                                     |
>>>> | /boot  | 开机会使用到的文件                               |
>>>> | /dev   | 任何设备和接口设备的文件                         |
>>>> | /etc   | 系统的主要配置文件，如人员的账号密码             |
>>>> | /home  | 系统默认用户的主文件夹                           |
>>>> | /lib   | 系统的函数库                                     |
>>>> | /media | 可删除的设备，包括DVD，软盘等                    |
>>>> | /mnt   | 暂时挂载某些设备                                 |
>>>> | /opt   | 第三方软件放置的目录，如KDE这个桌面管理系统      |
>>>> | /root  | 系统管理员的主文件夹                             |
>>>> | /sbin  | 包括开机，修复，还原系统所需要的重要系统执行命令 |
>>>> | /srv   | 跟网络服务有关                                   |
>>>> | /tmp   | 程序运行时数据暂时放置的地方                     |

#### 2) 绝对路径VS相对路径
> - 绝对路径：由根目录（/）开始写起的文件名或者目录名称；
> - 相对目录：不是由根目录（/）开始写起的文件名或者目录名称；
> - uname：查看系统信息命令
                            
------      
        
        
<h2 id='5'>五、 Linux文件与目录管理</h2>
<h3 id='5.1'>5.1 目录的相关操作</h3> 
        
> - .：代表当前目录，也可以用./来表示；
> - ..：代表上一层目录，也可以用../来表示
> - \-：代表前一个工作目录
> - \~：代表当前用户身份所在的主文件夹
> - \~account：代表account这个用户的主文件夹，account是一个账号名称，即/home/account
> - pwd：print working directory显示当前目录；
> - mkdir：可以创建目录，但是一次只能生成一层，不过可以使用-p的参数进行多层创建；
> - rmdir：删除空的目录，也可以使用-p的参数
> - mv：文件移动，即剪切然后到别的目录粘贴 mv [-option] 原文件路径+名字
    新文件路径+名字
> - cp：复制 cp [-option] 原文件路径+名字 新文件路径+名字
> - \-i：该参数表示在执行操作的时候会询问用户要不要进行覆盖等信息
> - \-a：全部
> - echo：显示出，打印的意思
> - basename：取得文件的名字
> - dirname：取得文件的目录
        
        
<h3 id='5.2'>5.2 目关于执行文件路径的变量：$PATH</h3> 
        
> - 命令ls的完整路径是/bin/ls(绝对路径)
> - 那为什么只用输入ls就可以了呢？在于$PATH；
> - 可以尝试用echo $PATH 看看都有哪些变量，每个变量都用冒号：隔开
>> - /usr/local/bin:
>> - /usr/local/sbin:
>> - /usr/bin:
>> - /usr/sbin:
>> - /bin:
>> - /sbin:
>> - /home/lvhongbin/.local/bin:
>> - /home/lvhongbin/bin
> - 在PATH中加入新的目录可执行如下命令：
        
                PATH=”$PATH”:/root                
        
<h3 id='5.3'>5.3 文件内容查阅</h3> 
        > - cat：concatenate由第一行开始显示文件内容；
> - tac：从最后一行开始显示，可以看出tac是cat的倒写形式;
> - nl：显示的时候顺便输出行号；
> - more：一页一页地显示文件内容；
> - head：只看前面几行；
> - tail：只看后面几行；
> - od：以二进制的形式读取文件内容；
        

<h3 id='5.4'>5.4 修改文件时间或创建新文件：touch</h3> 
        
> - modification time (mtime)：这个是文件更新的时间；
> - status time(ctime)：状态或者权限被改变的时候的时间；
> - access time(atime)：文件被使用的时候的时间，如被打开或者复制；
> - 那怎么查看呢？
        
                ls -l --time=atime 文件全路径
> - 若想查看所有的时间：
        
                // “ll”两个小写的l表示“ls
                // -l”的命令，命令与命令之间用分号；隔开。默认查询修改时间mtime，此时间不需要添加--time命令，否则会出错；
                ll test.txt; ll --time=ctime test.txt; ll --time=atime test.txt
                
> - 修改时间命令 使用该命令修改的时间只会修改mtime和atime，而ctime会更改为目前的时间；
        
                touch -d "2 days ago" test.txt


        
<h3 id='5.5'>5.5 文件的默认权限与隐藏属性与特殊权限</h3> 
        
#### 1) 文件默认权限
> - 文件的默认权限为-rw- rw- rw-，简称666；
> - 目录的默认权限是drwxrwxrwx，简称777；
> - 使用umask时后面跟随3位数字，用默认的减去umask后面跟随的数字便可得新得到的默认权限；
> - 如：umask 002

#### 2) 文件的隐藏属性：
> - chattr修改文件隐藏属性
> - chattr [+-=][ASacdistu] 文件或者目录名称
> - 如：chattr +i 文件全路径
> - 表示添加文件不被删除，改名，设置连接，也无法添加或者写入数据的属性
> - chattr -i 文件全路径
> - 表示删除该属性
> - 另外还有其他属性
> - lsattr显示文件的隐藏属性

#### 3) 文件特殊权限
> - SUID(SetUserID)
> - 符号：s，数字：4
> - 功能：可以暂时获得root的权限，执行者暂时具备程序所有者owner的权限；
> - 前提：二进制程序（binary program），执行者对于改程序具有x的可执行权限；
> - 例子：chmod u=rwxs,go=x text.txt 或者chmod 4755 test.txt
> - SGID(SetGroupID)
> - 符号：s，数字：2
> - 功能：执行者暂时具备程序用户组Group的权限；
> - 前提：二进制程序（binary program），执行者对于改程序具有x的可执行权限；
> - 例子：chmod, g+s text.txt
> - SBIT
> - 符号：t，数字：1
> - 功能：当用户拥有SBIT权限时。仅有自己和root才有权限对自己创建的文件和目录进行删除，重命名和移动等操作，而无法删除别人的文件；
> - 前提：目录，执行者对于改程序具有x的可执行权限；；
> - 例子：chmod, o+t text.txt

        
<h3 id='5.6'>5.6 命令和文件的查询</h3> 
        
#### 1) 脚本文件名的查询which
> - Which [-a] command
> - 在$PATH中查询命令的路径，加上-a表示，查找出所有的路径；
#### 2) 文件名的查找
> - whereis 查找特定文件
> - whereis [-bmus] 文件或者目录名
> - locate  查找含有特定前缀的文件或者目录，和whereis一样特点是查找已创建的数据库，对于不同发行版的Linux，每次更新数据库的时间都不相同，比如CentOS5.x是每天一更新。更新后才能找最新的文件，手动更新的命令为“updatedb”
> - find 直接在硬盘中查找，比较花时间
        
                find [PATH] [option] [action]
> - 跟时间有关的参数：mtime,ctime,atime
>> - \-mtime n：n为数字，意义是n天之前的“一天之内”被更改的文件，即n\<mtime\<n+1；
>> - \-mtime +n：列出n天之前（不包含n天本身）被更改的文件，即≥n+1天的文件；
>> - \-mtime -n：列出n天之内（含n天本身）被更改的文件，即≤n；
>> - \-newer file：file为一个存在的文件，列出比file还要更新的文件名；
        
                find /etc -newer /etc/passwd
> - 即在/etc目录下寻找比/etc/passwd还要新的文件；
> - 与用户名有关的参数
>> - \-user name：name为用户名
>> - \-group name：name为用户组名
>> - \-nouser：寻找的用户名不存在
>> - \-nogroup：寻找的用户组不存在
        
                find /home -user lvhongbin 把某用户的所有文件都找出来
> - 与文件权限及名称相关的参数
>> - \-name filename：查找文件名为filename的文件
>> - \-size [+-]SIZE：查找比SIZE大（+）或者小（-）的文件，单位c代表Byte，k代表KB
>> - \-perm mode：mode是数字属性，属性刚好等于mode的文件，如4755.
>> - \-perm -mode：mode是数字属性，属性要包含mode的文件
>> - \-perm +mode：mode是数字属性，属性有任一mode的文件
当然了，find还有许多其他的功能；
        
------      
        
        
<h2 id='6'>六、 Linux磁盘与文件系统的管理</h2>
<h3 id='6.1'>6.1 EXT2文件系统</h3> 
        
#### 1) 认识EXT2文件系统        
> - Linux最传统的磁盘文件系统：EXT2（Linux second extended file system，Ext2fs）
> - 扇区sector为最小的物理存储单位，每个扇区为512Bytes；
> - 将扇区围成一个圆，就成为一个柱面，柱面是最小的分区（partition）单位
> - 文件系统分为三个部分；
>> - Super block：记录此文件系统的整体信息，每个；
>> - Inode：记录文件的权限和属性，一个文件占用一个inode，同时记录此文件的数据所在的block号码；
>> - Block：实际记录文件的内容，若文件太大时，会占用多个block。
> - 这种通过Inode查找Block的访问方法称为“索引式文件系统”（indexed allocation）
> - 另外还有另外一种方式，如U盘，他没有Inode，只有Block，每一个Block除了记录信息和数据以外，还记录了下一个Block的编号；        
#### 2) EXT2文件系统
> - 由启动扇区和多个blockgroup组成，每个blockgroup由superblock，文件系统描述，块对应表，inode对应表，inode table，data block。
> - EXT2文件系统中block大小只有1KB，2KB和4KB三种而已，而且格式化的时候block的大小就已经固定了，每个block都有编号，以便indode的记录。
#### 3) 注意：
> - Super block 
>> - 每个super block都可以用dumpe2fs这个命令来查询；
> - Block 
>> - Block的大小和数量在格式化完了就不能在改变了（除非重新格式化）；
>> - 每个block只能放置一个文件的数据；
>> - 如果一个文件大于一个block的大小，则会占用多个block；
>> - 若文件小于block，则该block的剩余空间就不能再被利用了（磁盘空间就会被浪费）
> - Inodetable
>> - 分为12个直接记录+1个间接记录+1个双间接+1个三间接，间接事宜block拓展作为号码记录；
> - Filesystem Description
>> - 这个区段描述的是每个blockgroup的开始和结束的block号码；
> - Block bitmap
>> - 用来记录哪些block是空的；
> - Inode bitmap
>> - 用来记录哪些inode是空的；
        
<h3 id='6.2'>6.2 相关命令</h3> 
> - dumpe2fs：查询super block的信息；
> - dumpe2fs [-hb]，如dumpe2fs /dev/hdc2
> - df：调出目前挂载的设备；
> - ls -i：列出文件的inode值
        
<h3 id='6.3'>6.3 目录树与其他文件系统</h3> 
        
#### 1) 文件的读取流程：
        
                16777283 drwxr-xr-x. 2 lvhongbin lvhongbin 1024 Jan 1 17:42 text.text
> - 其实目录就是一个挂载点的信息，通过目录一层一层地揭开inode的信息，最终找到文件数据的block位置。从而找到文件。
#### 2) 文件的写入流程：
> - 先确定用户对于添加文件的目录是否具有w和x的权限，若有才添加；
> - 跟据Inode bitmap找到没有使用的inode号码，并将新文件的权限/属性写入；
> - 跟据Block bitmap找到没有使用的block号码，并将实际的数据写入block，且更新inode的block的指向数据；
> - 将刚写入的inode与block数据同步更新Inode bitmap和Block bitmap，并更新superblock的内容；
#### 3) 数据存放区域：inode table，data block；
> - 中间数据metadata：superblock，block bitmap，inode> - bitmap，数据经常变动，每次添加，删除，编辑的时候都可能会影响这三部分的数据；
#### 4) 数据不一致的状态（Inconsistent）
> - 若在写入数据的时候发生断电，最后一步的同步中间数据的步骤没有完成，就会出现数据不一致的情况，早些时候的系统在重新启动后都会通过superblock当中记录valid> - bit(是否有挂载)与文件系统state（clean与否）等状态来判断是否进行强制数据一致性检查。若需要检查时则以e2fack这支程序来进行，不过检查这的很费时间，后来就衍生了日志文件系统；
#### 5) 日志文件系统
> - 为了克服上面的困难，我们的前辈想出了一个好的办法，在文件系统中规划出一个块，专门用来记录写入和修订文件的一些操作步骤，依次简化一致性检查的步骤。
>> - 预备：当系统要写入一个文件的时候，先在日志记录中记录某个文件要写入的信息；
>> - 实际写入：检查用户的权限，检查inode bitmap和block bitmap，开始写入文件的权限和属性和数据，然后更新inode bitmap和block bitmap和superblock的内容。
>> - 结束：完成数据和meta data的更新，再在记录块中完成该文件的记录。

#### 6) Linux文件系统的操作
> - 异步处理asynchronous
> - 当一个文件被加载到内存后，如果他没有被改动过，他就被打上clean的标签，如果他被改动了，就会被打上dirty的标签。系统会不定时使用sync的命令。把dirty的文件数据写入硬盘，以保证内存和硬盘数据的一致性。若正常关机的时候，关机命令会主动调用sync来将内存的数据回写入磁盘内。
#### 7) 挂载点（mount point）的意义与其他文件系统
> - 每个block> - group都有自己的独立的inode，block和superblock，这个文件树要连接到目录树中才能被我们使用。将文件系统和目录树相结合的操作我们称为挂载。重点是，挂载点一定是目录，该目录为进入该文件的入口。由于每个inode只容纳一个文件，所以可以判断相同的inode号码的文件是同一个文件。
> - 命令：
        
                // 查看本linux系统支持的文件系统有哪些
                # ls -l /lib/modules/$(uname -r)/kernel/fs

                //查看加载到内存中的文件系统有哪些
                cat /proc/filesystems
#### 8) Linux VFS
> - VFS Virtual Filesystem Switch, 虚拟文件系统，他是linux> - kernel内核的一个部分，负责调用不同的模块去读写硬件中的文件系统

        
<h3 id='6.4'>6.4 文件系统的简单操作</h3> 
        
#### 1) 列出文件系统的整体磁盘使用量：df [-ahikHTm] [目录或者文件名]
> - \-a 显示所有
> - \-k 以KB为单位
> - \-m 以MB为单位
> - \-h 以KB，MB，GB等单位自行显示；
> - \-i 不用硬盘容量，而以inode的数量来显示；
        
                // 1K-blocks下面数字的单位是1KB；
                // Mounted on表示磁盘挂载的目录所在（挂载点）df读取的是superblock里面的信息，所以显示结果的速度非常快速。
                [root@localhost /]# df -a
                Filesystem              1K-blocks    Used Available Use% Mounted on
                rootfs                          -       -         -    - /
                sysfs                           0       0         0    - /sys
                proc                            0       0         0    - /proc
                devtmpfs                  1916980       0   1916980   0% /dev
                
#### 2) 评估文件系统的磁盘使用量：du [-ahskm] 文件或者目录名称
> - 会把目录里面所有的子目录和文件都列出来
#### 3) 连接文件ln
        
                Ln [-sf] 源文件 目标文件
> - 如果不加任何参数，那就是硬连接，如果加了-s那就是符号连接，而-f则是如果目标文件中已存在相同名字的文件，则会将之删除再重新建立
> - 硬连接hard link
>> - 通过文件系统的inode链接产生新的文件名，而不是产生新的文件，称为“硬连接”（hard> - link）。而硬连接则是在某个目录block下新建一条【文件名连接到某inode号码】的关联记录而已，既不会增加inode也不会耗用block的数量。后面不管你用哪个文件进行修改，最终都会写入相同的inode和block中。而且连接数会加1。但是他也是有限制的，如不能跨文件系统，也不能连接到目录（不能连接到目录的意思是一旦建立硬链接，目录底下的所有的文件都一次性建立了连接，如果后面你需要增加文件时，需要重新建立硬连接，所以不是那种单纯的仅仅是目录的连接）
> - 符号连接，也叫快捷方式symbolic link
>> - 其实就是新建一个文件，该文件可以让数据的读取指向他连接的那个文件的文件名，当原文件删除后，快捷方式就打不开了，使用ls> - -l命令的时候看到文件名后面带→的就表示是符号连接。但是连接数不会加1。
        
<h3 id='6.5'>6.5 磁盘的分区，格式化，检验和挂载</h3> 
        
#### 1) 新买的硬盘如何使用：
> - 建立分区
> - 格式化format，已建立系统可用的文件系统；
> - 对新建好的文件系统进行检验；
> - 在Linux系统中需要建立挂载点（也就是目录），并将它挂载起来；

#### 2) 磁盘分区
> - fdisk 磁盘分区操作
> - fdisk -l 查看系统所有磁盘信息
        
                [root@localhost Desktop]# fdisk -l

                Disk /dev/sda: 85.9 GB, 85899345920 bytes, 167772160 sectors
                Units = sectors of 1 * 512 = 512 bytes
                Sector size (logical/physical): 512 bytes / 512 bytes
                I/O size (minimum/optimal): 512 bytes / 512 bytes
                Disk label type: dos
                Disk identifier: 0x000cee2e

                   Device Boot      Start         End      Blocks   Id  System
                /dev/sda1   *        2048     2099199     1048576   83  Linux
                /dev/sda2         2099200   167772159    82836480   8e  Linux LVM

                Disk /dev/mapper/centos-root: 53.7 GB, 53687091200 bytes, 104857600 sectors
                Units = sectors of 1 * 512 = 512 bytes
                Sector size (logical/physical): 512 bytes / 512 bytes
                I/O size (minimum/optimal): 512 bytes / 512 bytes


                Disk /dev/mapper/centos-swap: 4160 MB, 4160749568 bytes, 8126464 sectors
                Units = sectors of 1 * 512 = 512 bytes
                Sector size (logical/physical): 512 bytes / 512 bytes
                I/O size (minimum/optimal): 512 bytes / 512 bytes


                Disk /dev/mapper/centos-home: 27.0 GB, 26969374720 bytes, 52674560 sectors
                Units = sectors of 1 * 512 = 512 bytes
                Sector size (logical/physical): 512 bytes / 512 bytes
                I/O size (minimum/optimal): 512 bytes / 512 bytes
#### 3) 磁盘格式化mkfs(make file system)
> - mkfs [-t 文件系统格式] 系统有支持才会生效
> - 文件系统参数有ext3, ext2, vfat等
> - 事实上，当我们去使用命令mkfs -t ext3时，调用的是mkfs.ext3的命令
> - mkfs[Tab] [Tab]可以查看mkfs支持的文件系统格式
        
                [root@localhost Desktop]# mkfs
                mkfs         mkfs.btrfs   mkfs.cramfs  mkfs.ext2    mkfs.ext3    mkfs.ext4    mkfs.fat     mkfs.minix   mkfs.msdos   mkfs.vfat    mkfs.xfs
#### 4) 磁盘检验：fsck(file system check)，badblocks（坏道检查）
> - fsck命令不要随便用，通常只有你身为root且你的文件系统有问题，而且已经卸载（不在挂载状态）的时候采用，因为该命令可能会对你的系统造成损伤
#### 5) 磁盘挂载与卸载
> - 挂载前需要注意：
> - 单一文件系统和单一挂载点（目录）应该是一一对应的关系；
> - 作为挂载点的目录理论上应该是空目录才对，否则，原来的文件会被暂时隐藏，当该文件系统被卸载时才会被显现出来；
> - mount和umount
#### 6) 内存交换空间swap的构建
> - 功能：应付物理内存不足的时候所造成的内存扩展记录
> - 由于swap是用硬盘来暂时放置内存信息的，所以用到swap的时候，主机硬盘的灯会响个不停；
> - 过程：
>> - 分区
>> - 格式化 mkswap [设备文件名]
>> - 使用 swapon [设备文件名]
>> - 查看 通过free命令查看内存的使用情况
> - Swap对于桌面计算机而言意义不太大，因为一般内存都超过512M，但是对于常年在线的服务器而言，还是有设置一下的必要。
        
------      
        
        
<h2 id='7'>七、 文件与文件系统的压缩与打包</h2>
<h3 id='7.1'>7.1 常见的压缩命令</h3>  
        
公共类是代码重用的一种形式，它将各个公用功能模块经常调用的方法提取到公用的Java类中，例如数据库的Dao类容纳了所有访问数据库的方法，并同时管理这数据库的连接和关闭，这样不但实现了代码的重用，还提高了程序的性能和代码的可读性。
> - \*.Z compress程序压缩的文件
> - \*.gz gzip程序压缩的文件
> - \*.bz2 bzip2程序压缩的文件
> - \*.tar tar程序打包的程序，并没有压缩过；
> - \*.tar.gz tar程序打包的数据，其中经过gzip的压缩
> - \*. tar.bz2 tar程序打包的数据，其中经过bzip2的压缩
#### 1) compress
> - 非常老旧的一款压缩程序，CentOS默认没有安装，需要安装ncompress软件
> - compress [-rcv] 文件或者目录
> - uncompress 文件.Z
#### 2) gzip
> - gzip [-cdtv\#] 文件名 压缩> - -\#是数字，-1最快，-9最慢，压缩比默认是-6最好，-v会显示详细属性
> - gzip -d 文件名 解压
> - zcat 文件名 查看压缩文件的数据
#### 3) bzip2
> - bzip2 [-cdkzv\#] 文件名 压缩> - -\#是数字，-1最快，-9最慢，压缩比默认是-6最好，-v会显示详细属性
> - bzip2 -d 文件名 解压
> - bzcat 文件名 查看压缩文件的数据
#### 4) tar
> - 压缩：tar -jcv -f filename.txt.tar.bz2 要被压缩的文件或者目录名称
> - 查询：tar -jtv -f filename.txt.tar.bz2
> - 解压缩：tar -jxv -f filename.txt.tar.bz2 -C 与解压的目录
> - \-j：表示利用bzip2程序的支持；
> - \-z：表示利用gzip程序的支持；
> - \-c：表示压缩；
> - \-t：表示查看；
> - \-x：表示解压缩；
        
<h3 id='7.2'>7.2 完整的备份工具dump和恢复工具restore</h3>  
        
> -能够备份实时的文件系统，设立9等级，0等级表示完整的实时备份，level
1表示实时文件系统与level 0 比较后差异部分的备份，level 2\~9以此类推。
如果找不到dump命令，需要安装，命令为
        
                yum -y install dump
                Dump [-Suvj] [-level] [-f 备份文件] 待备份数据
>> - \-S：仅列出后面带备份数据需要多少磁盘空间才能够备份文件
>> - \-u；将此次dump的时间记录到/etc/dumpdates文件中
>> - \-v：将备份的过程显示出来
>> - \-j：加入bzip2的压缩程序支持
#### 1) 当备份的是单一文件系统时；
> - 可以使用完整的dump功能，包括利用0-9的数个level来备份
#### 2) 当备份的只是目录，而非单一文件系统时；
> - 所有的备份必须放在该目录下，而且只能使用level0，仅支持完整备份，不支持-u参数（无法创建/etc/dumpdates这个level备份的时间记录文件）
> - 注意，在备份之前先用df -h的命令看看那个属于文件系统 
                                  
------      
        
        
<h2 id='8'>八、 vim程序编辑工具</h2>
<h3 id='8.1'>8.1 vi与vim</h3> 
        
> - 每一个linux
distribution都会有一套文本编辑器vi，vim是vi的高级版，vim有程序编辑的功能，可以主动以字体颜色辨别语法的正确性
#### 1) vi的使用
> - 一般模式
>> - “vi> - 文件名”，在此模式下，你可以左右移动光标，也可以删除字符或者删除正行，也可以复制粘贴文字数据。
> - 编辑模式
>> - 除了拥有一般模式的功能，还可以进行编辑，不过你要先按下“i,l,o,O,a,A,r,R”等其中任意一个字符。
> - 命令行模式
>> - 在一般模式当中，输入“：”或者“？”或者“/”三个字符的其中一个的时候，便可进入该模式，可以进行数据的查找，读取，保存，离开vi，保存，大量替换字符等操作。
#### 2) 注意
> - 一般模式和编辑模式和命令行模式可以相互切换，按一下Esc便可还原为一般模式，但是编辑模式和命令行模式不可相互切换；一般模式下输入“：wq”便可保存离开。
> - 当我们在编辑的时候，vim会在被编辑文件的目录下再建一个.filename.swp的暂存文件，你做的所有操作都会被保存在改文件中。
> - Alias命令：可以发现alias vi='vim'，说明我们使用的vi命令，其实指的就是vim，
        
                [lvhongbin@MiWiFi-R3G-srv test]$ alias
                alias egrep='egrep --color=auto'
                alias fgrep='fgrep --color=auto'
                alias grep='grep --color=auto'
                alias l.='ls -d .* --color=auto'
                alias ll='ls -l --color=auto'
                alias ls='ls --color=auto'
                alias perlll='eval `perl -Mlocal::lib`'
                alias vi='vim'
                alias which='alias | /usr/bin/which --tty-only --read-alias --show-dot --show-tilde'

        
<h3 id='8.2'>8.2 一些常用的命令</h3> 
        
> - [Ctrl]+f：向下移动一页；
> - [Ctrl]+b：向上移动一页；
> - [Ctrl]+d：向下移动半页；
> - [Ctrl]+u：向上移动半页；
> - n+\<space\>：在同一行中向右移动20个字符距离；
> - 0或功能键[Home]：光标移动到行首；
> - $或功能键[End]：光标移动到行末；
> - G：移动到文件的最后一行；
> - nG：n是数字，表示光标移动到文件的第n行；
> - gg：表示光标移动到文件的第1行；
> - N+[Enter]：n是数字，光标向下移动N行；
> - /字符串：向下寻找字符串；
> - ？字符串：向上寻找字符串；
> - n：重复上一次寻找，方向向下；
> - N：重复上一次寻找，方向向上；
> - :n1,n2s/string1/string2/g：从第n1行到第n2行寻找string1，并将其替换成string2；
> - :1,$s/string1/string2/g：从第1行到最后1行寻找string1，并将其替换成string2；
> - :1,$s/string1/string2/gc：从第n1行到第n2行寻找string1，并在将其替换成string2时向用户确认；
> - x：相当于向后删除一个字符；
> -  X：相当于向前删除一个字符；
> - Nx：相当于向后删除N行；
> -  dd：删除整行；
> - Ndd：向下删除N行；
> - d1G：删除光标所在到第1行的数据；
> - dG：删除光标所在到最后1行的数据；
> - d0：删除同一行中光标所在到第一个字符的数据；
> - d$：删除同一行中光标所在到最后一个字符的数据；
> - Nyy：向下复制N行；
> - y1G：复制光标所在到第1行的数据；
> - yG：复制光标所在到最后1行的数据；
> - y0：复制同一行中光标所在到第一个字符的数据；
> - y$：复制同一行中光标所在到最后一个字符的数据；
> - p：向后粘贴；
> - P：向前粘贴；
> - u：撤销上一步操作；
> - [ctrl]+r：还原上一步操作；
> - :set nu：显示行号；
> - :set nonu：取消行号；
> - .：重复前一个操作；
> - w 文件名：另存为
> - ZZ：文件经过改动则保存离开，如果没有经过改动则不保存离开
> - r 文件名： 在正在读写的文件中读入另外一个文件，并把数据接在正在读的文件的后面
> - n1 n2 w 文件名：把n1-n2的内容保存成filename文件
> - 
        
<h3 id='8.3'>8.3 Vim的文件保存，恢复与打开时的警告信息</h3> 
        
> - [Ctrl]+z：将vim丢到后台，此时在同一目录下会产生一个同名+.swp的暂存文件；
> - Kill -9 %1：模拟断线停止vim的工作，算是不正常关掉vim吧；
> - 用vim再次打开之前的文件的时候，会出现提示：
        
                E325: ATTENTION
                Found a swap file by the name "../tem/.test1.txt.swp"
                          owned by: lvhongbin   dated: Wed Jan  3 13:45:40 2018
                         file name: ~lvhongbin/Desktop/tem/test1.txt
                          modified: YES
                         user name: lvhongbin   host name: MiWiFi-R3G-srv
                        process ID: 76718
                While opening file "../tem/test1.txt"
                             dated: Wed Jan  3 11:54:59 2018

                (1) Another program may be editing the same file.  If this is the case,
                    be careful not to end up with two different instances of the same
                    file when making changes.  Quit, or continue with caution.
                (2) An edit session for this file crashed.
                    If this is the case, use ":recover" or "vim -r ../tem/test1.txt"
                    to recover the changes (see ":help recovery").
                    If you did this already, delete the swap file "../tem/.test1.txt.swp"
                    to avoid this message.

                Swap file "../tem/.test1.txt.swp" already exists!
                [O]pen Read-Only, (E)dit anyway, (R)ecover, (D)elete it, (Q)uit, (A)bort:
> - 当你恢复后需要使用(D)elete
    it把同名+.swp暂存文件删掉，要不然每次打开都会有警告提示：

       
<h3 id='8.4'>8.4 其他操作与语系转换</h3> 
        
#### 1) 块选择（Visual Block）
> - 在一般模式下按下[Ctrl]+
v，然后移动光标，就可以进行矩形选择，然后按下y或者d可以进行复制或者删除。
>> - [Ctrl]+ v：块选择；
>> - V：行选择；
>> - v：字符选择
#### 2) 多文件操作
> - 用vi命令同时打开多个文件，文件与文件之间用空格打开即可，显示的时单窗口界面，打开的是第一个文件；
>> - :n ：选择下一个文件；
>> - :N ：选择上一个文件；
>> - :files ：列出所有文件
#### 3) 多窗口功能
> - 主要针对同一个文件或者已有文件跟空白文件之间的编辑
>> - :sp> - [filename]：若不加文件名，就是分割同一个文件，你对比同一个文件不同位置的文字内容；若加了名字，则是打开一个新文件
>> - : [Ctrl]+ w+↑：选择上一个窗口；
>> - : [Ctrl]+ w+↓：选择下一个窗口；
#### 4) 语系转换
> - iconv --list：列出所有的编码语法；
> - iconv -f 原本编码 -t 新编码 filename [-o newfile]：
> - \-o newfile：如果要保留原来的文件，可以使用新文件名另存为新的文件；
        
------      
        
        
<h2 id='9'>九、 bash</h2>
<h3 id='9.1'>9.1  硬件，内核，shell和bash的关系</h3> 
        
> - 管理整个计算机硬件的是操作系统的内核kernel，kernel需要被保护起来，用户只能通过shell与kernel进行通讯。只要能操作应用程序的接口都叫做shell，狭义的shell指的是命令行方面的软件，广义的shell包括图形界面的软件。其中bash就是shell中的一种。
#### 1) Shell的特点：
> - 几乎所有的distribution发行版的shell命令相同；
> - 命令行界面比较快；
> - Linux下默认的shell是bash（Bourne Again Shell, Bourne
    Shell的增强版本）基于GUN架构开发出来的。
#### 2) bash的特点：
> - 命令记忆功能，按住↑或者↓可以查询最近使用的命令；
> - 命令与文件补全功能，[Tab]键的好处；
> - 命令别名设置功能，如alias lm = ‘ls -al’
> - 作业控制，前台和后台控制（job control, foreground, background）
> - 程序脚本（shell script）
> - 通配符（Wildcard）
#### 3) Bash的内部命令：type
                
                // 查询命令是来自内部命令builtin还是alias抑或是外部命令file，类似于which的功能；
                Type [-tpa]> - name：
#### 4) 如果一行太长写不完，可以用\\[Enter]将[Enter]转义使之不具备执行命令的功能；
        
<h3 id='9.2'>9.2  shell的变量功能</h3> 
        
> - 为了区别自定义变量，环境变量通常以大写字母来表示；
#### 1) 变量的显示和设置：
> - echo $变量名：显示变量的内容；
> - 变量名=变量的内容：设置变量；
> - unset 变量名：取消变量的设置
#### 2) 设置规则：
> - 等号两边的变量名和变量的内容不允许出现空格；
> - 变量名必须时英文字母或者数字，且首位不能是数字；
> - 变量内容中用双引号包含特殊字符，该特殊字符可以保持他原来的特性，如“$name”中name变成变量，显示的是变量name的内容，或者双引号里面有空格也可以；
> - 单引号内的特殊字符则仅为一般字符（纯文本）；
> - 若该变量为了增加变量的内容，则可以使用“$变量名”累加内容；
> - export使变量成为环境变量；
#### 3) 返单引号（\`）的作用
> - 程序先执行单引号里面的内容，再把执行的结果返回给单引号外面的命令，其实这个功能可以使用> - 后执行的命令 $(先执行的命令)来替代。
#### 4) 环境变量的功能
> - 但你登陆Linux并取得哪一个bash后，这个bash其实就是一个单独进程，称为PID。接下来所有的命令都是由这个bash进程衍生出来的，被执行的命令称为子进程。比如在一个bash中执行另外一个bash，那么第二个bash就是子进程。
>>>>>> ![图9-1 bash进程](https://github.com/hblvsjtu/Linux_Study/blob/master/picture/%E5%9B%BE9-1%20bash%E8%BF%9B%E7%A8%8B.png?raw=true)
> - 子进程只会继承父进程的环境变量，而不会继承自定义变量
> - 环境变量=全局变量
> - 自定义变量=局部变量;
> - 那怎么吧自定义变量变成环境变量呢？那就需要export
> - env：environment查看环境变量；
> - export：功能跟env类似；
        
                // export
                [root@MiWiFi-R3-srv software]# export
                declare -x COLORTERM="truecolor"
                declare -x DBUS_SESSION_BUS_ADDRESS="unix:abstract=/tmp/dbus-RaRlOvxfBB,guid=e24a18f0dc1699856cb3e2f45b08dc56"
                declare -x DESKTOP_SESSION="gnome-classic"
                declare -x DISPLAY=":0"
                declare -x GDMSESSION="gnome-classic"
                declare -x GDM_LANG="en_US.UTF-8"
                declare -x GNOME_DESKTOP_SESSION_ID="this-is-deprecated"

                // env
                [root@MiWiFi-R3-srv software]# env | sort
                COLORTERM=truecolor
                DBUS_SESSION_BUS_ADDRESS=unix:abstract=/tmp/dbus-RaRlOvxfBB,guid=e24a18f0dc1699856cb3e2f45b08dc56
                DESKTOP_SESSION=gnome-classic
                DISPLAY=:0
                GDM_LANG=en_US.UTF-8
                GDMSESSION=gnome-classic
                GNOME_DESKTOP_SESSION_ID=this-is-deprecated
> - set：查看所有变量；
> - RANDOM：随机数环境变量，显示0\~32767的随机变量；
#### 5) $的功能
> - 表示这个Shell的线程代号，即所谓的PID，Process ID控制
        
                [lvhongbin@MiWiFi-R3G-srv tem]$ $$
                bash: 25672: command not found...擦头
> - 出现的数字就是线程号
#### 6) ？的功能
> - 上一个命令的回传码，一般来讲，如果上一条命令运行成功，则会回传0，否则回传一个非零的错误码；
                
                // 返回0表示没有错误，其他错误码的含义有不同的distribution版本决定
                [root@MiWiFi-R3-srv software]# ?
                bash: ?: command not found...
                [root@MiWiFi-R3-srv software]# $?
                bash: 127: command not found...

                [root@MiWiFi-R3-srv software]# echo ${name}
                lvhongbin
                [root@MiWiFi-R3-srv software]# $?
                bash: 0: command not found...
#### 7) OSTYPE，HOSTYPE，MACHTYPE
                
                [lvhongbin@MiWiFi-R3G-srv tem]$ echo $OSTYPE
                linux-gnu
                [lvhongbin@MiWiFi-R3G-srv tem]$ echo $HOSTTYPE
                x86_64
                [lvhongbin@MiWiFi-R3G-srv tem]$ echo $MACHTYPE
                x86_64-redhat-linux-gnu
#### 8) 变量键盘的读取，数组和声明
> - read [-pt] variable
> - -p：双引号里面添加提示的内容；
> - -t：后面接等待的秒数
        
                [root@MiWiFi-R3-srv software]# read -p "please input your name: " -t 30 name
                please input your name: lvhongbin
                [root@MiWiFi-R3-srv software]# echo ${name}
                lvhongbin
#### 9) declare/typeset
> - 用于声明变量的类型
> - -a：声明为数组类型array
> - -i：声明为integer，可惜并不支持浮点数
> - -x：声明为环境变量
> - -r：声明为readonly类型，相当于final的功能
> - 默认是字符串的类型
        
                [root@MiWiFi-R3-srv software]# sum=10+20+30
                [root@MiWiFi-R3-srv software]# echo ${sum}
                10+20+30
                [root@MiWiFi-R3-srv software]# declare -i sum=10+20+30
                [root@MiWiFi-R3-srv software]# echo ${sum}
                60

                [root@MiWiFi-R3-srv software]# export | grep sum
                declare -ix sum="60"
                
                // 数组
                [root@MiWiFi-R3-srv software]# value[0]="h"
                [root@MiWiFi-R3-srv software]# value[1]="i"
                [root@MiWiFi-R3-srv software]# echo ${value}
                h
                [root@MiWiFi-R3-srv software]# echo ${value[0]}
                h
                [root@MiWiFi-R3-srv software]# echo ${value[1]}
                i
#### 10) 与文件系统的及程序的限制关系：ulimit;
> - 包括限制用户的打开文件的数量，可以使用CPU的时间，可以使用的内存总量等
#### 11) 变量内容的删除
> - 必须从第一个字母开始或者从最后一个字母开始匹配，而且第一个字母或者最后一个字母不能使用通配符
> - ${变量名#要删除的内容}，可以使用通配符，
> - \#表示从最左边往右开始删除，删除最短的那个
> - \#\#表示从最左边往右开始删除，删除最长的那个；
        
                [root@MiWiFi-R3-srv software]# id=116020910160
                [root@MiWiFi-R3-srv software]# echo ${id#1*6}
                020910160
                [root@MiWiFi-R3-srv software]# echo ${id}
                116020910160
                [root@MiWiFi-R3-srv software]# echo ${id##1*6}
                0
                [root@MiWiFi-R3-srv software]# echo ${id}
                116020910160
                [root@MiWiFi-R3-srv software]# echo ${id$0*6}
                bash: ${id$0*6}: bad substitution
> - %表示从最右边往左开始删除，删除最短的那个，%%表示从最左边往右开始删除，删除最长的那个；
> - 如： 截取路径名中的文件名 ${path名字\#\#/\*/}
> - 截取路径名中的目录 ${path名字%/\*}
#### 12) 变量内容的替换
> - ${变量名/旧内容/新内容}，可以使用通配符，
> - 第一个/表示从最左边往右开始替换，只替换第一个，//表示从最左边往右开始替换，替换全部；
#### 13) 变量内容的存在性检测
> - newVar=${oldVar-content} 检测oldVar有值的话，让newVar等于$> - oldVar，若没有值则让newVar=content；
> - newVar=${oldVar+content}> - 检测oldVar有值的话，让newVar等于content，若没有值则让newVar=$ oldVar；
> - “”表示空字符串，有值；
#### 14) 命名别名和去除别名
> - alias和unalias
#### 15) 历史命令：history
        
        
<h3 id='9.3'>9.3  Bash shell的操作环境</h3> 
        
#### 1) 命令运行的顺序：
> - 以相对或绝对路径执行命令，如“/bin/ls”;
> - 由alias找到该命令；
> - 由bash内置的bulitin命令来执行；
> - 通过$PATH这个变量来执行；
#### 2) bash的登陆和欢迎信息
> - 切换终端机接口时的欢迎界面，修改/etc/issue文件；
> - 登陆时显示欢迎界面，修改/etc/motd文件
        
<h3 id='9.4'>9.4  Bash shell的环境配置文件（太复杂了，不看）</h3> 
        
#### 1)logic shell VS non-logic shell
> - logic shell，取得bash时需要完整的登陆流程，包括输入用户名和密码；
> - non-logic shell，不需要输入用户名和密码即可使用bash；
                
<h3 id='9.5'>9.5  数据的重定向</h3> 
        
#### 1) 输出>和>>
> - 我们在执行一个命令时，流程一般是先读取一个文件standard> - input，然后执行相应的操作，最后输出，那输出也分为标准输出standard> - output和标准错误输出standard error output
> - 数据的重定向是指利用符号“>”将本应显示在命令行窗口的信息输出到文件中，文件中已有数据则会覆写里面的数据；若使用“>>”则不会覆写，而是加在文末。
> - 当输出符号前面有1时则将正确的数据输出，2则将错误的数据输出。
> - 同时将正确和错误的信息输出，有两种方法：
>> - 文件名 2>&1
>> - &> 文件名
#### 2) 输入<和<<
> - 一般用在cat之上的文件创建和文字的输入
> - cat > 文件名 表示创建一个新的文件和使用键盘输入
                
                [lvhongbin@MiWiFi-R3G-srv Desktop]$ cat > test2.txt
                Hello   
                I'm writing!
                [Ctrl]+d 表示结束输入
> - cat > 新的文件 < 源文件 从源文件中把文字流传入新的文件
> - cat > 文件名 << “结束字符串”
        
                [lvhongbin@MiWiFi-R3G-srv Desktop]$ cat > test2.txt << "eof"
                > Input
                > success!
                > eof
#### 3) 什么场合会用到数据的重定向
> - 屏幕的输出很重要；
> - 后台执行的程序，不希望干扰到屏幕正常的输出信息的时候；
> - 想丢掉一些不想看到的信息；
> - 将正确和错误的信息分别输出；
> - command > file 2>file  与command > file 2>&1 有什么不同的地方?
>> - 
#### 4) >/dev/null 2>&1 详解[一串脚印的博客](https://blog.csdn.net/long2746004900/article/details/53367353)
> - 分解这个组合：“>/dev/null 2>&1” 为五部分。 
>> - 1：> 代表重定向到哪里，例如：echo "123" > /home/123.txt
>> - 2：/dev/null 代表空设备文件
>> - 3：2> 表示stderr标准错误
>> - 4：& 表示等同于的意思，2>&1，表示2的输出重定向等同于1
>> - 5：1 表示stdout标准输出，系统默认值是1，所以">/dev/null"等同于 "1>/dev/null"
> - 因此，>/dev/null 2>&1也可以写成“1> /dev/null 2> &1”
> - 那么本文标题的语句执行过程为：
> - 1>/dev/null ：首先表示标准输出重定向到空设备文件，也就是不输出任何信息到终端，说白了就是不显示任何信息。
> - 2>&1 ：接着，标准错误输出重定向 到标准输出，因为之前标准输出已经重定向到了空设备文件，所以标准错误输出也重定向到空设备文件。 
#### 5)> /dev/null 详解 [一串脚印的博客](https://blog.csdn.net/long2746004900/article/details/53367353)
> - output 或者output 太多太大了，有可能把硬碟给挤爆了的时候，程序的设计就会考虑把 output 送到 /dev/null 了。
#### 6)>  command > file 2>file  与command > file 2>&1的区别 [一串脚印的博客](https://blog.csdn.net/long2746004900/article/details/53367353)
> - 首先 command > file 2>file 的意思是将命令所产生的标准输出信息,和错误的输出信息送到file中 command  > file 2>file 这样的写法,stdout和stderr都直接送到file中, file会被打开两次,这样stdout和stderr会互相覆盖,这样写相当使用了FD1和FD2两个同时去抢占file 的管道.
> - 而command >file 2>&1 这条命令就将stdout直接送向file, stderr 继承了FD1管道后,再被送往file,此时,file 只被打开了一次,也只使用了一个管道FD1,它包括了stdout和stderr的内容.
> - 从IO效率上,前一条命令的效率要比后面一条的命令效率要低,所以在编写shell脚本的时候,较多的时候我们会用command > file 2>&1 这样的写法.
    

<h3 id='9.6'>9.6  命令与管道命令</h3> 
        
#### 1) 命令的合并
> - cmd1 ; cmd2
>> - 不考虑命令的相关性，从左到右按顺序执行；
> - cmd1 && cmd2
>> - 考虑命令的正确性，若cmd1错误，则cmd2不执行；
>> - &&命令会传递前一个命令的$?值，如果$?==0，则执行第二个命令，若$?\<\>0则跳过第二命令，并把$?\<\>0传递到第三个命令；
> - cmd1 \|\| cmd2
>> - 考虑命令的正确性，若cmd1正确，则cmd2不执行；
>> - 如创建文件目录，如果不存在则创建，如果存在就不创建
        
                ls -l 文件名 || touch 文件名
>> - &&命令会传递前一个命令的$?值，如果$?\<\>0，则执行第二个命令，若$?==0则跳过第二命令，并把$?==0传递到第三个命令
> - 管道命令pipe cmd1 | cmd2
>> - 管道命令仅会处理standard output，对于standard error output会予以忽略；
>> - 管道命令必须能接收第一个命令的数据成为standard input继续处理才行；
>> - 常用的管道命令如less(将大量的输出做成可翻页的形式)，more，head，tail
#### 2) 选取命令：cut, grep
> - cut [-dfc] 截取信息
> - \-d：后面接分割字符，与-f一起使用，如-d ‘:’ -f 5,> - 表示以冒号为分割，取第5段；
> - \-c n-：取每行从第n个起后面的字符，包括第n个的字符；
> - \-c -n：取每行从第n个起前面的字符，包括第n个的字符；
        
                [lvhongbin@MiWiFi-R3G-srv Desktop]$ ls -al .. | cut -c 16- | cut -c -9 
> - grep 选取我们需要的信息所在的那一行
> - grep [-acinv] [--color=auto] ‘查找字符串’ filename
        
                [lvhongbin@MiWiFi-R3G-srv Desktop]$ ls -al .. | cut -c 16- | cut -c -9 |grep --color=auto "lvhongbin"

                统计当前目录下文件的个数（不包括目录）
                $ ls -l | grep "^-" | wc -l
                1
                统计当前目录下文件的个数（包括子目录）
                $ ls -lR| grep "^-" | wc -l
                1
                查看某目录下文件夹(目录)的个数（包括子目录）
                $ ls -lR | grep "^d" | wc -l
#### 3) 排序命令：sort，wc, uniq
> - sort [-fbMnrtuk] [file or stdin]
>> - \-f：忽略大小字母的差异；
>> - \-b：忽略最前面空格的影响；
>> - \-M：以月份的名字来排序；
>> - \-n：以纯数字进行排序；
>> - \-r：反向排序；
>> - \-u：uniq，相同的数据，仅出现一行；
>> - \-t：分隔符，默认是[Tab]键来分割；
>> - \-k：以分割的区间的第n个来排序
        
                -t和-k一般一起使用：
                [lvhongbin@MiWiFi-R3G-srv Desktop]$ ls -al .. | sort -t ' ' -k 2
> - uniq [-ic]
>> - \-i：忽略大小字母的差异；
>> - \-c：进行计数；
> - wc [-lwm]
>> - \-l：仅列出行数；
>> - \-w：仅列出字数（英文单字）；
>> - \-m：多少字符；
> - last 列出多少的登陆的情况
        
                [lvhongbin@MiWiFi-R3G-srv Desktop]$ last  
                lvhongbi pts/0        :0               Wed Jan  3 03:01 - 03:02  (00:00)    
                lvhongbi :0           :0               Wed Jan  3 03:00 - 03:11  (00:10)    
                reboot   system boot  3.10.0-693.el7.x Wed Jan  3 02:58 - 20:01  (-6:-56)   

                wtmp begins Wed Jan  3 02:58:11 2018

> - 但是由于最后两行分别时空白行和含有“wtmp”字符串，所以如果需要计数到底有多少次登陆的话，需要去掉最后两行，然后在进行计数。所以可以使用命令：
        
                last \| grep [a-zA-Z] \| grep -r “wtmp” \| wc -l
#### 4) 双向重定向：tee
> - tee [-a] file
> - \-a表示累加到文件中，tee将输出流保存一份到文件中，同时输出屏幕
#### 5) 字符转换命令：tr，col，join，paste，expand
> - tr -d 要删除的字符串 ‘旧字符串’ ‘新字符串’
        
                如tr ‘[a-z]’ ‘[A-z]’
> - 可以利用tr命令将断行符号\^M去除，\^M可以用‘\\r’替代出现在tr中被删除；
> - col：[tab]换成空格
> - join：将两个文件的同一行的相同部分只显示一次，然后两行合并，每一行都做这样的操作；
> - paste：直接把两个文件的同一行放在一起，然后中间用[tab]键隔开；
> - expand：[tab]换成任意固定个数的空格；
#### 6) 切割命令：split
> - 文件太大用于分割成任意大小的子文件
        
                [lvhongbin@MiWiFi-R3G-srv Desktop]$ split -b 1k 要分割的文件 前导文件名
> - 最后文件名将按照前导文件名aa，前导文件名ab，前导文件名ac等命名；
#### 7) 关于减号：-
> - 将前一个命令的stdout作为后一个命令的stdin
        
                tar -cvf - /home \| tar -xvf –              
------      
        
        
<h2 id='10'>十、 正则表达式</h2>
<h3 id='10.1'>10.1 基础正则表达式</h3> 
        
> - 正则表达式依照严谨度的不同又分为基础正则表达式和拓展正则表达式
> - 语系正则表达式的影响；
>> - 比如LANG=C时：01234…ABC…Zabc…z；
>> - 比如LANG=zh_CN时：01234…AaBbCc…Zz；
#### 1) Grep的高级用法
        
                Grep [-A] [-B]
> - \-A后面可加数字N，为after的意思，除了搜索的行被显示外，其前面N行也会被显示；
> - \-B后面可加数字N，为after的意思，除了搜索的行被显示外，其后面N行也会被显示；
> - 行尾用$表示；
#### 2) 基础正则表达式字符，用在‘’内部
> - \^word：待查的字符串word在行首；
> - word$：待查的字符串word在行尾；
> - .：代表一定有一个任意字符
> - \*：重复零个到无穷多个的前一字符；
> - \\{n,m\\}：连续n到m个前一个字符；
> - [list]：从字符集中选取；
> - [\^list]：从字符集中反选；
        
<h3 id='10.2'>10.2 拓展正则表达式字符</h3> 
         
#### 1) 拓展正则表达式字符，用在‘’内部
> - \| ：或；
> - \+ ：重复一个至多个前一个字符；
> - ？：0个或者1个前一个字符；
> - （）：作为一个字符串组
> - （）+：重复多个组
            
<h3 id='10.3'>10.3 sed工具</h3> 
          
                sed [-nefr] ‘动作’
> - [动作] = n1, n2, function
> - Function可选：
>> - a（新增）
>> - c（替换）
>> - d（删除）
>> - i（插入）
>> - p（打印）
> - ‘2，5d’ 删除第二行到第五行
> - ‘2a thefirstline\ thesecondline’ 不同的行用“\\”隔开 
> - ‘2,5c thenewline’ 替换2\~5行中间的行、
            
<h3 id='10.4'>10.4 格式化打印：printf</h3> 
        

        
                ‘打印格式’ 实际内容
> - 特殊样式：
>> - \\f ：清除屏幕；
>> - \\n ：输出新的一行；
>> - \\r ：亦即[Enter]按键；
>> - \\t ：水平[Tab]按键；
>> - \\v ：垂直[Tab]按键；
>> - \\a ：警告声音输出；
>> - \\b ：退格键；
> - 在C语言中，%ns：那个n是数字，s代表string，即多少个字符；
> - %ni：那个n是数字，i代表integer，即多少个整数数字；
> - %N.nf：那个n和N是数字，N代表包括小数点在内的所有位数之和，n表示小数点后有多少位数；
                
                printf  '%15s\t %5.2f\t %5.2f\t %5.2f\t %5.2f\t \n' $(cat text1.txt)
                      lvhongbin  123.00  44.10   22.00    2.00   
                     lvhongchao   3.40    2.33   31.11    3.20  

            
<h3 id='10.5'>10.5 awk：好用的数据处理工具</h3> 
        
#### 1) 介绍
> - 相比于sed处理一整行的数据，awk倾向于将一行分成好几个“字段”进行处理；
> - 变量：
>> - NF每一行（$0）拥有的字段总数
>> - NR目前awk所处理的是“第几行”的数据
>> - FS 目前的分隔符，默认是空格键
>> - $1，$2等变量名称，表示每一行的每个字段，字段与字段之间通常用空格隔开，$0表示一整行数据的意思；
#### 2) 整个awk的处理流程：
> - 读入第一行，并将第一行的数据填入$0，$1，$2等变量中；
> - 依据条件类型的限制，判断是否需要执行后面的动作；
> - 做完所有的条件类型和动作；
> - 若有后续“行”的数据，则重复以上操作；
        
                文件stdin | awk ‘条件{printf “正则表达式”, $1, $2,```$n, “自己的内容”}’
                cat text1.txt | awk 'NR<3{printf "%10s %5.2f  %5.2f  %5.2f  %5.2f %10s %10s\n",$1, $2, $3, $4, $5, " total:" NF, " line:" NR}'

            
<h3 id='10.6'>10.6 文件比较工具</h3> 
        
> - Diff：比较两个文件的不同，通过比较行的差异，然后输出所有的差异；
> - Cmp：比较两个文件的不同，通过比较每个字符的差异，然后输出第一个的差异；
        
------      
        
        
<h2 id='11'>十一、 Shell Script</h2>
<h3 id='11.1'>11.1 基础知识</h3> 
        
#### 1) 简单的shell script练习
> - 输出自己的全名
> - 在shell script的父进程无法得到子进程的变量
> - 可以使用sh运行或者使用路径运行
            
            // sh01.sh
            #！/bin/bash
            # Program:
            #   User input his/her first name and last name. Then print the full name
            # History:
            # 2018-05-27 Lvhongbin      First Relsase
            
            read -p "Plasea input you first name: " firstName
            read -p "Plasea input you last  name: " lastName

            # echo -e 意思是允许后面的内容进行反斜杠转义
            echo -e "\nYour full name is: ${firstName} ${lastName}"

            // 运行结果：直接运行
            [root@MiWiFi-R3-srv Desktop]# chmod 4777 sh01.sh
            // 此处必须要./
            [root@MiWiFi-R3-srv Desktop]# ./sh01.sh
            Plasea input you first name: lv
            Plasea input you last  name: hongbin

            Your full name is: lv hongbin 
            //在shell script的父进程无法得到子进程的变量
            [lvhongbin@MiWiFi-R3-srv Desktop]$ echo ${firstName}
            //在shell script的父进程无法得到子进程的变量
            [lvhongbin@MiWiFi-R3-srv Desktop]$ echo ${lastName}

            // 运行结果：使用sh命令
            [lvhongbin@MiWiFi-R3-srv Desktop]$ sh sh01.sh
            Plasea input you first name: lv
            Plasea input you last  name: hongbin

            Your full name is: lv hongbin
            //在shell script的父进程无法得到子进程的变量
            [lvhongbin@MiWiFi-R3-srv Desktop]$ echo ${firstName}
            //在shell script的父进程无法得到子进程的变量
            [lvhongbin@MiWiFi-R3-srv Desktop]$ echo ${lastName}
#### 2) 执行方式的区别
> - 使用source运行脚本
> - 相当于在父进程中直接运行命令，此时所有的变量都会保存下来
        
            [lvhongbin@MiWiFi-R3-srv Desktop]$ source sh01.sh
            Plasea input you first name: lv       
            Plasea input you last  name: hongbin

            Your full name is: lv hongbin
            [lvhongbin@MiWiFi-R3-srv Desktop]$ echo ${firstName}
            lv
            [lvhongbin@MiWiFi-R3-srv Desktop]$ echo ${lastName}
            hongbin
#### 3) 善用判别式
> - 判断文件是否存在
>> - -e filename 如果 filename存在，则为真 
>> - -d filename 如果 filename为目录，则为真 
>> - -f filename 如果 filename为常规文件，则为真 
>> - -L filename 如果 filename为符号链接，则为真 
>> - -r filename 如果 filename可读，则为真 
>> - -w filename 如果 filename可写，则为真 
>> - -x filename 如果 filename可执行，则为真 
>> - -s filename 如果文件长度不为0，则为真 
>> - -h filename 如果文件是软链接，则为真
        
            [lvhongbin@MiWiFi-R3-srv Desktop]$ test -e sh01.sh && echo "exist" || echo "not exist"
            exist
            
            # 如果没有文件夹，则创建
            if [ ! -d $result_name ];then
                  mkdir -p $result_name
            fi

> - 判断表达式 -eq -ne -gt -lt -ge -le
            
            [lvhongbin@MiWiFi-R3-srv Desktop]$ test 1 -ge 2 && echo "1>=2" || echo "1<2"
            1<2
> - 文件权限 -r可读 -w可写 -x可执行 -u可具有“SUID” -g可具有“SGID” -s非空白文件 
            
            [lvhongbin@MiWiFi-R3-srv Desktop]$ test -r sh01.sh && echo "readable" || echo "unreadable"
            readable
> - 文件之间的比较 -nt比新 -ot比旧 -ef是否为同一个文件，可以判断是否是硬链接，主要判断是否指向同一个inode
> - 中括号判断式
>> - 中间每一个组件前后都需要有空格，否则会报错
>> - 中括号里面的参数 -o表示||的意思 -a表示&& -z表示null
>> - 变量的引用应使用双引号括起来 "$变量"
>> - 常量的引用使用双引号或者单引号，这里推荐用单引号，可以辨别变量还是常量
>> - 其实就是相当于if...else...
            
            [lvhongbin@MiWiFi-R3-srv Desktop]$ [ ${lastName} == "hongbin" ] && echo "equal" || echo "unequal"
            equal
            [lvhongbin@MiWiFi-R3-srv Desktop]$ [ ${lastName} == "lv" ] && echo "equal" || echo "unequal"
            unequal

            // sh02.sh
            #！/bin/bash
            # Program:
            #   This proggress shows the user's choise
            # History:
            # 2018-05-27 Lvhongbin      First Relsase

            read -p "Please choose your choise (Y/N): " yn
            [ ${yn} == "Y" -o  ${yn} == "y" ] && echo "OK, continue" && exit 0
            [ ${yn} == "N" -o  ${yn} == "n" ] && echo "Oh, interrupt!" && exit 0
                echo "I don't know what your chiose is" && exit 0

            [lvhongbin@MiWiFi-R3-srv Desktop]$ sh sh02.sh
            Please choose your choise (Y/N): Y
            OK, continue
            [lvhongbin@MiWiFi-R3-srv Desktop]$ sh sh02.sh
            Please choose your choise (Y/N): n
            Oh, interrupt!
            [lvhongbin@MiWiFi-R3-srv Desktop]$ sh sh02.sh
            Please choose your choise (Y/N): q
            I don't know what your chiose is
            [lvhongbin@MiWiFi-R3-srv Desktop]$ 
#### 4) 默认变量
> - $数字 表示第几个参数，$0默认是文件名
> - $@ 表示所有参数，中间用空格连起来（不包括文件名）
> - $# 表示所有的参数（不包括文件名）
> - shift: 造成参数变量号码偏移 每偏移一次就拿掉前面多少个参数 
        
            # sh03.sh
            #！/bin/bash
            # Program:
            #   This proggress shows default parameters
            # History:
            # 2018-05-27 Lvhongbin      First Relsase

            echo "The script's name is ==> $0"
            echo "The argument[0] is ==> $1"
            echo "The argument[1] is ==> $2"
            # 这里需要用引号吧$@括起来，其实括不括起来都无所谓
            echo "The arguments is ==> '$@'"
            echo "The arguments.length is ==> '$#'"
            shift && echo -e "shift \n" 
            echo "The script's name is ==> $0"
            echo "The argument[0] is ==> $1"
            echo "The argument[1] is ==> $2"
            # 这里需要用引号吧$@括起来，其实括不括起来都无所谓
            echo "The arguments is ==> '$@'"
            echo "The arguments.length is ==> '$#'"
            shift 2 && echo -e "shift 2 \n"
            echo "The script's name is ==> $0"
            echo "The argument[0] is ==> $1"
            echo "The argument[1] is ==> $2"
            # 这里需要用引号吧$@括起来，其实括不括起来都无所谓
            echo "The arguments is ==> '$@'"
            echo "The arguments.length is ==> '$#'"

            //结果
            [lvhongbin@MiWiFi-R3-srv Desktop]$ sh sh03.sh one two three four five six
            The script's name is ==> sh03.sh
            The argument[0] is ==> one
            The argument[1] is ==> two
            The arguments is ==> 'one two three four five six'
            The arguments.length is ==> '6'
            shift 

            The script's name is ==> sh03.sh
            The argument[0] is ==> two
            The argument[1] is ==> three
            The arguments is ==> 'two three four five six'
            The arguments.length is ==> '5'
            shift 2 

            The script's name is ==> sh03.sh
            The argument[0] is ==> four
            The argument[1] is ==> five
            The arguments is ==> 'four five six'
            The arguments.length is ==> '3'
#### 5) 获取命令返回值
> - $(命令)
> - 所有的变量前面必须用$
        
            testing=$(netstat -tuln | grep ":80") #检测80端口，并赋给testing变量

            [lvhongbin@MiWiFi-R3-srv Desktop]$ testing=$(netstat -tuln | grep ":22")
            [lvhongbin@MiWiFi-R3-srv Desktop]$ echo ${testing}
            tcp 0 0 0.0.0.0:22 0.0.0.0:* LISTEN tcp6 0 0 :::22 :::* LISTEN

        
<h3 id='11.2'>11.2 条件判断式</h3> 
        
#### 1) if.. then..
> - 范式
            
            if [ condition ] ; then 
                # do something
            fi
> - 条件式可复合 
            
            [ condition1 ] || [ condition2 ]
            [ condition1 ] && [ condition2 ]
#### 2) 多重复杂判断式
> - 范式
            
            if [ condition ] ; then 
                # do something
            elif [ condition ] ; then
                # do something
            else
                # do something
            fi
#### 3) 利用case..esac
> - 范式
            
            case $1 in 
                "内容1")
                    # do something
                ;;
                "内容2")
                    # do something
                ;;
                *)
                    # do something
                ;;
            esac

        
<h3 id='11.3'>11.3 循环</h3> 
        
#### 1) while do done
> - 范式
            
            while [ condition ]
            do
                #something
            done
#### 2) until do done
> - 范式
            
            until [ condition ]
            do
                # do something
            done
#### 3) for do done
> - 范式
> - &> 等如 2>&1 , > 等如 1> ,那是缩写, 1 是 STDOUT, 2 是 STDERR, 2>&1 就是 STDOUT 和 STDERR
            
            for var in con1 con2 con3...
            do
                # do something
            done
        

            # pingip.sh
            #!/bin/bash
            # Program
            #       Use ping command to check the network's PC state.
            # History
            # 2015/07/17    VBird   first release
            PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
            export PATH
            network="192.168.1"              # 先定義一個網域的前面部分！
            for sitenu in $(seq 1 100)       # seq 為 sequence(連續) 的縮寫之意
            do
                # 底下的程式在取得 ping 的回傳值是正確的還是失敗的！然后把取得的信息扔在/dev/null中不显示在屏幕
                    ping -c 1 -w 1 ${network}.${sitenu} &> /dev/null && result=0 || result=1
                # 開始顯示結果是正確的啟動 (UP) 還是錯誤的沒有連通 (DOWN)
                    if [ "${result}" == 0 ]; then
                            echo "Server ${network}.${sitenu} is UP."
                    else
                            echo "Server ${network}.${sitenu} is DOWN."
                    fi
            done
> - 双括号((表达式1,表达式2…))  
>> - 在双括号结构中，所有表达式可以像c语言一样，如：a++,b--等
>> - 在双括号结构中，所有变量可以不加入：“$”符号前缀。
>> - 可以使用三目表达式 ？ ：
        
            for((i=0, i<10, i++)) 
            do
                s=$( ($s+$i) )
            done            
<h3 id='11.4'>11.4 函数function</h3> 
        
#### 1) 范式
> - for和圆括号之间不能有空格
        
            # batchChangeFileName.sh
            #!/bin/bash
            # Program
            #       Create a dir where store files and change files name with parallel batch.
            # History
            # 2018/05/27    Lvhongbin   first release

            read -p "Please input your dir: " dir
            read -p "Please input your file name: " file
            while [ "$dir" == "" ]
            do
                read -p "Please input your dir: " dir
            done

            function creatFiles() {
            if [ ! -d "$1" ] ; then
                mkdir $1
            fi

            if [ -z "$2" ] ; then
                fileName="fileName"
            else
                fileName=$2
            fi

            for((i=1;i<=10;i++))
            do
                test -e $1/$2${i} && echo "$2${i} has existed" || touch $1/$2${i}
            done
            }

            creatFiles ${dir} ${file}

            tar -c ${dir} -f ${dir}.tar

            function changeFileName() {

                # ls -l 不能省略成ll
                echo "The number of file is $(ls -l ${dir} | grep "^-" | wc -l)"
                for name in $(ls ${dir}) 
                do 
                    # 把在屏幕中显示的信息扔在/dev/null中不显示
                    echo ${name} | grep "${file}[0-9]$" &> /dev/null  && mv ${dir}/${name} ${dir}/${name/${file}/${file}0} 
                done
            }

            changeFileName

<h3 id='11.5'>11.5 调试</h3> 
        
#### 1) bash
> - 参数
>> - -n: 不执行script 仅查询语法问题
>> - -v: 在执行script之前先将script的内容输出到屏幕
>> - -x: 将使用到的script内容显示到屏幕上    
        
                bash -n batchChangeFileName.sh    


------      
        
        
<h2 id='12'>十二、 软件安装</h2>
<h3 id='12.1'>12.1 make和configure</h3> 
        
#### 1) make和configure的关系
> - make会在当前的目录下搜索Makefile文本文件
> - Makefile里面则记录了源码如何编译的详细信息
> - make会自动识别判别源码是否经过了变动而自动更新执行文件 
> - 但是在make在识别的过程中需要知道用户的操作环境
> - 那检测用户的操作环境的程序文件名叫做configure或者config
> - 至于为什么要检测用户的操作环境，这是因为不同的Linux的distribution版本内核不一样，系统调用也不一样
> - 检测的内容包括
>> - 是否有合适的编译程序可以编译本软件的程序代码
>> - 是否已经存在本软件所需要的函数库或者其他所需的相关软件
>> - 操作系统平台是否适合本软件，包括Linux的内核版本
>> - 内核的头定义文件(header include)是否存在 
> - 所以安装的顺序是先运行configure检测编译所需的函数库编译器以及其他资料，生成Makefile文件，然后再通过make编译
>>>>>> ![图12-1 make_configure.jpg](https://github.com/hblvsjtu/Linux_Study/blob/master/picture/%E5%9B%BE12-1%20make_configure.jpg?raw=true)
        
#### 2) Tarball
> - 源码经过压缩技术压缩后的压缩包
> - 常见的压缩方式是gzip
> - 因为利用了tar和gzip的功能，所以早期的文件拓展名是\*.tar.gz或者简写为\*tgz
> - 近来由于bzip2的压缩率比较好，所以Tarball渐渐以bzip2的压缩技术来取代gzip
> - 经过解压缩之后，一般会源代码文件，检测程序文件（configure或者config）和安装说明README或者INSTALL
#### 3) makefile
> - 格式
            
            目标(target): 目标文件1 目标文件2
            <tab>   gcc -o 新欲建的可执行文件 目标文件1 目标文件2
> - Makefile文件
            #* ***************************************************************

            # Filename: Makefile

            # Description: Makefile findGF.o fight.o

            # Version: 1.0

            # Created: 2018/05/28

            # Revision: none

            # Compiler: make

            # Author: Lv Hongbin

            # Company: Shanghai JiaoTong Univerity

            # **************************************************************/

            # 变量内容等号两边允许有空格
            OBJS=findGF.o fight.o

            # $@=main

            main: ${OBJS}
                gcc -o $@ ${OBJS}
            clean:
                rm -f main ${OBJS}
> - 结果 
            [lvhongbin@MiWiFi-R3-srv findGF]$ vim Makefile
            [lvhongbin@MiWiFi-R3-srv findGF]$ make clean 
            rm -f main findGF.o fight.o
            [lvhongbin@MiWiFi-R3-srv findGF]$ make main
            cc    -c -o findGF.o findGF.c
            cc    -c -o fight.o fight.c
            gcc -o main findGF.o fight.o
            [lvhongbin@MiWiFi-R3-srv findGF]$ ./main
            Let's look for a girl
            I'm learning C programming language! 
            I'm earning money! 
            I'm keeping fit! 
> - FindGF.c
            
            /* ***************************************************************
             *
             * * Filename: FindGF.c
             *
             * * Description:linking and compiling test
             *
             * * Version: 1.0
             *
             * * Created: 2018/05/28
             *
             * * Revision: none
             *
             * * Compiler: gcc
             *
             * * Author: Lv Hongbin
             *
             * * Company: Shanghai JiaoTong Univerity
             *
             * * **************************************************************/

            #include<stdio.h>
            int main(void) {
                printf("Let's look for a girl\n");
                fight();
            }
> - Fight.c 
            
            /* ***************************************************************
             *
             * * Filename: Fight.c
             *
             * * Description:linking and compiling test
             *
             * * Version: 1.0
             *
             * * Created: 2018/05/28
             *
             * * Revision: none
             *
             * * Compiler: gcc
             *
             * * Author: Lv Hongbin
             *
             * * Company: Shanghai JiaoTong Univerity
             *
             * * **************************************************************/

            #include<stdio.h>
            void fight(void) {
                printf("I'm learning C programming language! \n");
                printf("I'm earning money! \n");
                printf("I'm keeping fit! \n");
            }
> - 注释用\#
> - make clean 清除除.c文件以外的目标文件和可执行文件
> - make main 将.c文件编译链接成main文件，其中副产物是.o目标文件
> - 当然了可以连续操作： make clean main
#### 4) 执行步骤
> - ./configure --prefix=/usr/local/bin
> - make clean
> - make
> - make install 将编译好的数据安装到默认的目录中
        
<h3 id='12.2'>12.2 软件管理器RPM、RPMS和YUM</h3> 
        
#### 1) RPM
> - RetHat package Manager
> - 文件格式 xxx.rpm 
> - 可以直接安装
> - 已经编译
> - 不可修改参数
> - 软件的安装环境必须与打包的环境需求一致
> - 需要满足软件的依赖属性
> - -i: 安装
> - -v: 查看更详细的安装信息
> - -h: 以安装信息栏显示安装进度
> - --prefix 新路径：将软降安装到其他路径中
>>>> **默认安装路径** | **含义**
>>>> -|-
>>>> /usr/bin | 一些可执行文件
>>>> /usr/lib | 一些程序需要用到的动态函数库
>>>> /usr/share/doc | 帮助文档
>>>> /usr/share/man | 一些可执行文件
>>>> 
        
            rpm -ivh package_name
#### 2) RPMS
> - RPM的源代码版
> - 文件格式 xxx.src.rpm 
> - 不可以直接安装
> - 没有编译
> - 可修改参数
> - 软件的安装环境不必与打包的环境需求一致
> - 需要满足软件的依赖属性 
#### 3) YUM
> - 在线升级机制
> - 服务器中安装软件所需要的依赖列表
> - 自动检查系统中缺少的依赖进行自动安装
> - 方便快捷
           
------      
        
        
<h2 id='13'>十三、 进程与程序管理</h2>
<h3 id='13.1'>13.1 进程与程序</h3> 
        
#### 1) 定义
> - 程序program：通常为二进制程序防止在存储媒介中，以物理文件的形式存在
> - 进程process：程序出发后，执行者的权限与属性，程序的程序代码与所需数据等都会被夹在到内存中，操作系统并给与这个内存内的单元一个标识符PID，可以说，进程就是一个正在运行中的程序
#### 2) 父进程与子进程
> - 系统首先用fork复制一个跟父进程一模一样的进程，并暂存一个PPID的参数，然后这个冒牌父进程以exec的方式加载实际要执行的程序，并拥有自己的PID
>>>>> ![图13-1 父进程与子进程](https://github.com/hblvsjtu/Linux_Study/blob/master/picture/%E5%9B%BE13-1%20%E7%88%B6%E8%BF%9B%E7%A8%8B%E4%B8%8E%E5%AD%90%E8%BF%9B%E7%A8%8B.jpg?raw=true)
        
<h3 id='13.2'>13.2 工作管理</h3> 
        
#### 1) 定义
> - 前台：你可以控制和执行命令的环境
> - 后台：可以自由运行的环境，你无法使用\[ctrl\]+c进行干预
#### 2) job control管理
> -  直接把命令丢到后台执行的 & 返回PID 
        
                [lvhongbin@MiWiFi-R3-srv Desktop]$ touch log.txt
                [lvhongbin@MiWiFi-R3-srv Desktop]$ tar -jcv ./practise -f ./practise.tar.bz2 > log.txt 2>&1 &
                [1] 74069

                [lvhongbin@MiWiFi-R3-srv Desktop]$ cat log.txt
                ./practise/
                ./practise/batchChangeFileName.sh
                ./practise/hello/
                ./practise/hello/src/
                ./practise/hello/build/
                ./practise/hello/build/config.gypi
                ./practise/hello/build/Makefile
                ./practise/hello/build/hello.target.mk
                ./practise/hello/build/binding.Makefile
                ./practise/hello/build/Release/
                ./practise/hello/build/Release/obj.target/
                ./practise/hello/build/Release/obj.target/hello/
                ./practise/hello/build/Release/obj.target/hello/src/
                ./practise/hello/build/Release/.deps/
                ./practise/hello/build/Release/.deps/Release/
                ./practise/hello/build/Release/.deps/Release/obj.target/
                ./practise/hello/build/Release/.deps/Release/obj.target/hello/
                ./practise/hello/build/Release/.deps/Release/obj.target/hello/src/
                ./practise/hello_world/build/Release/.deps/Release/hello.node.d
                ./practise/hello_world/build/Release/hello.node
                ./practise/hello_world/hello.js
                ./practise/hello_world/hi.js
                ./practise/hello_world/test.js
                ./practise/pingip.sh
                ./practise/sh01.sh
                ./practise/sh02.sh
                ./practise/sh03.sh
                ./practise/text.txt
                ./practise/findGF/
                ./practise/findGF/fight.c
                ./practise/findGF/findGF.c
                ./practise/findGF/Makefile
                ./practise/findGF/findGF.o
                ./practise/findGF/fight.o
                ./practise/findGF/main
                ./practise/findGF.tar.bz2
                [1]+  Done                    tar -jcv ./practise -f ./practise.tar.bz2 > log.txt 2>&1
> - 将工作丢到后台中暂停：\[ctrl\]-z 返回job number
> - 查看目前后台的工作状态：jobs
>> - -l: 列出job number与命令串之外，同时累列出PID号码
>> - -r: 仅列出正在后台run的工作
>> - -s: 仅列出正在后台当中暂停的工作 
> - 将后台工作拿到前台来处理：fg
> - 将后台的下的状态变成运行中：bg
> - 管理后台当中的工作：kill -l -1 -2 -9 -15 %jobnumber
>> - -l 列出所有可执行的参数
>> - -1：重新读取一次配置文件reload
>> - -2：跟\[ctrl\]-c同样的作用
>> - -9：立即强制删除一个工作
>> - -15：以正常的程序终止一项工作
> - 管理后台当中的工作：kill -l -1 -2 -9 -15 PID
> - kill不能删除PID=1 PID=1是init初始进程，一旦把他删掉就会使得系统崩溃   
        
                [lvhongbin@MiWiFi-R3-srv Desktop]$ vim log.txt

                [1]+  Stopped                 vim log.txt
                [lvhongbin@MiWiFi-R3-srv Desktop]$ jobs -l
                [1]+ 74296 Stopped                 vim log.txt
                [lvhongbin@MiWiFi-R3-srv Desktop]$ vim ./practise/test.txt

                [2]+  Stopped                 vim ./practise/test.txt
                [lvhongbin@MiWiFi-R3-srv Desktop]$ fg %1
                vim log.txt

                [lvhongbin@MiWiFi-R3-srv Desktop]$ kill -l
                 1) SIGHUP   2) SIGINT   3) SIGQUIT  4) SIGILL   5) SIGTRAP
                 6) SIGABRT  7) SIGBUS   8) SIGFPE   9) SIGKILL 10) SIGUSR1
                11) SIGSEGV 12) SIGUSR2 13) SIGPIPE 14) SIGALRM 15) SIGTERM
                16) SIGSTKFLT   17) SIGCHLD 18) SIGCONT 19) SIGSTOP 20) SIGTSTP
                21) SIGTTIN 22) SIGTTOU 23) SIGURG  24) SIGXCPU 25) SIGXFSZ
                26) SIGVTALRM   27) SIGPROF 28) SIGWINCH    29) SIGIO   30) SIGPWR
                31) SIGSYS  34) SIGRTMIN    35) SIGRTMIN+1  36) SIGRTMIN+2  37) SIGRTMIN+3
                38) SIGRTMIN+4  39) SIGRTMIN+5  40) SIGRTMIN+6  41) SIGRTMIN+7  42) SIGRTMIN+8
                43) SIGRTMIN+9  44) SIGRTMIN+10 45) SIGRTMIN+11 46) SIGRTMIN+12 47) SIGRTMIN+13
                48) SIGRTMIN+14 49) SIGRTMIN+15 50) SIGRTMAX-14 51) SIGRTMAX-13 52) SIGRTMAX-12
                53) SIGRTMAX-11 54) SIGRTMAX-10 55) SIGRTMAX-9  56) SIGRTMAX-8  57) SIGRTMAX-7
                58) SIGRTMAX-6  59) SIGRTMAX-5  60) SIGRTMAX-4  61) SIGRTMAX-3  62) SIGRTMAX-2
                63) SIGRTMAX-1  64) SIGRTMAX    
#### 3) 进程的查看
> - ps: 将某个时间点的进程运行情况选取下来
>> - -A：列出所有进程
>> - -a: 不与terminal相关的所有进程
>> - -u: 有效用户相关的进程
>> - x: 通常跟a这个参数一起使用，可列出完整的信息，输出格式规划 
>> - l: 较长，将详细的将该PID的信息列出自己相关的bash进程  
        
                lvhongbin@MiWiFi-R3-srv Desktop]$ ps aux
                USER        PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
                root          1  0.0  0.1  46164  6520 ?        Ss   May26   1:07 /usr/lib/systemd/systemd --system --deserialize 15
                root          2  0.0  0.0      0     0 ?        S    May26   0:00 [kthreadd]
                root          3  0.0  0.0      0     0 ?        S    May26   0:02 [ksoftirqd/0]
                root          5  0.0  0.0      0     0 ?        S<   May26   0:00 [kworker/0:0H]
                root          7  0.0  0.0      0     0 ?        S    May26   0:01 [migration/0]
                root          8  0.0  0.0      0     0 ?        S    May26   0:00 [rcu_bh]

                [lvhongbin@MiWiFi-R3-srv Desktop]$ ps -l
                F S   UID    PID   PPID  C PRI  NI ADDR SZ WCHAN  TTY          TIME CMD
                0 S  1000  67929  67919  0  80   0 - 29152 do_wai pts/0    00:00:00 bash
                4 S  1000  73055  73054  0  80   0 - 29153 do_wai pts/0    00:00:00 bash
                0 R  1000  74688  73055  0  80   0 - 37245 -      pts/0    00:00:00 ps
> - top 动态查看进程的状态 -d 后接更新的秒数  
        
                [lvhongbin@MiWiFi-R3-srv Desktop]$ top -d 5

                top - 17:12:23 up 2 days,  5:11,  2 users,  load average: 0.15, 0.13, 0.10
                Tasks: 202 total,   3 running, 199 sleeping,   0 stopped,   0 zombie
                %Cpu(s):  8.9 us,  2.9 sy,  0.0 ni, 88.2 id,  0.0 wa,  0.0 hi,  0.0 si,  0.0 st
                KiB Mem :  3865308 total,   152436 free,  1484608 used,  2228264 buff/cache
                KiB Swap:  2097148 total,  2095156 free,     1992 used.  1895640 avail Mem 

                   PID USER      PR  NI    VIRT    RES    SHR S  %CPU %MEM     TIME+ COMMAND                                                                                                                                       
                 12792 lvhongb+  20   0 2414388 338476  50036 S  19.7  8.8  55:09.93 gnome-shell                                                                                                                                   
                  2776 root      20   0  400548 116436  32948 S   3.6  3.0  16:10.81 X                                                                                                                                             
                 14443 lvhongb+  20   0 2140496 378416 157404 S   1.4  9.8 329:12.89 Web Content                                                                                                                                   
                 67919 lvhongb+  20   0  729856  23584  14676 S   0.8  0.6   0:08.63 gnome-terminal-                                                                                                                               
                 13019 lvhongb+  20   0  386616  20492  15044 R   0.4  0.5   3:02.13 vmtoolsd                                                                                                                                      
                 14385 lvhongb+  20   0 2619264 305316 118500 S   0.4  7.9  66:06.39 firefox                                                                                                                                       
                     9 root      20   0       0      0      0 R   0.2  0.0   0:41.44 rcu_sched                                                                                                                                     
                   410 root      20   0       0      0      0 S   0.2  0.0   0:35.63 xfsaild/dm-0                                                                                                                                  
                 12819 lvhongb+  20   0  451664   6796   3284 S   0.2  0.2   0:56.11 ibus-daemon                                                                                                                                   
                 13005 lvhongb+  20   0  529540  15724  10304 S   0.2  0.4   0:00.49 abrt-applet                                                                                                                                   
                 74676 root      20   0       0      0      0 S   0.2  0.0   0:00.32 kworker/1:0                                                                                                                                   
                 74790 lvhongb+  20   0  157784   2368   1580 R   0.2  0.1   0:00.65 top 
> - pstree 进程的相关性  
                
                [lvhongbin@MiWiFi-R3-srv Desktop]$ pstree
                systemd─┬─ModemManager───2*[{ModemManager}]
                        ├─NetworkManager─┬─dhclient
                        │                └─2*[{NetworkManager}]
                        ├─VGAuthService
                        ├─2*[abrt-watch-log]
                        ├─abrtd
                        ├─accounts-daemon───2*[{accounts-daemon}]
                        ├─agetty
                        ├─alsactl
                        ├─at-spi-bus-laun─┬─dbus-daemon───{dbus-daemon}
                        │                 └─3*[{at-spi-bus-laun}]
                        ├─at-spi2-registr───2*[{at-spi2-registr}]
                        ├─atd
                        ├─auditd─┬─audispd─┬─sedispatch
                        │        │         └─{audispd}
                        │        └─{auditd}
                        ├─avahi-daemon───avahi-daemon
                        ├─bluetoothd
                        ├─chronyd
                        ├─colord───2*[{colord}]
                        ├─crond
                        ├─cupsd
                        ├─2*[dbus-daemon───{dbus-daemon}]
                        ├─dbus-launch
                        ├─dconf-service───2*[{dconf-service}]
                        ├─dnsmasq───dnsmasq
                        ├─evolution-addre─┬─evolution-addre───5*[{evolution-addre}]
                        │                 └─5*[{evolution-addre}]
                        ├─evolution-calen─┬─evolution-calen───7*[{evolution-calen}]
                        │                 ├─evolution-calen───5*[{evolution-calen}]
                        │                 └─5*[{evolution-calen}]
                        ├─evolution-sourc───4*[{evolution-sourc}]
                        ├─firefox─┬─Web Content───22*[{Web Content}]
                        │         └─45*[{firefox}]
                        ├─firewalld───{firewalld}
                        ├─gconfd-2
                        ├─gdm─┬─X───3*[{X}]
                        │     ├─gdm-session-wor─┬─gnome-session-b─┬─abrt-applet───2*[{abrt-applet}]
                        │     │                 │                 ├─gnome-settings-───4*[{gnome-settings-}]
                        │     │                 │                 ├─gnome-shell─┬─ibus-daemon─┬─ibus-dconf───3*[{ibus-dconf}]
                        │     │                 │                 │             │             ├─ibus-engine-lib───2*[{ibus-engine-lib}]
                        │     │                 │                 │             │             ├─ibus-engine-sim───2*[{ibus-engine-sim}]
                        │     │                 │                 │             │             └─2*[{ibus-daemon}]
                        │     │                 │                 │             └─10*[{gnome-shell}]
                        │     │                 │                 ├─gnome-software───3*[{gnome-software}]
                        │     │                 │                 ├─nautilus-deskto───3*[{nautilus-deskto}]
                        │     │                 │                 ├─seapplet
                        │     │                 │                 ├─ssh-agent
                        │     │                 │                 ├─tracker-extract───14*[{tracker-extract}]
                        │     │                 │                 ├─tracker-miner-a───3*[{tracker-miner-a}]
                        │     │                 │                 ├─tracker-miner-f───3*[{tracker-miner-f}]
                        │     │                 │                 ├─tracker-miner-u───3*[{tracker-miner-u}]
                        │     │                 │                 └─3*[{gnome-session-b}]
                        │     │                 └─2*[{gdm-session-wor}]
                        │     └─3*[{gdm}]
                        ├─glib-pacrunner───2*[{glib-pacrunner}]
                        ├─gnome-keyring-d───3*[{gnome-keyring-d}]
                        ├─gnome-shell-cal───6*[{gnome-shell-cal}]
                        ├─gnome-terminal-─┬─bash───su───bash───su───bash───pstree
                        │                 ├─gnome-pty-helpe
                        │                 └─3*[{gnome-terminal-}]
                        ├─goa-daemon───4*[{goa-daemon}]
                        ├─goa-identity-se───3*[{goa-identity-se}]
                        ├─gsd-printer───2*[{gsd-printer}]
                        ├─gssproxy───5*[{gssproxy}]
                        ├─gvfs-afc-volume───3*[{gvfs-afc-volume}]
                        ├─gvfs-goa-volume───2*[{gvfs-goa-volume}]
                        ├─gvfs-gphoto2-vo───2*[{gvfs-gphoto2-vo}]
                        ├─gvfs-mtp-volume───2*[{gvfs-mtp-volume}]
                        ├─gvfs-udisks2-vo───2*[{gvfs-udisks2-vo}]
                        ├─gvfsd───2*[{gvfsd}]
                        ├─gvfsd-dnssd───2*[{gvfsd-dnssd}]
                        ├─gvfsd-fuse───5*[{gvfsd-fuse}]
                        ├─gvfsd-metadata───2*[{gvfsd-metadata}]
                        ├─gvfsd-network───3*[{gvfsd-network}]
                        ├─gvfsd-recent───2*[{gvfsd-recent}]
                        ├─gvfsd-trash───2*[{gvfsd-trash}]
                        ├─ibus-daemon─┬─ibus-dconf───3*[{ibus-dconf}]
                        │             └─2*[{ibus-daemon}]
                        ├─2*[ibus-x11───2*[{ibus-x11}]]
                        ├─irqbalance
                        ├─ksmtuned───sleep
                        ├─libvirtd───15*[{libvirtd}]
                        ├─lsmd
                        ├─lvmetad
                        ├─master─┬─pickup
                        │        └─qmgr
                        ├─mission-control───3*[{mission-control}]
                        ├─nautilus───3*[{nautilus}]
                        ├─packagekitd───2*[{packagekitd}]
                        ├─polkitd───5*[{polkitd}]
                        ├─pulseaudio───2*[{pulseaudio}]
                        ├─rngd
                        ├─rsyslogd───2*[{rsyslogd}]
                        ├─rtkit-daemon───2*[{rtkit-daemon}]
                        ├─smartd
                        ├─sshd
                        ├─systemd-journal
                        ├─systemd-logind
                        ├─systemd-udevd
                        ├─tracker-store───7*[{tracker-store}]
                        ├─tuned───4*[{tuned}]
                        ├─udisksd───4*[{udisksd}]
                        ├─upowerd───2*[{upowerd}]
                        ├─vmtoolsd───{vmtoolsd}
                        ├─vmtoolsd
                        ├─wpa_supplicant
                        └─xdg-permission-───2*[{xdg-permission-}]
#### 4) 进程的优先级
> - PRI值越小代表优先级越高
> - 通过改变nice动态改变PRI，但是这种改动是有限的，最终的PRI值由系统决定
> - renice: 已存在进程的PRI调整 
        
                [lvhongbin@MiWiFi-R3-srv Desktop]$ ps -l
                F S   UID    PID   PPID  C PRI  NI ADDR SZ WCHAN  TTY          TIME CMD
                0 S  1000  67929  67919  0  80   0 - 29152 do_wai pts/0    00:00:00 bash
                4 S  1000  73055  73054  0  80   0 - 29153 do_wai pts/0    00:00:00 bash
                0 R  1000  75105  73055  0  80   0 - 37245 -      pts/0    00:00:00 ps
                [lvhongbin@MiWiFi-R3-srv Desktop]$ renice 10 67929
                67929 (process ID) old priority 0, new priority 10
                [lvhongbin@MiWiFi-R3-srv Desktop]$ ps -l
                F S   UID    PID   PPID  C PRI  NI ADDR SZ WCHAN  TTY          TIME CMD
                0 S  1000  67929  67919  0  90  10 - 29152 do_wai pts/0    00:00:00 bash
                4 S  1000  73055  73054  0  80   0 - 29153 do_wai pts/0    00:00:00 bash
                0 R  1000  75119  73055  0  80   0 - 37245 -      pts/0    00:00:00 ps
       
<h3 id='13.3'>13.3 系统资源的查看</h3> 
        
#### 1) 相关命令
> - free: 查看内存的使用情况 -b: 单位是byte -m: 单位是MB -g: 单位是GB
        
                [lvhongbin@MiWiFi-R3-srv Desktop]$ free
                              total        used        free      shared  buff/cache   available
                Mem:        3865308     1439404      192716      131888     2233188     1938440
                Swap:       2097148        1980     2095168
> - uname: 查看跟系统内核相关的信息 -a: 列出全部
        
                [lvhongbin@MiWiFi-R3-srv Desktop]$ uname
                Linux
                [lvhongbin@MiWiFi-R3-srv Desktop]$ uname -a
                Linux MiWiFi-R3-srv 3.10.0-693.el7.x86_64 #1 SMP Tue Aug 22 21:09:27 UTC 2017 x86_64 x86_64 x86_64 GNU/Linux
> - -netstat: 跟踪网络
           
------      
        
        
<h2 id='14'>十四、 进程与程序管理</h2>
<h3 id='14.1'>14.1 进程与程序</h3> 
        
#### 1) 定义
> - 