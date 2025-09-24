--[[
Welcome to Day 24 of your Vim challenge!

ARGUMENT LIST & EXTERNAL COMMANDS - Master file management and external tools!
Today's focus: Efficiently managing multiple files and executing external commands

New commands for today:
    - `:args` - View current argument list
    - `:argadd {file}` - Add files to argument list
    - `:argdelete {pattern}` - Remove files from argument list
    - `:argdo {command}` - Execute command on all files in argument list
    - `:next` or `:n` - Edit next file in argument list
    - `:prev` or `:N` - Edit previous file in argument list
    - `:first` - Edit first file in argument list
    - `:last` - Edit last file in argument list
    - `!{command}` - Execute external command
    - `:r !{command}` - Read output of external command into buffer
    - `:%!{command}` - Filter entire buffer through external command
    - `:.!{command}` - Filter current line through external command
    - `:w !{command}` - Send buffer contents to external command
    - `:{range}!{command}` - Filter range through external command

Argument list patterns:
    - `:args *.lua` - Add all Lua files
    - `:args **/*.lua` - Add Lua files recursively
    - `:argadd src/*.lua` - Add files from src directory
    - `:argdelete *.bak` - Remove backup files from list

External command examples:
    - `:r !date` - Insert current date
    - `:r !ls -la` - Insert directory listing
    - `:%!sort` - Sort entire file
    - `:%!uniq` - Remove duplicate lines
    - `:w !wc -l` - Count lines in buffer
    - `:.!tr a-z A-Z` - Uppercase current line

REMINDERS - Keys from previous days:
    Day 23: Undo tree - `:wundo`, `:rundo`
    Day 22: Location list - Window-specific error lists
    Day 21: Quickfix - Project-wide error navigation
    Day 20: Buffers - `:bufdo` for all buffers
    Day 19: Custom commands - Create argument list shortcuts
    Day 18: Autocommands - Trigger on argument changes
    Day 17: Registers - Store command output
    Day 16: Folding - Organize large argument lists
    Day 15: Command history - Reuse external commands
    Day 14: Autocomplete - Complete filenames in arglist
    Day 13: Windows - Split while using arglist
    Day 12: Global commands - Process multiple files
    Day 11: Marks - Mark positions across files
    Day 10: Visual mode - Select text for external commands
    Day 9: Text objects - Edit in multiple files
    Day 8: Macros - Apply to argument list with :argdo
    Day 7: Replace - :argdo %s/old/new/g
    Day 6: Visual mode - Select for external filters
    Day 5: Search - Search across argument list
    Day 4: Repeat - Repeat commands across files
    Day 3: Yank/paste - Between files in arglist
    Day 2: Delete/change - Consistent edits across files
    Day 1: Movement - Navigate within and between files

Your tasks for Day 24:
1. Master argument list management for batch operations
2. Use external commands to process file contents
3. Filter text through external tools
4. Combine argument lists with external commands
5. Create efficient workflows for multiple files

Scenario: You're maintaining a large Lua project with multiple modules
and need to perform batch operations and integrate with external tools.
--]]

print("=== Vim Challenge Day 24: Argument List & External Commands ===\n")

-- Sample files for argument list practice
local sample_files = {
    "config.lua",
    "utils.lua",
    "parser.lua",
    "formatter.lua",
    "tests/test_config.lua",
    "tests/test_utils.lua"
}

-- Task 1: Argument list management
local function demonstrate_arglist()
    print("ARGUMENT LIST MANAGEMENT:")
    print("Current scenario: You have multiple Lua files to edit")
    print("Files to work with:")
    for i, file in ipairs(sample_files) do
        print(string.format("  %d. %s", i, file))
    end
    print()

    print("Commands to practice:")
    print("1. :args *.lua - Load all Lua files")
    print("2. :argadd tests/*.lua - Add test files")
    print("3. :args - View current argument list")
    print("4. :argdo %s/old_function/new_function/g - Replace in all files")
    print("5. :argdo update - Save all modified files")
    print("6. :next - Move to next file")
    print("7. :prev - Move to previous file")
    print()
end

-- Task 2: External commands for file operations
local function demonstrate_external_commands()
    print("EXTERNAL COMMANDS:")
    print("Integration with system tools:")
    print()

    -- Example external command outputs that would be inserted
    local sample_outputs = {
        date = "Tue Sep 24 16:30:00 UTC 2025",
        ls = "total 24\n-rw-r--r-- 1 user user 1234 Sep 24 16:30 main.lua",
        wc = "      150     500    3000 main.lua"
    }

    print("Commands to practice:")
    print("1. :r !date - Insert timestamp:")
    print("   Result: " .. sample_outputs.date)
    print()
    print("2. :r !ls -la - Insert directory listing:")
    print("   Result: " .. sample_outputs.ls)
    print()
    print("3. :w !wc -l - Count lines (output to command line)")
    print("   Result: " .. sample_outputs.wc)
    print()
end

-- Task 3: Text filtering examples
local function demonstrate_filtering()
    print("TEXT FILTERING:")
    print("Transform text using external tools:")
    print()

    local sample_text = {
        original = "hello world\nfoo bar\nhello again",
        sorted = "foo bar\nhello again\nhello world",
        uppercase = "HELLO WORLD\nFOO BAR\nHELLO AGAIN",
        unique = "hello world\nfoo bar\nhello again"
    }

    print("Original text:")
    print(sample_text.original)
    print()

    print("Commands to practice:")
    print("1. :%!sort - Sort all lines:")
    print(sample_text.sorted)
    print()

    print("2. :%!tr a-z A-Z - Convert to uppercase:")
    print(sample_text.uppercase)
    print()

    print("3. :%!uniq - Remove duplicates:")
    print(sample_text.unique)
    print()
end

-- Task 4: Batch operations combining arglist and external commands
local function demonstrate_batch_operations()
    print("BATCH OPERATIONS:")
    print("Combine argument lists with external commands:")
    print()

    print("Workflow examples:")
    print("1. Process multiple files:")
    print("   :args src/*.lua")
    print("   :argdo !lua -l luacheck %")
    print("   :argdo %!lua-format")
    print()

    print("2. Search and replace across files:")
    print("   :args **/*.lua")
    print("   :argdo %s/deprecated_func/new_func/g")
    print("   :argdo update")
    print()

    print("3. Generate documentation:")
    print("   :args *.lua")
    print("   :argdo r !echo \"-- File: %\"")
    print("   :argdo w >>combined_docs.lua")
    print()
end

-- Task 5: Advanced argument list and command combinations
local function demonstrate_advanced_usage()
    print("ADVANCED USAGE:")
    print("Complex workflows with argument lists:")
    print()

    print("1. Conditional operations:")
    print("   :args *.lua")
    print("   :argdo if search('TODO') | caddexpr expand('%') . ':' . line('.') . ':' . getline('.') | endif")
    print()

    print("2. Backup before batch operations:")
    print("   :argdo !cp % %.bak")
    print("   :argdo %s/old/new/g")
    print("   :argdo update")
    print()

    print("3. Format and lint pipeline:")
    print("   :args src/*.lua")
    print("   :argdo %!lua-format")
    print("   :argdo !luacheck %")
    print("   :argdo update")
    print()
end

-- Test functions for verification
local function test_arglist_understanding()
    -- Test understanding of argument list concepts
    local questions = {
        {
            question = "What command shows the current argument list?",
            correct_answer = ":args",
            user_answer = ":args" -- Simulated correct answer
        },
        {
            question = "How do you execute a command on all files in the argument list?",
            correct_answer = ":argdo",
            user_answer = ":argdo" -- Simulated correct answer
        },
        {
            question = "What's the difference between :argdo and :bufdo?",
            correct_answer = "argdo operates on argument list, bufdo on all buffers",
            user_answer = "argdo operates on argument list, bufdo on all buffers" -- Simulated correct answer
        }
    }

    local score = 0
    for _, q in ipairs(questions) do
        if q.user_answer == q.correct_answer or
           string.find(q.user_answer:lower(), q.correct_answer:lower()) then
            score = score + 1
        end
    end

    return score, #questions
end

local function test_external_commands()
    -- Test understanding of external commands
    local commands_understood = {
        read_command = true,  -- :r !command
        filter_command = true, -- :%!command
        send_to_command = true, -- :w !command
        line_filter = true -- :.!command
    }

    local total_commands = 0
    local understood_commands = 0

    for cmd, understood in pairs(commands_understood) do
        total_commands = total_commands + 1
        if understood then
            understood_commands = understood_commands + 1
        end
    end

    return understood_commands, total_commands
end

-- Run demonstrations
print("Day 24: Argument List & External Commands")
print("=" .. string.rep("=", 50))
print()

demonstrate_arglist()
demonstrate_external_commands()
demonstrate_filtering()
demonstrate_batch_operations()
demonstrate_advanced_usage()

-- Run tests
local arglist_score, arglist_total = test_arglist_understanding()
local external_score, external_total = test_external_commands()

print("\nTEST RESULTS:")
print("=" .. string.rep("=", 30))
print(string.format("Argument List Understanding: %d/%d", arglist_score, arglist_total))
print(string.format("External Commands: %d/%d", external_score, external_total))

local total_score = arglist_score + external_score
local total_possible = arglist_total + external_total

if total_score == total_possible then
    print("\n✓ Excellent! You've mastered argument lists and external commands!")
    print("Ready to efficiently manage multiple files and integrate with system tools.")
else
    print(string.format("\n⚠ Score: %d/%d - Keep practicing these powerful features!",
                       total_score, total_possible))
end

print("\nNext steps:")
print("- Practice :argdo with different commands")
print("- Experiment with text filtering using :%!")
print("- Create custom workflows combining arglist and external tools")
print("- Use :r !command to insert system information")