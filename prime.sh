#!/bin/bash

if [ "$#" -ne 1 ]; then
  echo "Usage: $0 <number>"
  exit 1
fi

number=$1

if ! [[ $number =~ ^[0-9]+$ ]]; then
  echo "Please enter a valid positive integer."
  exit 1
fi

if [ "$number" -le 1 ]; then
  echo "$number is not a prime number."
  exit 0
fi

is_prime=true

if [ "$number" -eq 2 ]; then
  echo "$number is a prime number."
  exit 0
fi

if [ $((number % 2)) -eq 0 ]; then
  is_prime=false
else
  for ((i = 3; i * i <= number; i += 2)); do
    if [ $((number % i)) -eq 0 ]; then
      is_prime=false
      break
    fi
  done
fi

if $is_prime; then
  echo "$number is a prime number."
else
  echo "$number is not a prime number."
fi

