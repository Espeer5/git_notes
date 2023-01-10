#!/bin/bash

# Author: Edward Speer
# Date Created: 1/9/2023
# Last Modeified: 1/9/2023

# Description:
# Performs basic arithmetic operations on command line arguments

# Usage:
#  supply arg 1 as the operator, and then supply up to 9 numerical args to perform that operation on.

def=1

if [ $1 = + ] 2> /dev/null || [ $1 = - ] 2> /dev/null
then 
    def=0
fi

echo $((${2:-${def}} ${1} ${3:-${def}} ${1} ${4:-${def}} ${1} ${5:-${def}} ${1} ${6:-${def}} ${1} ${7:-${def}} ${1} ${8:-${def}} ${1} ${9:-${def}} ${1}${10:-${def}}))

exit 0