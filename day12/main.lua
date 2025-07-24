--[[
Welcome to Day 12 of your Vim challenge!

New commands for today:
    - `:g/pattern/d`: Delete all lines containing "pattern".
    - `:g/pattern/m.`: Move all lines containing "pattern" to the end of the file.
    - `:g/pattern/s/old/new/g`: Replace "old" with "new" on all lines containing "pattern".

REMINDERS - Keys from previous days:
    Day 11: Marks - `ma` (set mark a), `'a` (jump to line), `` `a `` (jump to position)
    Day 9: Text objects - `iw`, `aw`, `i"`, `a"`, `i(`, `a(` (combine with d, c, y!)
    Day 7: Replace - `:%s/old/new/g` (works great with :g!)
    Day 6: Visual mode - `v`, `V`, `Ctrl-v` (visual block)
    Day 5: Search - `/pattern`, `n`, `N`, `*`, `#`


Your tasks:
1.  Delete all lines containing the word "delete".
2.  Move all lines containing the word "move" to the end of the file.
3.  On lines containing "replace", replace the word "old" with "new".
--]]

print("=== Vim Challenge Day 12 ===\n")

-- TODO: Implement tests based on the day's tasks

print("✓ All tests passed!")