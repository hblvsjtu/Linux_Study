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
       
               

