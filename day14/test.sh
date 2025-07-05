#!/bin/bash

if diff -q lesson.c solution.c >/dev/null; then
    echo "Day 14 Test Passed!"
else
    echo "Day 14 Test Failed. Keep trying!"
fi
