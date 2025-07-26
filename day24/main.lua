--[[
Welcome to Day 24 of your Vim challenge!

SESSIONS - Save and restore your entire editing environment!
Today's focus: Mastering Vim's session management for complex projects

New commands for today:
    - `:mksession` - Save current session to Session.vim
    - `:mksession {file}` - Save session to specific file
    - `:mksession!` - Overwrite existing session file
    - `:source Session.vim` - Restore a session
    - `vim -S Session.vim` - Start Vim with a session
    - `:set sessionoptions` - Configure what to save
    - `:set sessionoptions=blank,buffers,curdir,folds,help,options,tabpages,winsize`
    - `:set sessionoptions+=localoptions` - Add local options
    - `:set sessionoptions-=options` - Remove global options
    - `:set sessionoptions?` - Check current settings

What sessions save:
    - Open files and buffers
    - Window layout and sizes
    - Current directory
    - Folds and marks (if configured)
    - Tab pages
    - Global variables (g:)
    - Options and mappings (if configured)

Common session workflows:
    - Project sessions: One session per project
    - Task sessions: Different layouts for different tasks
    - Debug sessions: Special setup for debugging
    - Review sessions: Layout for code reviews

REMINDERS - Keys from previous days:
    Day 23: Undo tree - `:wundo`, `:rundo` (save undo history too!)
    Day 22: Location list - Window-specific (saved in sessions)
    Day 21: Quickfix - Project errors (save with session)
    Day 20: Argument list - `:args` (saved in session)
    Day 19: Custom commands - Can be saved with sessionoptions
    Day 18: Autocommands - Create session auto-save!
    Day 17: Registers - Not saved (use viminfo)
    Day 16: Folding - Saved if in sessionoptions
    Day 15: Command history - Use with session commands
    Day 14: Autocomplete - Settings saved with session
    Day 13: Windows - Layout perfectly preserved!
    Day 12: Global commands - Use to process session files
    Day 11: Marks - Can be saved in session
    Day 10: Visual mode practice
    Day 9: Text objects - Use to edit session files
    Day 8: Macros - Not saved (use viminfo)
    Day 7: Replace - Fix paths in session files
    Day 6: Visual mode - Select session options
    Day 5: Search - Find in multiple session files
    Day 4: Repeat - Quickly create similar sessions
    Day 3: Yank/paste - Copy between sessions
    Day 2: Delete/change - Clean up session files
    Day 1: Movement - Navigate session files

Your tasks for Day 24:
1. Create a complex workspace with multiple windows and files
2. Save it as a project session
3. Create different task-specific sessions
4. Practice switching between sessions
5. Customize sessionoptions for your workflow

Scenario: You're working on a large project and need to quickly
switch between different aspects: coding, debugging, and documentation.
--]]

print("=== Vim Challenge Day 24 ===\n")

-- Task 1: Complex workspace setup
-- Create multiple files to work with
local project_files = {
    "main.lua",
    "config.lua",
    "utils.lua",
    "tests/test_main.lua",
    "docs/README.md"
}

-- Task 2: Different session types
local session_types = {
    coding = {
        -- Main coding session: vertical split with main and utils
        layout = "vsplit",
        files = {"main.lua", "utils.lua"},
        description = "Coding layout with main files side by side"
    },
    debugging = {
        -- Debug session: horizontal split with test and main
        layout = "split",
        files = {"tests/test_main.lua", "main.lua"},
        description = "Debug layout with tests above implementation"
    },
    documentation = {
        -- Doc session: single window with README
        layout = "single",
        files = {"docs/README.md"},
        description = "Documentation focus mode"
    },
    review = {
        -- Code review: multiple windows
        layout = "complex",
        files = {"main.lua", "utils.lua", "config.lua"},
        description = "Three-way split for code review"
    }
}

-- Task 3: Session options configuration
local recommended_options = {
    "blank",      -- Empty windows
    "buffers",    -- All buffers
    "curdir",     -- Current directory
    "folds",      -- Fold state
    "help",       -- Help windows
    "tabpages",   -- All tab pages
    "winsize",    -- Window sizes
    "terminal",   -- Terminal windows
    "localoptions" -- Buffer-local options
}

-- Task 4: Session management functions
function save_project_session(name)
    -- Example: Save current session with timestamp
    local timestamp = os.date("%Y%m%d_%H%M%S")
    local session_file = string.format("Session_%s_%s.vim", name, timestamp)
    -- Would execute: :mksession! session_file
    return session_file
end

function load_session_safely(session_file)
    -- Example: Check if session exists before loading
    -- Would execute: :source session_file
    return true
end

-- Task 5: Auto-save session setup
local autosave_config = [[
" Add to .vimrc for automatic session management
" Auto-save session on exit
autocmd VimLeave * mksession! ~/.vim/sessions/last-session.vim

" Quick session commands
command! SessionSave mksession! ~/.vim/sessions/current.vim
command! SessionLoad source ~/.vim/sessions/current.vim
command! SessionNew mksession! ~/.vim/sessions/new-%s.vim
]]

-- Test verification
function test_sessions()
    local results = {}
    
    -- Test 1: Complex workspace created
    local workspace_created = false -- Would check multiple windows/files
    table.insert(results, {"Complex workspace created", workspace_created})
    
    -- Test 2: Project session saved
    local session_saved = false -- Would check :mksession executed
    table.insert(results, {"Project session saved", session_saved})
    
    -- Test 3: Multiple session types
    local multiple_sessions = false -- Would verify different layouts
    table.insert(results, {"Task-specific sessions created", multiple_sessions})
    
    -- Test 4: Session switching
    local session_switching = false -- Would check :source usage
    table.insert(results, {"Sessions switched successfully", session_switching})
    
    -- Test 5: Custom sessionoptions
    local options_customized = true -- Placeholder
    table.insert(results, {"Sessionoptions customized", options_customized})
    
    return results
end

-- Display example session file content
print("Example session management:")
print("1. Create coding layout: :vsplit utils.lua")
print("2. Save session: :mksession coding-session.vim")
print("3. Create debug layout: :split tests/test_main.lua")
print("4. Save session: :mksession debug-session.vim")
print("5. Switch sessions: :source coding-session.vim\n")

-- Run tests
local test_results = test_sessions()
local passed = 0

for _, result in ipairs(test_results) do
    local test_name, test_passed = result[1], result[2]
    local status = test_passed and "✓" or "✗"
    print(status .. " " .. test_name)
    if test_passed then
        passed = passed + 1
    end
end

local total = #test_results
if passed == total then
    print("\n✓ All tests passed!")
else
    print(string.format("\n✗ %d tests failed. Keep practicing sessions!", total - passed))
end