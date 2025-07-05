--[[
Welcome to Day 12 of your Vim challenge!

Today, we'll learn about global commands.

New commands for today:
    - `:g/pattern/d`: Delete all lines containing "pattern".
    - `:g/pattern/m.`: Move all lines containing "pattern" to the end of the file.
    - `:g/pattern/s/old/new/g`: Replace "old" with "new" on all lines containing "pattern".

Reminder from Day 11:
    - `ma`, `` `a `` for marks.

Your tasks:
1.  Delete all lines containing the word "delete".
2.  Move all lines containing the word "move" to the end of the file.
3.  On lines containing "replace", replace the word "old" with "new".
]]

-- This line should be deleted.
-- This line should also be deleted.

-- This line should be moved.
-- Another line to move.

-- Replace old text here.
-- This line also has old text.

print("Vim challenge Day 12!")
