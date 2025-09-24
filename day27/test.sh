#!/bin/bash

# Day 27: Sessions & Views Test Script
echo "=== Day 27: Sessions & Views Test ==="

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Test counter
TESTS_PASSED=0
TOTAL_TESTS=5

echo -e "${YELLOW}Building Rust project...${NC}"

# Build the Rust project
if cargo build --quiet; then
    echo -e "${GREEN}✓ Build successful${NC}"
    ((TESTS_PASSED++))
else
    echo -e "${RED}✗ Build failed${NC}"
fi

echo -e "\n${YELLOW}Running Day 27 program...${NC}"

# Run the program and capture output
if OUTPUT=$(cargo run --quiet 2>&1); then
    echo -e "${GREEN}✓ Program execution successful${NC}"
    ((TESTS_PASSED++))
else
    echo -e "${RED}✗ Program execution failed${NC}"
    echo "Error: $OUTPUT"
fi

# Test if output contains expected session concepts
echo -e "\n${YELLOW}Checking session management content...${NC}"
if echo "$OUTPUT" | grep -q "Basic Session Management"; then
    echo -e "${GREEN}✓ Session basics covered${NC}"
    ((TESTS_PASSED++))
else
    echo -e "${RED}✗ Session basics missing${NC}"
fi

echo -e "\n${YELLOW}Checking view operations content...${NC}"
if echo "$OUTPUT" | grep -q "View Operations"; then
    echo -e "${GREEN}✓ View operations covered${NC}"
    ((TESTS_PASSED++))
else
    echo -e "${RED}✗ View operations missing${NC}"
fi

echo -e "\n${YELLOW}Checking practical exercises...${NC}"
if echo "$OUTPUT" | grep -q "Hands-on Exercises"; then
    echo -e "${GREEN}✓ Practical exercises included${NC}"
    ((TESTS_PASSED++))
else
    echo -e "${RED}✗ Practical exercises missing${NC}"
fi

# Summary
echo -e "\n${YELLOW}=== Test Summary ===${NC}"
echo -e "Tests passed: ${TESTS_PASSED}/${TOTAL_TESTS}"

if [ $TESTS_PASSED -eq $TOTAL_TESTS ]; then
    echo -e "${GREEN}🎉 All tests passed! Day 27 complete!${NC}"
    echo -e "\n${YELLOW}Session & View Mastery Achieved!${NC}"
    echo "You've learned how to:"
    echo "  • Create and restore Vim sessions"
    echo "  • Configure session options"
    echo "  • Work with window views"
    echo "  • Manage multiple project sessions"
    echo "  • Understand session vs view differences"
    echo ""
    echo "Key commands mastered:"
    echo "  • :mksession [file] - Save session"
    echo "  • :source Session.vim - Restore session"
    echo "  • :mkview / :loadview - Save/restore views"
    echo "  • :set sessionoptions - Configure sessions"
    echo ""
    echo "Practice creating sessions for different project contexts!"
    exit 0
else
    echo -e "${RED}❌ Some tests failed. Review Day 27 concepts.${NC}"
    exit 1
fi