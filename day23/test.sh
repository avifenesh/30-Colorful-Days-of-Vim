#!/bin/bash

# Day 23 Test Script: Location List
# Tests the location list functionality and Python code execution

echo "=== Day 23: Location List Test ==="
echo ""

# Check if python is available
if ! command -v python3 &> /dev/null && ! command -v python &> /dev/null; then
    echo "❌ Python is not installed. Please install Python to run this test."
    exit 1
fi

# Use python3 if available, otherwise python
PYTHON_CMD="python3"
if ! command -v python3 &> /dev/null; then
    PYTHON_CMD="python"
fi

# Test 1: Check for intentional syntax errors (they should exist for practice)
echo "📋 Test 1: Checking for practice syntax errors..."
if $PYTHON_CMD -m py_compile main.py 2>/dev/null; then
    echo "⚠️  No syntax errors found - learner may have already fixed them"
    echo "   (This is expected after practice)"
else
    echo "✅ Syntax errors present for location list practice"
fi
echo ""

# Test 2: Check for TODO items for lvimgrep practice
echo "📋 Test 2: Checking for TODO items..."
todo_count=$(grep -c "TODO" main.py)
if [ "$todo_count" -ge 4 ]; then
    echo "✅ Found $todo_count TODO items for lvimgrep practice"
else
    echo "❌ Only found $todo_count TODO items (need at least 4)"
fi
echo ""

# Test 3: Check for multiple comment types for window-specific searches
echo "📋 Test 3: Checking for multiple comment types..."
fixme_count=$(grep -c "FIXME" main.py)
note_count=$(grep -c "NOTE" main.py)
security_count=$(grep -c "SECURITY" main.py)

echo "  Found: $fixme_count FIXME, $note_count NOTE, $security_count SECURITY comments"

if [ "$fixme_count" -ge 3 ] && [ "$note_count" -ge 1 ] && [ "$security_count" -ge 3 ]; then
    echo "✅ Multiple comment types available for window-specific searches"
else
    echo "❌ Not enough variety in comment types (need 3+ FIXME, 1+ NOTE, 3+ SECURITY)"
fi
echo ""

# Test 4: Verify file structure contains all required tasks
echo "📋 Test 4: Checking for complete task structure..."
tasks_found=0

if grep -q "TASK 1.*syntax" main.py; then
    ((tasks_found++))
fi
if grep -q "TASK 2.*Search patterns" main.py; then
    ((tasks_found++))
fi
if grep -q "TASK 3.*Window-specific" main.py; then
    ((tasks_found++))
fi
if grep -q "TASK 4.*Location list" main.py; then
    ((tasks_found++))
fi
if grep -q "TASK 5.*Advanced" main.py; then
    ((tasks_found++))
fi
if grep -q "TASK 6.*Multiple window" main.py; then
    ((tasks_found++))
fi
if grep -q "TASK 7.*difference.*quickfix" main.py; then
    ((tasks_found++))
fi

if [ "$tasks_found" -eq 7 ]; then
    echo "✅ All 7 location list tasks are present"
else
    echo "❌ Only found $tasks_found/7 location list tasks"
fi
echo ""

# Test 5: Check for key location list command documentation
echo "📋 Test 5: Checking for location list command documentation..."
commands_found=0

if grep -q ":lmake" main.py; then ((commands_found++)); fi
if grep -q ":lopen" main.py; then ((commands_found++)); fi
if grep -q ":lnext\|:ln" main.py; then ((commands_found++)); fi
if grep -q ":lprev\|:lp" main.py; then ((commands_found++)); fi
if grep -q ":lvimgrep" main.py; then ((commands_found++)); fi
if grep -q ":llist" main.py; then ((commands_found++)); fi
if grep -q ":lolder" main.py; then ((commands_found++)); fi
if grep -q ":lnewer" main.py; then ((commands_found++)); fi
if grep -q ":ldo" main.py; then ((commands_found++)); fi

if [ "$commands_found" -ge 8 ]; then
    echo "✅ Essential location list commands documented ($commands_found/9)"
else
    echo "❌ Only found $commands_found/9 essential location list commands"
fi
echo ""

# Test 6: Check for ValidationError class and location list integration
echo "📋 Test 6: Checking for ValidationError class and integration..."
if grep -q "class ValidationError" main.py && grep -q "to_location_format" main.py; then
    echo "✅ ValidationError class with location list integration present"
else
    echo "❌ Missing ValidationError class or location list integration"
fi
echo ""

# Test 7: Check for difference documentation between quickfix and location list
echo "📋 Test 7: Checking for quickfix vs location list differences..."
if grep -q "window-local" main.py && grep -q "Global.*shared" main.py; then
    echo "✅ Key differences between quickfix and location list documented"
else
    echo "❌ Missing documentation of key differences"
fi
echo ""

# Test 8: Try to run the file if syntax is correct
echo "📋 Test 8: Testing Python execution..."
if $PYTHON_CMD main.py > /tmp/day23_output 2>&1; then
    echo "✅ Python file executes successfully"

    # Check if the test verification function runs
    if grep -q "Testing Location List Skills" /tmp/day23_output; then
        echo "✅ Test verification function is working"
    else
        echo "⚠️  Test verification function may not be working"
    fi

    # Check if differences are demonstrated
    if grep -q "Key Differences from Quickfix" /tmp/day23_output; then
        echo "✅ Difference demonstration is working"
    else
        echo "⚠️  Difference demonstration may not be working"
    fi
else
    echo "⚠️  Python has syntax errors (expected for practice)"
    echo "   Students should use :lmake and location lists to find and fix these"
fi
echo ""

# Summary
echo "=== LOCATION LIST PRACTICE INSTRUCTIONS ==="
echo ""
echo "🎯 How to practice location lists (window-local):"
echo ""
echo "1. Open main.py in Vim"
echo "2. Create multiple windows: :split or :vsplit"
echo "3. In window 1:"
echo "   - Run :lmake to check for errors (populates location list)"
echo "   - Use :lopen to open location list window"
echo "   - Navigate with :lnext and :lprev"
echo ""
echo "4. Switch to window 2 (Ctrl-w w) and try different searches:"
echo "   :lvimgrep /TODO/ %      - Find TODO items (window-local)"
echo "   :lvimgrep /FIXME/ %     - Find FIXME items (different from window 1!)"
echo "   :lvimgrep /SECURITY/ %  - Find security issues"
echo ""
echo "5. Compare with quickfix (global):"
echo "   :vimgrep /TODO/ %       - This affects ALL windows"
echo "   :copen                  - Global quickfix window"
echo ""
echo "6. Advanced location list operations:"
echo "   :llist                  - List all location entries"
echo "   :ll N                   - Jump to entry number N"
echo "   :ldo s/old/new/g       - Replace in all location entries"
echo "   :lgetexpr system('cmd') - Populate from external command"
echo ""
echo "🔄 Expected workflow:"
echo "   • :split → different :lvimgrep per window → notice separate lists"
echo "   • :lmake → :lopen → :lnext/:lprev → fix errors locally"
echo "   • Compare location list (local) vs quickfix (global) behavior"
echo ""

# Clean up
rm -f /tmp/day23_output

echo "✨ Day 23 setup complete! Practice location list (window-local) navigation."