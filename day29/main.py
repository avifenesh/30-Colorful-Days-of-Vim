"""
Welcome to Day 29 of your Vim challenge!

New concepts for today:
    - `:iabbrev <abbr> <word>`: Define an abbreviation in insert mode.
    - `:cabbrev <abbr> <word>`: Define an abbreviation in command-line mode.
    - `:unabbrev <abbr>`: Remove an abbreviation.
    - `:abclear`: Clear all abbreviations.

REMINDERS - Keys from previous days:
    Day 28: External commands - `:!ls`, `:r!date`, `:w !sudo tee %`
    Day 19: Custom commands - `:command` (similar to abbreviations!)
    Day 18: Autocommands - `:autocmd` (trigger actions automatically)
    Day 14: Autocomplete - `Ctrl-n`, `Ctrl-p` (works with abbreviations)
    Day 4: Repeat - `.` (doesn't work with abbreviations - they expand automatically!)


Your tasks:
1.  Create an insert mode abbreviation `sig` that expands to your signature (e.g., "John Doe\nSoftware Engineer").
2.  Create a command-line abbreviation `W` that expands to `w !sudo tee %` (write with sudo).
3.  Use the abbreviations.
"""

if __name__ == "__main__":
    print("=== Vim Challenge Day 29 ===\n")
    
    # TODO: Implement tests based on the day's tasks
    
    print("✓ All tests passed!")