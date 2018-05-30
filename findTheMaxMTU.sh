# # ###############################################################
# # 
# # filename: findTheMaxMTU.sh
#
# # Description:Find the maximun MTU with dichotomy
#
# # Version: 1.0
#
# # Created: 2018/05/28
#
# # Revision: 1.0
#
# # Compiler: gcc
#
# # Author: Lv Hongbin
#
# # Company: Shanghai JiaoTong Univerity
#
# # ###############################################################

# define the arguments
declare -i minimum # lower bound
declare -i maximum # upper bound
declare -i medium 
declare -i delta # the difference between maximum and minimum
declare -i num # the number of iteration
declare -i criteria # convergence criteria

# initial the arguments
minimum=0
medium=0
num=0
criteria=10
read -p "Please input the upper bound number: "  maximum
read -p "Please input the convergence criteria: "  criteria
read -p "Please input the ip you want to check(default: www.baidu.com): " ip
if  [ ! -n "$ip" ] ;then
    echo "you have not input a ip,and use the default ip: www.baidu.com!"
    ip=www.baidu.com
fi
if  [ ! -n "${criteria}" ] ;then
    echo "you have not input a criteria,and use the default value: 10!"
    criteria=10
fi
delta=${maximum}-${minimum}
medium=(${maximum}+${minimum})/2
echo "delta=${delta}"

# start the iteraton
while  test ${delta} -ge ${criteria}
do
    num=$num+1
    echo -e "the iterator num=${num}\n---------------------------"
    if test  $(ping -c 3 -s ${medium} -M do ${ip} | grep "error" | wc -l) -ge 1 ;then
        maximum=${medium}
    else
        minimum=${medium}
    fi
    medium=(${maximum}+${minimum})/2
    echo "maximum=${maximum}"
    echo "minimum=${minimum}"
    delta=${medium}-${minimum}
    echo "delta=${delta}"
    echo -e "---------------------------\n\n"
done

# Output the result
echo "The iteration is convergent!"
echo "The the maximun MTU is ${maximum}"
