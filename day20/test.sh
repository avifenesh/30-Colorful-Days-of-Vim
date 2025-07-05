#!/bin/bash

if diff -q lesson.c solution.c >/dev/null; then
    echo "Day 20 Test Passed!"
else
    echo "Day 20 Test Failed. Keep trying!"
fi
