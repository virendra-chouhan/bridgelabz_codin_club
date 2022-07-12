dice1=$((RANDOM%6))
dice2=$((RANDOM%6))
echo $dice1
echo $dice2
total=$(($dice1+$dice2))

echo "total of two dice number:" $total
