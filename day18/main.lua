--[[
Welcome to Day 18 of your Vim challenge!

AUTOCOMMANDS - Automate your workflow!
Today's focus: Using Vim's autocommands to respond to events automatically

New commands for today:
    - `:autocmd {event} {pattern} {command}` - Create an autocommand
    - `:autocmd!` - Remove all autocommands
    - `:autocmd! {group}` - Remove autocommands in group
    - `:augroup {name}` - Define autocommand group
    - `:augroup END` - End autocommand group
    - Common events:
        - `BufRead/BufNewFile` - After reading/creating file
        - `BufWritePre/Post` - Before/after writing file
        - `BufEnter/BufLeave` - Entering/leaving buffer
        - `FileType` - When filetype is set
        - `InsertEnter/Leave` - Entering/leaving insert mode
        - `CursorHold/CursorHoldI` - Cursor idle in normal/insert
        - `VimEnter/VimLeave` - Starting/exiting Vim
        - `WinEnter/WinLeave` - Entering/leaving window
    - `:autocmd` - List all autocommands
    - `:autocmd {event}` - List autocommands for event

REMINDERS - Keys from previous days:
    Day 17: Registers - `"ay`, `"ap`, `"_d`, `"0p`
    Day 16: Folding - `zfap`, `za`, `zc`/`zo`
    Day 15: Command history - `q:`, `q/`
    Day 14: Autocomplete - `Ctrl-n`, `Ctrl-p`
    Day 13: Windows - `:split`, `:vsplit`
    Day 12: Global commands - `:g/pattern/command`
    Day 11: Marks - `ma`, `'a`
    Day 10: Visual mode practice
    Day 9: Text objects - `iw`, `aw`
    Day 8: Macros - `qa`, `@a`
    Day 7: Replace - `:%s/old/new/g`
    Day 6: Visual mode - `v`, `V`, `Ctrl-v`
    Day 5: Search - `/pattern`, `n`, `N`
    Day 4: Repeat - `.`, `3w`, `2dd`
    Day 3: Yank/paste - `yy`, `p`, `P`
    Day 2: Delete/change - `dw`, `cw`
    Day 1: Movement - `w`, `b`, `e`, `0`, `$`

Your tasks for Day 18:
1. Create autocommands to add file headers automatically
2. Set up automatic formatting on save for Lua files
3. Create an autocommand group for project-specific settings
4. Add autocommands to highlight trailing whitespace
5. Set up automatic backups before writing files

Example autocommands to create:
    :autocmd BufNewFile *.lua 0r ~/.vim/templates/lua.template
    :autocmd BufWritePre *.lua :%s/\s\+$//e
    :augroup MyProject
        :autocmd!
        :autocmd FileType lua setlocal shiftwidth=2
    :augroup END
--]]

print("=== Vim Challenge Day 18 ===\n")

-- Task 1: This file needs a proper header added automatically
-- File: main.lua
-- Author: [Your Name]
-- Date: [Current Date]
-- Description: Vim Day 18 Challenge

-- Task 2: These lines have trailing whitespace that should be removed on save    
local function process_data(input)    
    if not input then      
        return nil    
    end   
    return input:gsub("^%s+", ""):gsub("%s+$", "")     
end     

-- Task 3: Project-specific settings should be applied
-- Expected: shiftwidth=2, expandtab, textwidth=80
local config = {
        server = {  -- Inconsistent indentation
            host = "localhost",
                port = 8080  -- Should be 2-space indent
        },
    database = {
      url = "postgresql://localhost/mydb"  -- Mixed indentation
    }
}

-- Task 4: Highlight trailing whitespace (visual indicator needed)
local function calculate(a, b)   
    local sum = a + b    
    local product = a * b     
    return sum, product      
end       

-- Task 5: Backup system test
local important_data = {
    -- This data should be backed up before any save
    users = {"alice", "bob", "charlie"},
    scores = {100, 95, 87},
    timestamp = os.time()
}

-- Test functions
local function run_tests()
    local tests_passed = 0
    local total_tests = 5
    
    -- Test 1: Check if file header exists
    local has_header = false  -- Would check for header comment
    print(string.format("%s File header autocommand", has_header and "✓" or "✗"))
    if has_header then tests_passed = tests_passed + 1 end
    
    -- Test 2: Check if trailing whitespace is removed
    local no_trailing_spaces = false  -- Would check for trailing spaces
    print(string.format("%s Trailing whitespace removed", no_trailing_spaces and "✓" or "✗"))
    if no_trailing_spaces then tests_passed = tests_passed + 1 end
    
    -- Test 3: Check project settings
    local project_settings = false  -- Would check vim settings
    print(string.format("%s Project-specific settings applied", project_settings and "✓" or "✗"))
    if project_settings then tests_passed = tests_passed + 1 end
    
    -- Test 4: Check whitespace highlighting
    local whitespace_highlighted = true  -- Placeholder
    print(string.format("%s Trailing whitespace highlighting", whitespace_highlighted and "✓" or "✗"))
    if whitespace_highlighted then tests_passed = tests_passed + 1 end
    
    -- Test 5: Check backup system
    local backup_created = false  -- Would check for backup file
    print(string.format("%s Backup autocommand created", backup_created and "✓" or "✗"))
    if backup_created then tests_passed = tests_passed + 1 end
    
    if tests_passed == total_tests then
        print("\n✓ All tests passed!")
    else
        print(string.format("\n✗ %d tests failed. Keep practicing autocommands!", total_tests - tests_passed))
    end
end

run_tests()