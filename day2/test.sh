#!/bin/bash

if diff -q lesson.c solution.c >/dev/null; then
    echo "Day 2 Test Passed!"
else
    echo "Day 2 Test Failed. Keep trying!"
fi
