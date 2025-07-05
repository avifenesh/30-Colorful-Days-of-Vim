#!/bin/bash

if diff -q lesson.c solution.c >/dev/null; then
    echo "Day 26 Test Passed!"
else
    echo "Day 26 Test Failed. Keep trying!"
fi
