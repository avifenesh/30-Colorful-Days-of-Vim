--[[
Welcome to Day 6 of your Vim challenge!

INSERT MODE MASTERY - Efficient text entry and editing!

New keys for today:
    - `i`: Insert before cursor
    - `a`: Append after cursor
    - `I`: Insert at beginning of line (first non-blank)
    - `A`: Append at end of line
    - `o`: Open new line below
    - `O`: Open new line above
    - `Ctrl-w`: Delete word backward (in insert mode)
    - `Ctrl-u`: Delete to beginning of line (in insert mode)
    - `Ctrl-o`: Temporary normal mode (one command)
    - `Ctrl-a`: Insert last inserted text (. register)
    - `Ctrl-r{register}`: Insert from register
    - `Ctrl-t`: Indent current line (insert mode)
    - `Ctrl-d`: Unindent current line (insert mode)
    - `Ctrl-n`: Next autocomplete suggestion
    - `Ctrl-p`: Previous autocomplete suggestion
    - `ESC` or `Ctrl-[`: Exit insert mode

REMINDERS - Keys from previous days:
    Day 5: Character navigation - `f`, `F`, `t`, `T`, `%`, `;`, `,`
    Day 4: Yank/paste/undo - `yy`, `p`, `P`, `u`, `Ctrl-r`
    Day 3: Delete/change - `dw`, `cw`, `dd`, `cc`, `D`, `C`
    Day 2: Advanced navigation - `gg`, `G`, `Ctrl-d/u`, `H/M/L`
    Day 1: Basic movement - `w`, `b`, `e`, `0`, `$`

Your tasks:
1. Use I and A for efficient line editing
2. Use o and O to add new lines
3. Use Ctrl-w and Ctrl-u for corrections in insert mode
4. Use Ctrl-o for quick normal mode commands
5. Practice different insert positions
6. Master insert mode shortcuts
--]]

-- TASK 1: Use I and A to add prefix and suffix
function task1_line_positions()
    -- Use I to add "local " at the beginning
    -- Use A to add " -- done" at the end
    variable = "test"  -- Should become: local variable = "test" -- done

    -- Fix multiple lines using I and A
    lines = {
        "item1",  -- Add "- " prefix and ";" suffix
        "item2",  -- Add "- " prefix and ";" suffix
        "item3"   -- Add "- " prefix and ";" suffix
    }
    -- Expected: {"- item1;", "- item2;", "- item3;"}

    return lines
end

-- TASK 2: Use o and O to add new lines
function task2_new_lines()
    -- Use O to add a comment line above
    -- Should add: -- This function needs documentation

    -- Use o to add lines below
    local result = {}
    -- Add these lines using o:
    -- table.insert(result, "first")
    -- table.insert(result, "second")
    -- table.insert(result, "third")

    return result
end

-- TASK 3: Use Ctrl-w and Ctrl-u for corrections
function task3_insert_corrections()
    -- Type this wrong, then use Ctrl-w to delete word by word
    local wrong_text = "This is completely wrong text DELETE_ME"
    -- Fix to: "This is correct text"

    -- Type too much, then use Ctrl-u to clear and retype
    local long_line = "DELETE ALL OF THIS and start fresh"
    -- Fix to: "Fresh start"

    return {wrong_text, long_line}
end

-- TASK 4: Use Ctrl-o for temporary normal mode
function task4_temp_normal()
    -- While in insert mode, use Ctrl-o to:
    -- 1. Jump to end of line with $
    -- 2. Jump to beginning with 0
    -- 3. Delete a word with dw

    local text = "Start middle DELETE end"
    -- While typing, use Ctrl-o dw to delete "DELETE"
    -- Result: "Start middle end"

    return text
end

-- TASK 5: Practice different insert positions
function task5_insert_positions()
    -- Original line
    local code = "function()"

    -- Use different positions:
    -- i: insert before cursor -> "function(params)"
    -- a: append after cursor -> "function(params)"
    -- I: insert at line start -> "local function(params)"
    -- A: append at line end -> "local function(params) end"

    -- Final result:
    code = "function()"  -- Fix to: "local function(params) end"

    return code
end

-- TASK 6: Advanced insert mode
function task6_advanced_insert()
    -- Use Ctrl-t and Ctrl-d for indentation
    local indented = {
"first",      -- Indent this with Ctrl-t
    "second", -- This is already indented
        "third"   -- Unindent this with Ctrl-d
    }

    -- Use Ctrl-n for autocomplete
    -- Type "tab" and use Ctrl-n to complete to "table"
    local complete = "tab"  -- Complete to "table"

    return {indented, complete}
end

-- Test runner
function run_tests()
    local passed = 0
    local total = 6

    -- Test 1: Line positions
    local result1 = task1_line_positions()
    local expected1 = {"- item1;", "- item2;", "- item3;"}
    local test1_pass = true
    for i = 1, #expected1 do
        if result1[i] ~= expected1[i] then
            test1_pass = false
            break
        end
    end

    if test1_pass then
        print("✓ Task 1: I and A positioning successful")
        passed = passed + 1
    else
        print("✗ Task 1: Use I for line start, A for line end")
    end

    -- Test 2: New lines
    local result2 = task2_new_lines()
    if #result2 == 3 and result2[1] == "first" and
       result2[2] == "second" and result2[3] == "third" then
        print("✓ Task 2: o and O new lines successful")
        passed = passed + 1
    else
        print("✗ Task 2: Use o to open lines below, O for above")
    end

    -- Test 3: Insert corrections
    local result3 = task3_insert_corrections()
    if result3[1] == "This is correct text" and result3[2] == "Fresh start" then
        print("✓ Task 3: Ctrl-w and Ctrl-u corrections successful")
        passed = passed + 1
    else
        print("✗ Task 3: Use Ctrl-w to delete words, Ctrl-u to delete to line start")
    end

    -- Test 4: Temporary normal mode
    local result4 = task4_temp_normal()
    if result4 == "Start middle end" then
        print("✓ Task 4: Ctrl-o temporary normal mode successful")
        passed = passed + 1
    else
        print("✗ Task 4: Use Ctrl-o for quick normal mode commands")
    end

    -- Test 5: Insert positions
    local result5 = task5_insert_positions()
    if result5 == "local function(params) end" then
        print("✓ Task 5: Insert positions mastered")
        passed = passed + 1
    else
        print("✗ Task 5: Practice i, a, I, A for different positions")
    end

    -- Test 6: Advanced insert
    local result6 = task6_advanced_insert()
    local indented_ok = result6[1][1] == "    first" and
                        result6[1][2] == "    second" and
                        result6[1][3] == "    third"
    local complete_ok = result6[2] == "table"

    if indented_ok and complete_ok then
        print("✓ Task 6: Advanced insert mode successful")
        passed = passed + 1
    else
        print("✗ Task 6: Use Ctrl-t/d for indent, Ctrl-n for complete")
    end

    print(string.format("\nDay 6 Progress: %d/%d tasks completed\n", passed, total))

    if passed == total then
        print("🎉 Excellent! You've mastered insert mode!")
        print("You now know all the efficient ways to enter and edit text.")
        print("Remember: The goal is to stay in normal mode most of the time!")
        os.exit(0)
    else
        print("Keep practicing! Master i, a, I, A, o, O, and Ctrl shortcuts")
        print("Tip: Efficient insert mode usage = fewer keystrokes!")
        os.exit(1)
    end
end

-- Run the tests
run_tests()