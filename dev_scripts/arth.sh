#!/bin/bash

sum=$(( $1 + $2 )) && sub=$(( $1 - $2 )) && prod=$(( $1 * $2 )) && div=$(( $1 / $2 )) && rem=$(( $1 % $2 )) 

echo "Addition of two number is    :$sum"
echo "Subtraction of two number is :$sub"
echo "Product of two number is     :$prod"
echo "Division of two number is    :$div"
echo "reminder of two number is    :$rem"
