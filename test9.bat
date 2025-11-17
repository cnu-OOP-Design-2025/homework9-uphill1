@echo off
setlocal enabledelayedexpansion

set i=1

g++ MyIntVector.cpp -o MyIntVector --std=c++11
./MyIntVector > "Test/output1.txt"
fc Test\output1.txt Test\expected1.txt > nul
if errorlevel 1 (
    echo Test : FAIL
) else (
    echo Test : PASS
)

g++ MyVector.cpp -o MyVector --std=c++11
./MyVector > "Test/output2.txt"
fc Test\output2.txt Test\expected2.txt > nul
if errorlevel 1 (
    echo Test : FAIL
) else (
    echo Test : PASS
)

