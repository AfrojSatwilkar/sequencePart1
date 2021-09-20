#!/bin/bash
feet_to_inch=1
feet_to_meter=2
inch_to_feet=3
meter_to_feet=4
echo "Enter 1 for feet to inch"
echo "Enter 2 for feet to meter"
echo "Enter 3 for inch to feet"
echo "Enter 4 for meter to feet"
read number
case $number in
        $feet_to_inch)
                read -p "Enter value in feet  :- " feet
                inch=$((12*$feet))
                echo $inch "inch"
                ;;
        $feet_to_meter)
                read -p "Enter value in feet :- " feet

                meter=`expr $feet | awk '{meter=$1*0.3048} {print meter}'`
                echo $meter "meter"

                ;;
        $inch_to_feet)
                read -p "Enter value in inch :- " inch

                feet=`expr $inch | awk '{feet=$1*0.0833333} {print feet}'`
                echo $feet "feet"
                ;;
        $meter_to_feet)
                read -p "Enter value in meter :- " meter
                c=3.28084
                feet=`expr $meter | awk '{feet=$1*3.28084} {print feet}'`

                echo $feet "feet"
                ;;
        *)
                echo "Invalid input"

esac

#rectangle

read -p "Enter Length : " l
read -p "Enter Width : " w
area_of_rectangle=$(($l*$w))
area_in_meter=`expr $area_of_rectangle | awk '{area_in_meter=$1*0.3048} {print area_in_meter}'`
echo $area_in_meter "meter"
