#!/bin/bash -x

WAGE_PER_HOUR_IS=20
FULL_DAY_HOUR_IS=1
PART_TIME_HOUR_IS=2
WORKING_DAY_PER_MONTH=20
TOTAL_WORKING_HRS=40

Emp_Hrs=0
Emp_Days=0

declare -A dailywages

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
function getEmployeeWage(){
           empHours=$1
           echo $(($empHours*$WAGE_PER_HOUR_IS))
}


while [ $Emp_Hrs -le $TOTAL_WORKING_HRS ] && [ $Emp_Days -le $TOTAL_WORKING_HRS ]
do
                ((Emp_Days++))
                emphours=$( GetWorkingHours $((RANDOM%3)) )
                Emp_Hrs=$(($Emp_Hrs+$emphours))
                dailywages["DAY"$Emp_Days]=$( getEmployeeWage $emphours )

done
                TotalSalary=$(( $WAGE_PER_HOUR_IS * $Emp_Hrs ))
                echo "Total salary is" : $TotalSalary
                echo "daily wages is": ${dailywages[@]}
                echo index ${!dailywages[@]}
                echo lenght ${#dailywages[@]}
                echo  dailywages["DAY"$Emp_Days]

