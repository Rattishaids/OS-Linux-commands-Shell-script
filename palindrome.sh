#!/bin/bash
echo "Enter the number"
read num

rev=0
temp=$num

while [ $num -gt 0 ]
do
    rem=$((num % 10))
    rev=$((rev * 10 + rem))
    num=$((num / 10))
done

if [ $temp -eq $rev ]
then
    echo "Number is palindrome"
else
    echo "Number is NOT palindrome"
fi
