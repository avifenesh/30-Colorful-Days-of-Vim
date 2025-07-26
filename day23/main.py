"""
Welcome to Day 23 of your Vim challenge!

UNDO TREE - Time travel through your edits!
Today's focus: Mastering Vim's powerful undo tree system

New commands for today:
    - `u` - Undo last change (you know this!)
    - `Ctrl-r` - Redo (you know this too!)
    - `g-` - Go to older text state (undo tree)
    - `g+` - Go to newer text state (undo tree)
    - `:undo {n}` - Go to undo number n
    - `:undolist` - Show undo tree branches
    - `:earlier {n}` - Go back n changes
    - `:earlier {n}s` - Go back n seconds
    - `:earlier {n}m` - Go back n minutes  
    - `:earlier {n}h` - Go back n hours
    - `:earlier {n}d` - Go back n days
    - `:earlier {n}f` - Go back n file writes
    - `:later {n}` - Go forward n changes
    - `:later {n}s/m/h/d/f` - Same time units
    - `g?` - Rot13 encode (creates undo point)
    - `:wundo {file}` - Write undo history
    - `:rundo {file}` - Read undo history

Understanding the undo tree:
    - Linear undo: u and Ctrl-r (loses branches)
    - Tree undo: g- and g+ (preserves all branches)
    - Every edit creates a new branch
    - No edit is ever lost!

REMINDERS - Keys from previous days:
    Day 22: Location list - `:lopen`, `:ln`, `:lp`
    Day 21: Quickfix - `:copen`, `:cn`, `:cp`
    Day 20: Argument list - `:args`, `:argdo`
    Day 19: Custom commands - `:command`
    Day 18: Autocommands - `:autocmd`
    Day 17: Registers - `"0p`, special registers
    Day 16: Folding - `zfap`, `za`
    Day 15: Command history - `q:`
    Day 14: Autocomplete - `Ctrl-n`
    Day 13: Windows - `:split`, `:vsplit`
    Day 12: Global commands - `:g/pattern/command`
    Day 11: Marks - `` `. ``, `` `' ``
    Day 10: Visual mode practice
    Day 9: Text objects - `iw`, `aw`
    Day 8: Macros - `qa`, `@a`
    Day 7: Replace - `:%s/old/new/g`
    Day 6: Visual mode - `v`, `V`, `Ctrl-v`
    Day 5: Search - `/pattern`, `n`, `N`
    Day 4: Repeat - `.`, `u`, `Ctrl-r`
    Day 3: Yank/paste - `yy`, `p`, `P`
    Day 2: Delete/change - `dw`, `cw`
    Day 1: Movement - `w`, `b`, `e`, `0`, `$`

Your tasks for Day 23:
1. Create multiple branches in the undo tree by making different edits
2. Navigate between branches using g- and g+
3. Use time-based navigation to recover lost work
4. Save and restore undo history to a file
5. Practice recovering from accidental changes using undo tree

Scenario: You're refactoring code and want to try different approaches
without losing any work.
"""

import time
import json

# Version 1: Original implementation
class DataProcessor:
    def __init__(self):
        self.data = []
    
    def process(self, item):
        # Task 1: Make this edit, then undo and try a different approach
        return item.upper()

# Task 2: Try different refactoring approaches
# Branch 1: Add validation
# Branch 2: Add logging
# Branch 3: Add caching

def calculate_metrics(values):
    """Calculate basic metrics for a list of values."""
    # Original version - simple implementation
    total = sum(values)
    count = len(values)
    average = total / count if count > 0 else 0
    
    return {
        'total': total,
        'count': count,
        'average': average
    }

# Task 3: Experiment with different algorithms
def find_duplicates(items):
    """Find duplicate items in a list."""
    # Version 1: Using a set
    seen = set()
    duplicates = []
    
    for item in items:
        if item in seen:
            duplicates.append(item)
        seen.add(item)
    
    return duplicates

# Task 4: Save point - document important state
# After making several changes, save the undo history:
# :wundo ~/.vim_undo_day23
# Later, restore it with:
# :rundo ~/.vim_undo_day23

# Task 5: Recovery practice
# IMPORTANT_DATA = "This must not be lost!"
# Delete this line, make other changes, then recover it using the undo tree

def test_undo_tree():
    """Test function to verify undo tree understanding."""
    results = []
    
    # Test 1: Multiple branches created
    branches_created = False  # Would check undo tree structure
    results.append(("Multiple undo branches created", branches_created))
    
    # Test 2: Navigation between branches
    branch_navigation = False  # Would verify g- and g+ usage
    results.append(("Navigate between undo branches", branch_navigation))
    
    # Test 3: Time-based recovery
    time_recovery = False  # Would check :earlier/:later usage
    results.append(("Time-based undo navigation", time_recovery))
    
    # Test 4: Undo history persistence
    history_saved = False  # Would check :wundo/:rundo
    results.append(("Undo history saved/restored", history_saved))
    
    # Test 5: Recovery success
    recovery_success = True  # Placeholder
    results.append(("Recovery from changes practiced", recovery_success))
    
    return results

if __name__ == "__main__":
    print("=== Vim Challenge Day 23 ===\n")
    
    # Run tests
    test_results = test_undo_tree()
    passed = 0
    
    for test_name, result in test_results:
        status = "✓" if result else "✗"
        print(f"{status} {test_name}")
        if result:
            passed += 1
    
    total = len(test_results)
    if passed == total:
        print("\n✓ All tests passed!")
    else:
        print(f"\n✗ {total - passed} tests failed. Keep exploring the undo tree!")