#!/bin/bash

if diff -q lesson.c solution.c >/dev/null; then
    echo "Day 8 Test Passed!"
else
    echo "Day 8 Test Failed. Keep trying!"
fi
