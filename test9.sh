#!/bin/bash

g++ MyIntVector.cpp -o MyIntVector --std=c++11
./MyIntVector > "Test/output1.txt"

if ! diff "Test/output1.txt" "Test/expected1.txt" > /dev/null; then
    echo "Test : FAIL"
else
    echo "Test : PASS"
fi

g++ MyVector.cpp -o MyVector --std=c++11
./MyVector > "Test/output2.txt"

if ! diff "Test/output2.txt" "Test/expected2.txt" > /dev/null; then
    echo "Test : FAIL"
else
    echo "Test : PASS"
fi
