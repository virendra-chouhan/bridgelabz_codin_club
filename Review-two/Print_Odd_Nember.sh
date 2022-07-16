#!/bin/bash --posix.
read -p "Enter Start Point" start_point
read -p "Enter Ending Point" end_point
while [ $start_point -le $end_point ]; do
printf "Odd Numbers:$start_point \n"
start_point=$(( start_point + 2 ))
done
printf "\n"








