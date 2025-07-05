--[[
Welcome to Day 6 of your Vim challenge!

Today we'll learn about indentation.

New keys for today:
    - `>>`: Indent the current line.
    - `<<`: Un-indent the current line.
    - `5>>`: Indent 5 lines.
    - `>` in visual mode: Indent the selection.
    - `<` in visual mode: Un-indent the selection.

Reminder from Day 5:
    - `v`, `V`, `ctrl-v` for visual mode.

Your tasks:
1.  Indent the line with the comment "-- TASK 1".
2.  Un-indent the line with the comment "-- TASK 2".
3.  Select the lines from "-- TASK 3" to the end of the function and indent them.
]]

    -- TASK 1: Indent this line.
-- TASK 2: Un-indent this line.

function my_function()
    -- TASK 3: one
    -- TASK 3: two
    -- TASK 3: three
end

print("Vim challenge Day 6!")
