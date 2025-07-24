--[[
Welcome to Day 6 of your Vim challenge!

Today we'll focus on visual mode and indentation.

New keys for today:
    - `v`: Enter visual mode.
    - `V`: Enter visual line mode.
    - `Ctrl-v`: Enter visual block mode.
    - `>`: Indent the selected text.
    - `<`: Un-indent the selected text.
    - `=`: Auto-indent the selected text.

REMINDERS - Keys from previous days:
    Day 5: Search/replace - `/` (search forward), `?` (search backward), `n`/`N` (next/prev)
    Day 5: Replace - `:s/old/new/`, `:s/old/new/g`, `:%s/old/new/g`
    Day 4: Counts - `.` (repeat), `3w`, `2dd`, `3x`
    Day 3: Yank/paste - `yy`, `p`, `P`
    Day 2: Delete/change - `dw`, `cw`

Your tasks:
1. Fix the indentation in the format_output function
2. Properly indent the nested if statements in check_value
3. Fix the function definition alignment
--]]

-- Task 1: Fix indentation (should be 4 spaces)
function format_output(msg)
	return msg .. "!" -- This needs indentation
end

-- Task 2: Fix nested indentation
function check_value(x)
	if x > 0 then
		if x < 10 then -- This needs proper indentation
			return "single digit"
		else -- This too
			return "multiple digits"
		end -- And this
	end
	return "not positive"
end

-- Task 3: Fix function alignment
function misaligned_function() -- This should start at column 1
	return "fixed"
end

-- Test the functions
print("=== Vim Challenge Day 6 ===\n")

-- Test 1: Check if format_output is properly indented
local test1 = format_output("Hello")
if test1 == "Hello!" then
	print("✓ Task 1 passed! (but check indentation manually)")
else
	print("✗ Task 1 failed. Expected 'Hello!', got '" .. test1 .. "'")
end

-- Test 2: Check if check_value works correctly
local test2a = check_value(5)
local test2b = check_value(15)
local test2c = check_value(-5)

if test2a == "single digit" and test2b == "multiple digits" and test2c == "not positive" then
	print("✓ Task 2 passed! (but check indentation manually)")
else
	print("✗ Task 2 failed. Function not working correctly")
end

-- Test 3: Check if misaligned_function works
local test3 = misaligned_function()
if test3 == "fixed" then
	print("✓ Task 3 passed! (but check alignment manually)")
else
	print("✗ Task 3 failed.")
end

print("\nNote: This day focuses on indentation. Make sure to visually verify")
print("that all code is properly indented with consistent spacing!")
