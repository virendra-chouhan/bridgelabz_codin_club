# Program for Factorial

Fact=1
read number
p=1
for ((i=1; $p<$number; i++))
do
    Fact=$(($Fact*$number))
    number=$(($number-1))
done

echo $Fact