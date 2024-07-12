#!/bin/bash

# question 1
# awk -F: '{print $5}' /etc/passwd

# question 2
# 2- Print login, full name (comment) and home directory of all
# users.( Print each line preceded by a line number)

# awk 'BEGIN { FS=":" }
# {
#     print $1 $6

# }' /etc/passwd

# question 3
# 3- Print login, uid and full name (comment)
# of those uid is greater than 500

# awk 'BEGIN { FS=":" }
# {
#     if ($3 >= 500){
#         print $1 $3 $5
#     }
# }' /etc/passwd

# 4- Print login, uid and full name (comment)
# of those uid is exactly 500

# awk 'BEGIN { FS=":" }
# {
#     if ($3 == 500){
#         print $1 $3 $5
#     }
# }' /etc/passwd

# 5- Print line from 5 to 15 from /etc/passwd

awk 'BEGIN { FS=":" } 
{
    if ($3 == 500){
        print $1 $3 $5
    }
}' /etc/passwd
