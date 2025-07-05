#!/bin/bash

if diff -q Main.java Solution.java >/dev/null; then
    echo "Day 7 Test Passed!"
else
    echo "Day 7 Test Failed. Keep trying!"
fi
