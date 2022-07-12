sum=0
temp=1
while [ $temp -le 5 ] 
do
num=$((RANDOM%6))
sum=$(($sum+$num))
echo $sum
let temp++;
done
