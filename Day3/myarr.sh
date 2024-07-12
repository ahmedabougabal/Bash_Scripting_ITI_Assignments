#!/bin/bash

# 9. Write a script called myarr that asks a user how many
# elements he wants to enter in an array, fill the array, and then print it.

read -p "Enter array size: " size

declare -a arr

for ((i = 0; i < size; i++)); do
  read -p "Type the number for element $((i + 1)): " arr[$i]
done

echo "The array elements are: ${arr[@]}"
