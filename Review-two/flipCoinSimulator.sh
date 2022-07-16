array=("head" "tail")
echo ${array[*]}

flip=${array[RANDOM%2]}
echo $flip

win="head"

read user1 user2

if [ "$user1" = "$flip" ] && [ "$win" = "$flip" ] 
then
    echo "user1 is won "

elif [ "$user1" = "$user2" ];
then 
    echo "Tie"
    
else
    echo "user2 is won"
fi

#$$ [ "$flip" != "$user2" ]