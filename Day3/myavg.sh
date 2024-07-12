#!/bin/bash

read -p "Enter the number of elements: " size

declare -a arr

# Read the numbers from the user and store them in the array
for ((i = 0; i < size; i++)); do
  read -p "Enter number $((i + 1)): " arr[$i]
done

# Calculate the sum of all elements
sum=0
for num in "${arr[@]}"; do
  sum=$((sum + num))
done

# Calculate the average
if [ $size -gt 0 ]; then
  average=$(echo "$sum / $size" | bc -l)
  printf "The average of the entered numbers is: %.2f\n" "$average"
else
  echo "No numbers entered."
fi
