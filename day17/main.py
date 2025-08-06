"""
Welcome to Day 17 of your Vim challenge!

REGISTERS - Your multi-clipboard system!
Today's focus: Using Vim's register system for advanced copy/paste operations

New commands for today:
    - `"ay` - Yank into register 'a' (works with any letter a-z)
    - `"ap` - Paste from register 'a'
    - `"Ay` - Append to register 'a' (uppercase appends)
    - `"_d` - Delete to black hole register (doesn't affect other registers)
    - `"0p` - Paste from yank register (last yanked text)
    - `""p` - Paste from unnamed register (default)
    - `"+y` - Yank to system clipboard
    - `"+p` - Paste from system clipboard
    - `"*y` - Yank to selection clipboard (X11)
    - `:reg` - Show all registers
    - `:reg a b` - Show specific registers
    - `Ctrl-r a` - Insert register 'a' in insert mode
    - Special registers:
        - `"0` - Last yank
        - `"1-"9` - Last 9 deletions
        - `".` - Last inserted text
        - `"%` - Current filename
        - `":` - Last command
        - `"/` - Last search

REMINDERS - Keys from previous days:
    Day 16: Folding - `zfap`, `za`, `zc`/`zo`
    Day 15: Command history - `q:`, `q/`
    Day 14: Autocomplete - `Ctrl-n`, `Ctrl-p`
    Day 13: Windows - `:split`, `:vsplit`
    Day 12: Global commands - `:g/pattern/d`
    Day 11: Marks - `ma`, `'a`
    Day 10: Visual mode practice
    Day 9: Text objects - `iw`, `aw`
    Day 8: Macros - `qa`, `@a` (stores in registers!)
    Day 7: Replace - `:%s/old/new/g`
    Day 6: Visual mode - `v`, `V`, `Ctrl-v`
    Day 5: Search - `/pattern`, `n`, `N`
    Day 4: Repeat - `.`, `3w`, `2dd`
    Day 3: Yank/paste - `yy`, `p`, `P`
    Day 2: Delete/change - `dw`, `cw`
    Day 1: Movement - `w`, `b`, `e`, `0`, `$`

Your tasks for Day 17:
1. Store different config values in named registers (a, b, c)
2. Use the black hole register to delete comments without affecting clipboard
3. Build a function by collecting lines from different parts of the file
4. Use uppercase registers to append multiple lines
5. Use number registers to recover from accidental deletions
"""

import os
import sys

# Configuration values - Task 1: Store each in a different register
API_KEY = "sk-1234567890abcdef"  # Store in register 'a'
DATABASE_URL = "postgresql://localhost:5432/mydb"  # Store in register 'b'
SECRET_TOKEN = "super-secret-token-value"  # Store in register 'c'

# Task 2: Delete these debug comments using black hole register "_d
print("Starting application...")


# Task 3: Collect these function parts into register 'd' to build complete function
# Function signature:
def process_data(data):

    # Function body part 1 (somewhere else in file):
    # Validate input
    if not data:
        raise ValueError("Data cannot be empty")

    # Function body part 2 (another location):
    # Process the data
    result = data.upper().strip()

    # Function body part 3 (yet another location):
    # Return processed result
    return {"processed": result, "length": len(result)}


# Task 4: Use uppercase register 'E' to collect all error messages
ERROR_MSG_1 = "Invalid input format"
# Some other code here...
ERROR_MSG_2 = "Connection timeout"
# More code...
ERROR_MSG_3 = "Permission denied"
# Build complete error list in register 'E' by appending each


# Task 5: Accidentally delete this important function, then recover it
def important_function():
    """This function should not be permanently deleted!"""
    critical_value = 42
    return critical_value * 2


# Test section
def run_tests():
    tests_passed = 0
    total_tests = 5

    # Test 1: Check if config values are stored in registers (manual check)
    # User must mark this as done after using registers a, b, c
    config_in_registers = True  # Mark True when registers practiced
    print(f"{'✓' if config_in_registers else '✗'} Config values stored in registers")
    if config_in_registers:
        tests_passed += 1

    # Test 2: Check if debug comments are removed
    # Read the file to check for DEBUG comments
    with open(__file__, "r") as f:
        content = f.read()
    debug_removed = "#" + "DEBUG:" not in content
    print(f"{'✓' if debug_removed else '✗'} Debug comments removed")
    if debug_removed:
        tests_passed += 1

    # Test 3: Check if function is assembled
    # Check if process_data function has actual implementation
    import inspect

    source = inspect.getsource(process_data)
    function_assembled = (
        "pass" not in source
        and "validate input" in source.lower()
        and "return" in source
    )
    print(f"{'✓' if function_assembled else '✗'} Function assembled from parts")
    if function_assembled:
        tests_passed += 1

    # Test 4: Check if error messages collected in register E (manual check)
    # User must mark this as done after using uppercase register E to append
    errors_collected = True  # Mark True when register E used
    print(f"{'✓' if errors_collected else '✗'} Error messages collected")
    if errors_collected:
        tests_passed += 1

    # Test 5: Check recovery practice (manual check)
    # User must mark this as done after deleting and recovering important_function
    recovery_practiced = True  # Mark True when deletion/recovery practiced
    print(f"{'✓' if recovery_practiced else '✗'} Deletion recovery practiced")
    if recovery_practiced:
        tests_passed += 1

    if tests_passed == total_tests:
        print("\n✓ All tests passed!")
    else:
        print(
            f"\n✗ {total_tests - tests_passed} tests failed. Keep practicing registers!"
        )


if __name__ == "__main__":
    print("=== Vim Challenge Day 17 ===\n")
    run_tests()
