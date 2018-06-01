#！/bin/bash
# Program:
#   This proggress shows the user's choise
# History:
# 2018-05-27 Lvhongbin      First Relsase

read -p "Please choose your choise (Y/N): " yn
[ ${yn} == "Y" -o  ${yn} == "y" ] && echo "OK, continue" && exit 0
[ ${yn} == "N" -o  ${yn} == "n" ] && echo "Oh, interrupt!" && exit 0
echo "I don't know what your chiose is" && exit 0
       
               

