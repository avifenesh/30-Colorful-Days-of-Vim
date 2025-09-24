#!/bin/bash

# Day 28: Expression Register & Math Test Script
echo "=== Day 28: Expression Register & Math Test ==="

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Test counter
TESTS_PASSED=0
TOTAL_TESTS=5

echo -e "${YELLOW}Running Day 28 JavaScript program...${NC}"

# Run the JavaScript program and capture output
if OUTPUT=$(node main.js 2>&1); then
    echo -e "${GREEN}✓ Program execution successful${NC}"
    ((TESTS_PASSED++))
else
    echo -e "${RED}✗ Program execution failed${NC}"
    echo "Error: $OUTPUT"
    exit 1
fi

# Test if output contains expected expression register concepts
echo -e "\n${YELLOW}Checking mathematical operations content...${NC}"
if echo "$OUTPUT" | grep -q "Basic Mathematical Operations"; then
    echo -e "${GREEN}✓ Mathematical operations covered${NC}"
    ((TESTS_PASSED++))
else
    echo -e "${RED}✗ Mathematical operations missing${NC}"
fi

echo -e "\n${YELLOW}Checking string manipulation content...${NC}"
if echo "$OUTPUT" | grep -q "String Manipulation"; then
    echo -e "${GREEN}✓ String manipulation covered${NC}"
    ((TESTS_PASSED++))
else
    echo -e "${RED}✗ String manipulation missing${NC}"
fi

echo -e "\n${YELLOW}Checking date/time functions...${NC}"
if echo "$OUTPUT" | grep -q "Date and Time Functions"; then
    echo -e "${GREEN}✓ Date/time functions covered${NC}"
    ((TESTS_PASSED++))
else
    echo -e "${RED}✗ Date/time functions missing${NC}"
fi

echo -e "\n${YELLOW}Checking expression register examples...${NC}"
if echo "$OUTPUT" | grep -q "Practical Expression Register Examples"; then
    echo -e "${GREEN}✓ Practical examples included${NC}"
    ((TESTS_PASSED++))
else
    echo -e "${RED}✗ Practical examples missing${NC}"
fi

# Summary
echo -e "\n${YELLOW}=== Test Summary ===${NC}"
echo -e "Tests passed: ${TESTS_PASSED}/${TOTAL_TESTS}"

if [ $TESTS_PASSED -eq $TOTAL_TESTS ]; then
    echo -e "${GREEN}🎉 All tests passed! Day 28 complete!${NC}"
    echo -e "\n${YELLOW}Expression Register Mastery Achieved!${NC}"
    echo "You've learned how to:"
    echo "  • Use Ctrl-r = for mathematical calculations"
    echo "  • Manipulate strings with Vim functions"
    echo "  • Generate timestamps and dates dynamically"
    echo "  • Access file and cursor information"
    echo "  • Create dynamic content with expressions"
    echo ""
    echo "Key commands mastered:"
    echo "  • Ctrl-r = - Expression register in insert mode"
    echo "  • Mathematical: +, -, *, /, %, **, sqrt(), pow()"
    echo "  • String: strlen(), toupper(), tolower(), repeat()"
    echo "  • Date: strftime() with various format specifiers"
    echo "  • Info: line('.'), col('.'), expand('%'), &options"
    echo ""
    echo "The expression register is your calculator and dynamic content generator!"
    exit 0
else
    echo -e "${RED}❌ Some tests failed. Review Day 28 concepts.${NC}"
    echo "Practice using Ctrl-r = in insert mode for calculations and dynamic content."
    exit 1
fi