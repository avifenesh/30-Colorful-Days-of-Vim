"""
Welcome to Day 5 of your Vim challenge!

CHARACTER NAVIGATION - Master precise cursor movement!

New keys for today:
    - `f{char}`: Find (jump to) next occurrence of {char} on current line
    - `F{char}`: Find previous occurrence of {char} on current line
    - `t{char}`: Till (jump before) next occurrence of {char}
    - `T{char}`: Till previous occurrence of {char}
    - `;`: Repeat last f/F/t/T in same direction
    - `,`: Repeat last f/F/t/T in opposite direction
    - `%`: Jump to matching bracket/parenthesis/brace
    - `*`: Search for word under cursor forward
    - `#`: Search for word under cursor backward
    - `/`: Search forward (basic introduction)
    - `?`: Search backward (basic introduction)

REMINDERS - Keys from previous days:
    Day 4: Yank/paste/undo - `yy`, `p`, `P`, `u`, `Ctrl-r`
    Day 3: Delete/change - `dw`, `cw`, `dd`, `cc`, `D`, `C`
    Day 2: Advanced navigation - `gg`, `G`, `Ctrl-d/u`, `H/M/L`
    Day 1: Basic movement - `w`, `b`, `e`, `0`, `$`

Your tasks:
1. Use f/F to navigate to specific characters
2. Use t/T for precise positioning before characters
3. Use % to fix matching brackets
4. Use * and # to find repeated words
5. Combine character navigation with delete/change
"""


def task1_find_characters():
    """TASK 1: Use f and F to fix the string
    Navigate to each 'x' using fx and replace with correct character
    Fix: "Hexlo Wxrld" -> "Hello World"
    """
    message = "Hexlo Wxrld"  # Use fx to find 'x', then r to replace
    return message


def task2_till_navigation():
    """TASK 2: Use t and T for precise positioning
    The semicolons are in wrong positions. Use t and T to position cursor
    before the character you need to delete or change
    Fix: "data;base;connection;" -> "database_connection"
    """
    # Use t; to go before semicolon, then delete or change
    connection = "data;base;connection;"
    return connection


def task3_bracket_matching():
    """TASK 3: Use % to jump between matching brackets and fix mismatches
    Some brackets don't match - use % to find pairs and fix them
    """
    # Fix these bracket mismatches using %
    code_blocks = [
        "(correct)",      # This one is fine
        "{mismatch)",     # Wrong closing bracket - should be }
        "[array}",        # Wrong closing bracket - should be ]
        "(nested(good))", # This one is fine
        "{dict]",         # Wrong closing bracket - should be }
    ]
    return code_blocks


def task4_word_search():
    """TASK 4: Use * and # to find duplicate words
    Find the duplicate 'error' and 'bug' words and fix them
    Position cursor on word and use * or # to search
    """
    lines = [
        "This line has no error issues",
        "This error is an error that needs fixing",  # Remove duplicate 'error'
        "A bug in the bug system",                   # Remove duplicate 'bug'
        "Clean code without duplicates"
    ]
    # Expected: second 'error' and 'bug' removed
    return lines


def task5_combined_navigation():
    """TASK 5: Combine f/t with d/c operations
    Use df, dt, cf, ct to efficiently edit
    """
    # Task 5a: Delete from cursor to and including '=' using df=
    config1 = "prefix=DELETE_THIS=value"  # Should become "prefix=value"

    # Task 5b: Change from cursor to (but not including) ':' using ct:
    config2 = "key:CHANGE_THIS:value"  # Should become "key:correct:value"

    # Task 5c: Delete from current position to third comma using d3f,
    list_str = "a,b,c,d,e,f,g"  # Position at 'a', use d3f, to delete "a,b,c,"

    return {
        "config1": config1,
        "config2": config2,
        "list_str": list_str
    }


def task6_repeat_commands():
    """TASK 6: Use ; and , to repeat f/F/t/T
    Navigate through the string using f and then ; to repeat
    Fix all the numbers to be sequential: 1,2,3,4,5
    """
    # Use f, to find commas, then ; to repeat the search
    sequence = "1,9,9,9,5"  # Fix to "1,2,3,4,5"
    return sequence


# Test functions
def run_tests():
    passed = 0
    total = 6

    # Test 1: Character finding
    result1 = task1_find_characters()
    if result1 == "Hello World":
        print("✓ Task 1: Character navigation with f/F successful")
        passed += 1
    else:
        print(f"✗ Task 1: Expected 'Hello World', got '{result1}'")
        print("  Hint: Use fx to find 'x', then r to replace")

    # Test 2: Till navigation
    result2 = task2_till_navigation()
    if result2 == "database_connection":
        print("✓ Task 2: Till navigation with t/T successful")
        passed += 1
    else:
        print(f"✗ Task 2: Expected 'database_connection', got '{result2}'")
        print("  Hint: Use t; to position before semicolon")

    # Test 3: Bracket matching
    result3 = task3_bracket_matching()
    expected3 = ["(correct)", "{mismatch}", "[array]", "(nested(good))", "{dict}"]
    if result3 == expected3:
        print("✓ Task 3: Bracket matching with % successful")
        passed += 1
    else:
        print("✗ Task 3: Fix bracket mismatches using %")
        print("  Hint: Position on opening bracket, press % to jump to closing")

    # Test 4: Word search
    result4 = task4_word_search()
    expected4 = [
        "This line has no error issues",
        "This error is an that needs fixing",
        "A bug in the system",
        "Clean code without duplicates"
    ]
    if result4 == expected4:
        print("✓ Task 4: Word search with * and # successful")
        passed += 1
    else:
        print("✗ Task 4: Remove duplicate 'error' and 'bug' words")
        print("  Hint: Position on word, use * to find next occurrence")

    # Test 5: Combined operations
    result5 = task5_combined_navigation()
    if (result5["config1"] == "prefix=value" and
        result5["config2"] == "key:correct:value" and
        result5["list_str"] == "d,e,f,g"):
        print("✓ Task 5: Combined navigation operations successful")
        passed += 1
    else:
        print("✗ Task 5: Practice df, dt, cf, ct commands")
        print(f"  config1: expected 'prefix=value', got '{result5['config1']}'")
        print(f"  config2: expected 'key:correct:value', got '{result5['config2']}'")
        print(f"  list_str: expected 'd,e,f,g', got '{result5['list_str']}'")

    # Test 6: Repeat commands
    result6 = task6_repeat_commands()
    if result6 == "1,2,3,4,5":
        print("✓ Task 6: Repeat navigation with ; and , successful")
        passed += 1
    else:
        print(f"✗ Task 6: Expected '1,2,3,4,5', got '{result6}'")
        print("  Hint: Use f, to find comma, then ; to repeat")

    print(f"\nDay 5 Progress: {passed}/{total} tasks completed\n")

    if passed == total:
        print("🎉 Excellent! You've mastered character navigation!")
        print("You can now jump precisely to any character on a line.")
        print("These commands are incredibly powerful when combined with d, c, and y!")
        return 0
    else:
        print("Keep practicing! Master f, F, t, T, %, *, #, ; and ,")
        print("Tip: f/t are among Vim's most efficient navigation commands!")
        return 1


if __name__ == "__main__":
    import sys
    sys.exit(run_tests())