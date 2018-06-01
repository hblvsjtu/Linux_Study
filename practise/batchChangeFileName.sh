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
echo "The number of file is $(ls -l ${dir} | grep "^-" | wc -l)"
for name in $(ls ${dir}) 
do 
    echo ${name} | grep "${file}[0-9]$" &> /dev/null  && mv ${dir}/${name} ${dir}/${name/${file}/${file}0} 
done
}
changeFileName
               

