#!/bin/bash -x


echo "welcome to Employee Wage Computation"

attendance=$((RANDOM%2))

if [ $attendance -eq 1 ]
then 
     echo " employee is present "
else 
     echo " employee is absent "
fi
