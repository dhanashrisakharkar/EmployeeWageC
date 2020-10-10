#!/bin/bash -x


echo "welcome to Employee Wage Computation"

WAGE_PER_HOUR_IS=20
FULL_DAY_HOUR_IS=16
PART_TIME_HOUR_IS=8

attendance=$((RANDOM%3))

if [ $attendance -eq 1 ]
then 
     
     echo " employee is Present "
     SALARY=$(($WAGE_PER_HOUR_IS*$FULL_DAY_HOUR_IS))
     echo "Daily Employee Wage Is" : $SALARY

elif [ $attendance -eq 2 ]
then
     echo " employee is present for half day "
     SALARY=$(($WAGE_PER_HOUR_IS*$PART_TIME_HOUR_IS))
     echo "Part Time Hour Is" : $PART_TIME_HOUR_IS
     echo "Part Time Employee Wage Is" : $SALARY
     
else 
     
     echo " employee is Absent "
     SALARY=0
     echo "Employee Wage Is" : $SALARY
fi
 
