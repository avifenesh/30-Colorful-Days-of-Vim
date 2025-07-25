"""
Welcome to Day 11 of your Vim challenge!

Today's focus: Marks - Setting bookmarks and jumping between them

New commands to learn:
    - `ma`: Set mark 'a' at the current cursor position
    - `` `a ``: Jump to mark 'a' (exact position)
    - `'a`: Jump to the beginning of the line where mark 'a' was set
    - `` `. ``: Jump to the last change
    - `''`: Jump to the beginning of the line of the last jump

REMINDERS - Keys from previous days:
    Day 10: Visual mode - `v` (char), `V` (line), `Ctrl+v` (block)
    Day 9: Text objects - `iw`, `aw`, `i"`, `a"`, `i(`, `a(` (combine with d, c, y!)
    Day 8: Macros - `qa` (record to a), `q` (stop), `@a` (play), `@@` (repeat)
    Day 7: Replace - `:%s/old/new/g`, `/text` (search), `n`/`N` (next/prev)
    Day 3: Yank/paste - `yy`, `p`, `P`

Your tasks for Day 11:
1. Set mark 'b' at the TODO marker in calculate_score function
2. Set mark 'a' at the FIXME line in validate_input function
3. Jump back to mark 'b' and fix the return value (should be score not 0)
4. Jump to mark 'a' and fix the condition (should be >= not <=)
5. Use `` `. `` to jump between your last changes to verify both fixes
"""

def calculate_score(items):
    """Calculate total score from items"""
    score = 0
    for item in items:
        score += item * 2
    # TODO: Fix the return value here (set mark 'b' here)
    return score


def validate_input(value):
    """Validate that input is positive"""
    # FIXME: The condition below is wrong (set mark 'a' here)
    if value >= 0:  # Should check if value is >= 0
        return True
    return False


def process_data(data):
    """Process data and return results"""
    results = []
    for item in data:
        if validate_input(item):
            score = calculate_score([item])
            results.append(score)
    return results


# Test functions - DO NOT EDIT BELOW THIS LINE
def test_calculate_score():
    """Test the calculate_score function"""
    test_items = [1, 2, 3, 4, 5]
    result = calculate_score(test_items)
    expected = 30  # (1+2+3+4+5) * 2 = 30

    if result == expected:
        print("✓ calculate_score test passed!")
        return True
    else:
        print(f"✗ calculate_score test failed! Expected {expected}, got {result}")
        return False


def test_validate_input():
    """Test the validate_input function"""
    test_cases = [
        (5, True),    # Positive number should be valid
        (0, True),    # Zero should be valid
        (-1, False),  # Negative should be invalid
    ]

    all_passed = True
    for value, expected in test_cases:
        result = validate_input(value)
        if result != expected:
            print(f"✗ validate_input({value}) failed! Expected {expected}, got {result}")
            all_passed = False

    if all_passed:
        print("✓ validate_input test passed!")
    return all_passed


def test_process_data():
    """Test the complete data processing"""
    test_data = [1, -2, 3, 0, 5]
    result = process_data(test_data)
    expected = [2, 6, 0, 10]  # Only positive values processed: [1*2, 3*2, 0*2, 5*2]

    if result == expected:
        print("✓ process_data test passed!")
        return True
    else:
        print(f"✗ process_data test failed! Expected {expected}, got {result}")
        return False


if __name__ == "__main__":
    print("=== Vim Challenge Day 11 ===\n")

    all_passed = True

    # Run all tests
    all_passed &= test_calculate_score()
    all_passed &= test_validate_input()
    all_passed &= test_process_data()

    if all_passed:
        print("\n✓ All tests passed! Great work with marks!")
    else:
        print("\n✗ Some tests failed. Use marks to navigate and fix the issues!")
