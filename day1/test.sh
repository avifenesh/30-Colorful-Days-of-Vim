#!/bin/bash

if diff -q lesson.c solution.c >/dev/null; then
    echo "Day 1 Test Passed!"
else
    echo "Day 1 Test Failed. Keep trying!"
fi
