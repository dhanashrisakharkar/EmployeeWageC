#!/bin/bash -x


echo "welcome to Employee Wage Computation"

WAGE_PER_HOUR_IS=20
FULL_DAY_HOUR_IS=8
PART_TIME_HOUR_IS=4
WORKING_DAY_PER_MONTH=20
TOTAL_WORKING_HRS=40

Total_Salary=0
Emp_Hrs=0
Emp_Days=0

while [ $Emp_Hrs -lt $TOTAL_WORKING_HRS ] && [ $Emp_Days -lt $WORKING_DAY_PER_MONTH ]
do

attendance=$((RANDOM%3))

                            ((Emp_Days++))

case $attendance in
                  1  )

                     echo " employee is Present "
                     SALARY=$(($WAGE_PER_HOUR_IS*$FULL_DAY_HOUR_IS))
                     echo "Daily Employee Wage Is" : $SALARY
                     Hours=$(($FULL_DAY_HOUR_IS))
                     ;;

                  2  )  

                     echo " employee is present for half day "
                     SALARY=$(($WAGE_PER_HOUR_IS*$PART_TIME_HOUR_IS))
                     echo "Part Time Hour Is" : $PART_TIME_HOUR_IS
                     echo "Part Time Employee Wage Is" : $SALARY
                     Hours=$(($PART_TIME_HOUR_IS))
                     ;;

                 *  )

                    echo " employee is Absent "
                    SALARY=0
                    echo "Employee Wage Is" : $SALARY
                    ;;

esac
                   Emp_Hrs=$(($Emp_Hrs+$Hours))
                   echo " Employee Working Hours is " : $Emp_Hrs
done

                   if [ $SALARY -eq 320 ]
                   then

                      Total_Salary=$(($Total_Salary+$SALARY))
                      echo "Full Time Employee Total Salary Is" : $Total_Salary

                   else

                      Total_Salary=$(($Total_Salary+$SALARY))
                      echo "Part Time Employee Total Salary Is" : $Total_Salary

                   fi

