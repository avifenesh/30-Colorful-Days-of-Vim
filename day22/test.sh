#!/bin/bash

# Day 22 Test Script: Quickfix List
# Tests the quickfix functionality and JavaScript code execution

echo "=== Day 22: Quickfix List Test ==="
echo ""

# Check if node is available
if ! command -v node &> /dev/null; then
    echo "❌ Node.js is not installed. Please install Node.js to run this test."
    exit 1
fi

# Test 1: Check for intentional syntax errors (they should exist for practice)
echo "📋 Test 1: Checking for practice syntax errors..."
if node -c main.js 2>/dev/null; then
    echo "⚠️  No syntax errors found - learner may have already fixed them"
    echo "   (This is expected after practice)"
else
    echo "✅ Syntax errors present for quickfix practice"
fi
echo ""

# Test 2: Check for TODO items for vimgrep practice
echo "📋 Test 2: Checking for TODO items..."
todo_count=$(grep -c "TODO" main.js)
if [ "$todo_count" -ge 4 ]; then
    echo "✅ Found $todo_count TODO items for vimgrep practice"
else
    echo "❌ Only found $todo_count TODO items (need at least 4)"
fi
echo ""

# Test 3: Check for function definitions for search practice
echo "📋 Test 3: Checking for searchable function patterns..."
func_count=$(grep -cE "^function|^const.*=>|^async.*=>" main.js)
if [ "$func_count" -ge 3 ]; then
    echo "✅ Found $func_count function definitions for search practice"
else
    echo "❌ Only found $func_count function definitions (need at least 3)"
fi
echo ""

# Test 4: Check for console.log statements for quickfix navigation
echo "📋 Test 4: Checking for console.log statements..."
console_count=$(grep -c "console\.log" main.js)
if [ "$console_count" -ge 4 ]; then
    echo "✅ Found $console_count console.log statements for search practice"
else
    echo "❌ Only found $console_count console.log statements (need at least 4)"
fi
echo ""

# Test 5: Verify file structure contains all required tasks
echo "📋 Test 5: Checking for complete task structure..."
tasks_found=0

if grep -q "TASK 1.*syntax" main.js; then
    ((tasks_found++))
fi
if grep -q "TASK 2.*Search patterns" main.js; then
    ((tasks_found++))
fi
if grep -q "TASK 3.*navigate" main.js; then
    ((tasks_found++))
fi
if grep -q "TASK 4.*Error" main.js; then
    ((tasks_found++))
fi
if grep -q "TASK 5.*Search" main.js; then
    ((tasks_found++))
fi
if grep -q "TASK 6.*Complex" main.js; then
    ((tasks_found++))
fi
if grep -q "TASK 7.*external" main.js; then
    ((tasks_found++))
fi

if [ "$tasks_found" -eq 7 ]; then
    echo "✅ All 7 quickfix tasks are present"
else
    echo "❌ Only found $tasks_found/7 quickfix tasks"
fi
echo ""

# Test 6: Check for key quickfix command documentation
echo "📋 Test 6: Checking for quickfix command documentation..."
commands_found=0

if grep -q ":make" main.js; then ((commands_found++)); fi
if grep -q ":copen" main.js; then ((commands_found++)); fi
if grep -q ":cnext\|:cn" main.js; then ((commands_found++)); fi
if grep -q ":cprev\|:cp" main.js; then ((commands_found++)); fi
if grep -q ":vimgrep" main.js; then ((commands_found++)); fi
if grep -q ":clist" main.js; then ((commands_found++)); fi
if grep -q ":colder" main.js; then ((commands_found++)); fi
if grep -q ":cnewer" main.js; then ((commands_found++)); fi

if [ "$commands_found" -ge 7 ]; then
    echo "✅ Essential quickfix commands documented ($commands_found/8)"
else
    echo "❌ Only found $commands_found/8 essential quickfix commands"
fi
echo ""

# Test 7: Try to run the file if syntax is correct
echo "📋 Test 7: Testing JavaScript execution..."
if node main.js > /tmp/day22_output 2>&1; then
    echo "✅ JavaScript file executes successfully"

    # Check if the test verification function runs
    if grep -q "Testing Quickfix List Skills" /tmp/day22_output; then
        echo "✅ Test verification function is working"
    else
        echo "⚠️  Test verification function may not be working"
    fi
else
    echo "⚠️  JavaScript has syntax errors (expected for practice)"
    echo "   Students should use :make and quickfix to find and fix these"
fi
echo ""

# Summary
echo "=== QUICKFIX PRACTICE INSTRUCTIONS ==="
echo ""
echo "🎯 How to practice quickfix lists:"
echo ""
echo "1. Open main.js in Vim"
echo "2. Run :make to check for errors and populate quickfix"
echo "3. Use :copen to open the quickfix window"
echo "4. Navigate errors with :cnext and :cprev"
echo "5. Jump to specific errors with :cc N"
echo "6. Fix syntax errors one by one"
echo ""
echo "7. Search practice with :vimgrep:"
echo "   :vimgrep /TODO/ %           - Find all TODO items"
echo "   :vimgrep /function/ %       - Find all function definitions"
echo "   :vimgrep /console\.log/ %   - Find all console.log calls"
echo ""
echo "8. Use :clist to review all quickfix entries"
echo "9. Practice :colder and :cnewer for quickfix history"
echo "10. Try :grep if external grep is available"
echo ""
echo "🔄 Expected workflow:"
echo "   • :make → :copen → :cnext/:cprev → fix → repeat"
echo "   • :vimgrep pattern % → :copen → navigate results"
echo "   • Build up quickfix history with multiple searches"
echo ""

# Clean up
rm -f /tmp/day22_output

echo "✨ Day 22 setup complete! Practice quickfix list navigation."