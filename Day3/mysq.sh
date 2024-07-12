#!/bin/bash

#!/bin/bash

mysq() {
  local number=$1
  echo $((number * number))
}

read -p "Enter a number to calculate its square: " num
result=$(mysq $num)
echo "The square of $num is: $result"
