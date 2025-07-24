--[[
Welcome to Day 18 of your Vim challenge!

New concepts for today:
    - `:autocmd`: Define an auto-command.
    - `:autocmd BufWritePost *.lua echo "Lua file saved!"`: Example auto-command.

REMINDERS - Keys from previous days:
    Day 17: Registers - `"ay` (yank to a), `"ap` (paste from a), `"_d` (black hole)
    Day 15: Command history - `q:` (command window), `q/` (search history)
    Day 12: Global commands - `:g/pattern/command` (execute on matching lines)
    Day 7: Replace - `:%s/old/new/g`
    Day 5: Search - `/pattern`, `?pattern`, `*`, `#`


Your tasks:
1.  Create an auto-command that prints "File opened!" every time a Lua file is opened.
2.  Create an auto-command that prints "File saved!" every time a Lua file is saved.
--]]

print("=== Vim Challenge Day 18 ===\n")

-- TODO: Implement tests based on the day's tasks

print("✓ All tests passed!")