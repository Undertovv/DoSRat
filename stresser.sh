#!/bin/bash
#echo "How many instances would you like to run? [1-many]: "
#read forPingCount
echo "Enter target IP: "
read target
echo "How many pings would you like to send? (Leave blank for infinite): "
read indivCount

#Putting ping in for loop for any later additions.
for ((i=1; i<=2; i++))
do
    ping $target -c $indivCount -t 9 -s 65500  "$i" &
done

