#!/bin/bash -x


echo "welcome to Employee Wage Computation"

WAGE_PER_HOUR_IS=20
FULL_DAY_HOUR_IS=8


attendance=$((RANDOM%2))

if [ $attendance -eq 1 ]
then 
     
     echo " employee is Present "
     SALARY=$(($WAGE_PER_HOUR_IS*$FULL_DAY_HOUR_IS))
    echo "Daily Employee Wage Is" : $SALARY

else 
     
     echo " employee is Absent "
     SALARY=0
     echo "Employee Wage Is" : $SALARY
fi
 
