#!/bin/bash -x

WAGE_PER_HOUR_IS=20
FULL_DAY_HOUR_IS=1
PART_TIME_HOUR_IS=2
WORKING_DAY_PER_MONTH=20
TOTAL_WORKING_HRS=40

Emp_Hrs=0
Emp_Days=0

function GetWorkingHours(){

         case $1 in
                  $FULL_DAY_HOUR_IS  )
                                empHrs=8
                                 ;;

                  $PART_TIME_HOUR_IS )
                                empHrs=4
                                 ;;

                  *  )
                                empHrs=0
                                 ;;

        esac
        echo $empHrs
}

while [ $Emp_Hrs -lt $TOTAL_WORKING_HRS ] && [ $Emp_Days -lt $TOTAL_WORKING_HRS ]
do
                ((Emp_Days++))
                emphours=$( GetWorkingHours $((RANDOM%3)) )
                echo $emphours
                Emp_Hrs=$(( $Emp_Hrs + $emphours ))
done
                TotalSalary=$(( $WAGE_PER_HOUR_IS * $emphours ))
                echo "Total Salary Is " : $TotalSalary
