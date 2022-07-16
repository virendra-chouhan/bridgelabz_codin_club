#!/bin/bash -x

declare -A wage;

PRESENT=1;
PART_TIME=2;
WAGE_PER_HOUR=20;
MAX_WORKING_DAY=20
MAX_WORKING_HOUR=40;
PROBLEMATIC_SCENARIO=36;

function getWorkingHour() {
	case $1 in
		$PRESENT)
			empHr=8;
			;;

		$PART_TIME)
			empHr=4;
			;;
		*)
			empHr=0;
		;;
	esac;
	echo $empHr;
}

totalWage=0;
totalWorkingHour=0;

day=0;
while [[ $day -lt $MAX_WORKING_DAY && $totalWorkingHour -lt $MAX_WORKING_HOUR ]]
do
	#to avoid $((36+8)) totalWorkHour scenario
	if [ $totalWorkingHour -eq $PROBLEMATIC_SCENARIO ]
	then
		workingHour=$(getWorkingHour $PART_TIME);
	else
       # read Job_Type
		workingHour=$(getWorkingHour $PRESENT);	
	fi

	((totalWorkingHour+=$workingHour));
	dailyWage=$(($workingHour * $WAGE_PER_HOUR));
	totalWage=$(($totalWage + $dailyWage));

	#to store the daily wage in array
	wage[Day$day]=$dailyWage;
	((day++));
done

echo "Employee's monthly wage : $"$totalWage" USD (Total working Hour : "$totalWorkingHour" Hour)";

echo ${wage[@]};


echo '----------------for loop-------------------';
for ((i=0;i<${#wage[@]};i++))
do
	echo "Day$i : "${wage[Day$i]};
done