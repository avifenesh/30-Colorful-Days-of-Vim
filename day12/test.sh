#!/bin/bash

if diff -q lesson.lua solution.lua >/dev/null; then
    echo "Day 12 Test Passed!"
else
    echo "Day 12 Test Failed. Keep trying!"
fi
