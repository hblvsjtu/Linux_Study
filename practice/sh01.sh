#！/bin/bash
# Program:
#   User input his/her first name and last name. Then print the full name
# History:
# 2018-05-27 Lvhongbin      First Relsase

read -p "Plasea input you first name: " firstName
read -p "Plasea input you last  name: " lastName

# echo -e 意思是允许后面的内容进行反斜杠转义
echo -e "\nYour full name is: ${firstName} ${lastName}"
       
               

