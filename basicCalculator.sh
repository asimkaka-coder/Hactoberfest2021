#!/bin/sh
while :
do
	echo "<<<<<<<<<<<< BASIC CALCULATOR>>>>>>>>>>>>"
	echo "Commands Available"
	echo "Type ^C to exit"
	echo "Type 1 to add +"
	echo "Type 2 to subtract -"
	echo "Type 3 to multiply *"
	echo "Type 4 to divide /"
	read input_command
	echo "$input_command"
	echo "Enter First Number: "
	read first_num
	echo "Enter Second Number: "
	read second_num
	case $input_command in 
		1) calc=$(echo "$first_num + $second_num"|bc)
		   echo "Calculation Result: $calc"	
		 ;;
		2) calc=$(echo "$first_num - $second_num"|bc)
		   echo "Calculation Result: $calc"	
		 ;;
		3) calc=$(echo "$first_num * $second_num"|bc)
		   echo "Calculation Result: $calc"	
		 ;;
		4) calc=$(echo "scale=3; $first_num/$second_num"|bc)
		   echo "Calculation Result: $calc"	
		 ;;
		*) echo "FUCK!";;
	esac
done
