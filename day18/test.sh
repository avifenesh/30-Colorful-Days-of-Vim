#!/bin/bash

if diff -q lesson.lua solution.lua >/dev/null; then
    echo "Day 18 Test Passed!"
else
    echo "Day 18 Test Failed. Keep trying!"
fi
