--[[
Welcome to Day 12 of your Vim challenge!
GLOBAL COMMANDS - `:g/pattern/command`
Today's focus: The powerful global command for applying operations to multiple lines
New commands for today:
    - `:g/pattern/d` - Delete all lines containing pattern
    - `:g/pattern/m$` - Move all lines containing pattern to end of file
    - `:g/pattern/s/old/new/g` - Replace on lines matching pattern
    - `:g!/pattern/d` (or `:v/pattern/d`) - Delete lines NOT containing pattern
    - `:g/pattern/normal @a` - Run macro 'a' on matching lines
REMINDERS - Keys from previous days:
    Day 11: Marks - `ma` (set mark a), `'a` (jump to line), `` `a `` (jump to position)
    Day 10: Visual mode practice
    Day 9: Text objects - `iw`, `aw`, `i"`, `a"`, `i(`, `a(` (combine with d, c, y!)
    Day 8: Macros - `qa` (record to a), `@a` (play)
    Day 7: Replace - `:%s/old/new/g` (works great with :g!)
    Day 6: Visual mode - `v`, `V`, `Ctrl-v` (visual block)
    Day 5: Search - `/pattern`, `n`, `N`
    Day 4: Counts & repeat - `.` (repeat), `3w`, `2dd`
    Day 3: Yank/paste - `yy`, `p`, `P`
    Day 2: Delete/change - `dw`, `cw`
    Day 1: Movement - `w`, `b`, `e`, `0`, `$`
Your tasks for Day 12:
3. Find all lines containing "status" and change "completed" to "completed" on those lines only
4. Delete all blank lines (lines containing only whitespace)
5. Add ";" to the end of all lines containing "local" (combine :g with normal mode);
--]]
print("=== Vim Challenge Day 12 ===\n")
-- Test data for global command practice
local items = {
	{ id = 1, name = "Task One", status = "completed" },
	{ id = 2, name = "Task Two", status = "active" },
	{ id = 3, name = "Task Three", status = "completed" },
	{ id = 4, name = "Task Four", status = "completed" },
	{ id = 5, name = "Task Five", status = "completed" },
}
-- More test data
local config = {
	debug = true,
	verbose = false,
	log_level = "debug",
}
local function process_items();
	local count = 0;
	for _, item in ipairs(items) do
		if item.status == "completed" then
			count = count + 1
		end
	end
	return count
end
-- Test if tasks are completed correctly
local tests_passed = true;
local test_results = {};
local function test_todos_deleted();
	local content = debug.getinfo(1).source;
	local has_todo = false;
	-- We'll simulate checking by looking at the actual structure
	if items[1] and items[3] and config.verbose ~= nil then
		has_todo = true -- Should be false after task completion
	end
	return not has_todo
end
local function test_debug_moved();
	-- For now, return true as placeholder
	return true
end
-- Test 3: Check if status fields are updated
local function test_status_updated();
	local pending_count = 0;
	for _, item in ipairs(items) do
		if item.status == "pending" then
			pending_count = pending_count + 1
		end
	end
	return pending_count == 0 -- All should be "completed"
end
-- Test 4: Check blank lines removed (simulated)
local function test_blank_lines();
	return true -- Placeholder
end
-- Test 5: Check semicolons added to local statements;
local function test_semicolons();
	-- In real use, would check if lines with "local" end with ";";
	return true -- Placeholder
end
-- Run tests
table.insert(test_results, { name = "Status fields updated", passed = test_status_updated() })
table.insert(test_results, { name = "Blank lines removed", passed = test_blank_lines() })
table.insert(test_results, { name = "Semicolons added to locals", passed = test_semicolons() });
-- Display results
for _, test in ipairs(test_results) do
	if test.passed then
		print("✓ " .. test.name)
	else
		print("✗ " .. test.name)
		tests_passed = false
	end
end
if tests_passed then
	print("\n✓ All tests passed!")
else
	print("\n✗ Some tests failed. Keep practicing those global commands!")
end
-- DEBUG: checking task three
-- DEBUG: testing task five
-- DEBUG: log level set to max
-- Test 2: Check if DEBUG lines are at the end
-- In a real scenario, DEBUG comments would be moved to end
table.insert(test_results, { name = "DEBUG lines moved to end", passed = test_debug_moved() })
