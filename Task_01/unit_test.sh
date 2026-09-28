#!/bin/bash

#3 args
if [ $# -ne 3 ]; then
    echo "Usage: $0 <program> <program_argument> <expected_output>"
    exit 1
fi


program=$1
program_argument=$2
expected=$3

#if it exists
if [ ! -f "$program" ]; then
    echo "Error: program not found"
    exit 1
fi

#run and save
actual=$($program $program_argument)

#compare
if [ "$actual" = "$expected" ]; then
    echo "PASS"
else
    echo "FAIL"
    echo "Expected: $expected"
    echo "Got: $actual"
fi
