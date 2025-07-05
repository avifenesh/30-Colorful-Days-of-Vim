#!/bin/bash

if diff -q Main.java Solution.java >/dev/null; then
    echo "Day 25 Test Passed!"
else
    echo "Day 25 Test Failed. Keep trying!"
fi
