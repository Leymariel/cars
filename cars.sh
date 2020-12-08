#!/bin/bash
#cars.sh
#Lawrence Leymarie

run=true

while [ "$run" = true ]
	do
	echo "type the number 1 to enter a new car"
	echo "type the number 2 to display the list of cars"
	echo "type the number 3 to quit and exit the program"
	read choice
	
	case $choice in
		1)
			echo "enter new car year"
			read year
			echo "enter the new car maker"
			read make
			echo "enter the new car model"
			read model
			new_car="$year:$make:$model"
			echo "$new_car" >> My_old_cars
			;;
		2)
			sort My_old_cars
			;;
		3)
			run=false
			echo "Goodbye"
			;;
	esac
done
					







