# # ###############################################################
#
# # Filename: recoverTheNet.sh
#
# # Description:recover the net when it is broken
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

# set the arguments
ipaddr=192.168.31.15
gateway=192.168.31.1
netmask=255.255.255.0
broadcast=192.168.122.255
IPADDR=IPADDR\=${ipaddr}
GATEWAY=GATEWAY\=${gateway}
NETMASK=NETMASK\=${netmask}
nameserver1=8.8.8.8
nameserver2=8.8.4.4

#modify the dns
resolve=/etc/resolv.conf
echo -e "# Generated by NetworkManager\nnameserver ${nameserver1}\nnameserve ${nameserver2}" > ${resolve}

# modify the network-scripts
dir=/etc/sysconfig/network-scripts
ifcfgens=$(ls ${dir} | grep "^ifcfg-ens[0-9]\+$")
alldir=${dir}/${ifcfgens}
ens=${ifcfgens#ifcfg-}
content1=$(cat ${alldir})
content2=$(echo ${content1%IPADDR*} ${IPADDR} ${GATEWAY} ${NETMASK} | sed 's/BOOTPROTO=[a-zA-Z0-9]\+/BOOTPROTO=static/g')
content3=$(echo ${content2} | sed 's/ONBOOT=[a-zA-Z0-9]\+/ONBOOT=yes/g')
echo ${content3} | tr "[:blank:]\+" "\n" > /etc/sysconfig/network-scripts/${ifcfgens}

# restart network
ifup ${ens} && chkconfig NetworkManager on && service network restart && ifconfig
