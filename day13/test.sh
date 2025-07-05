#!/bin/bash

if diff -q Main.java Solution.java >/dev/null; then
    echo "Day 13 Test Passed!"
else
    echo "Day 13 Test Failed. Keep trying!"
fi
