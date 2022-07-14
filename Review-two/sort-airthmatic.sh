#!/bin/sh
read a b c 

compute=$((a+b*c))

compute2=$((a*b+c))

compute3=$((c+a/b))

compute4=$((a%b+c))

echo $compute

echo $compute2

echo $compute3

echo $compute4

declare -A airthmatic
airthmatic[compute]=$compute
airthmatic[compute2]=$compute2
airthmatic[compute3]=$compute3
airthmatic[compute4]=$compute4

echo "The Dictionary is" ${airthmatic[*]}
#creating array from dictionary
arr=($compute $compute2 $compute3 $compute4)

echo ${arr[*]}
#length of array
length=${#arr[*]}  
echo length

#descending order
for ((i = 0; i<$length; i++))
do
    
    for((j = 0; j<$length-i-1; j++))
    do
    
        if [ ${arr[j]} -le ${arr[$((j+1))]} ]
        then
            # swap
            temp=${arr[j]}
            arr[$j]=${arr[$((j+1))]}  
            arr[$((j+1))]=$temp
        fi
    done
done

echo "Array in descending order :"
echo ${arr[*]}
#ascending order
for ((i = 0; i<$length; i++))
do
    
    for((j = 0; j<$length-i-1; j++))
    do
    
        if [ ${arr[j]} -gt ${arr[$((j+1))]} ]
        then
            # swap
            temp=${arr[j]}
            arr[$j]=${arr[$((j+1))]}  
            arr[$((j+1))]=$temp
        fi
    done
done

echo "Array in ascending order :"
echo ${arr[*]}