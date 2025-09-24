--[[
Welcome to Day 30 of your Vim challenge!

MAPPINGS - Create custom keyboard shortcuts to supercharge your workflow!
Today's focus: Mastering key mappings to customize Vim to your needs

New commands for today:
    - `:map` - List all mappings
    - `:map {lhs} {rhs}` - Map for normal, visual, operator modes
    - `:nmap {lhs} {rhs}` - Normal mode only
    - `:imap {lhs} {rhs}` - Insert mode only
    - `:vmap {lhs} {rhs}` - Visual mode only
    - `:cmap {lhs} {rhs}` - Command-line mode only
    - `:omap {lhs} {rhs}` - Operator-pending mode
    - `:noremap` - Non-recursive map (recommended!)
    - `:nnoremap` - Non-recursive normal map
    - `:inoremap` - Non-recursive insert map
    - `:vnoremap` - Non-recursive visual map
    - `:unmap {lhs}` - Remove mapping
    - `:mapclear` - Remove all mappings
    - `<leader>` - Leader key (usually \)
    - `<buffer>` - Buffer-local mapping
    - `<silent>` - Don't echo command
    - `<expr>` - Expression mapping
    - `:help {topic}` - Get help on any topic
    - `:help map-modes` - Mapping mode details
    - `:help key-notation` - Special key syntax

Special keys in mappings:
    - `<CR>` - Enter/Return
    - `<ESC>` - Escape
    - `<Space>` - Space bar
    - `<Tab>` - Tab key
    - `<BS>` - Backspace
    - `<Up>`, `<Down>`, `<Left>`, `<Right>` - Arrows
    - `<F1>` to `<F12>` - Function keys
    - `<C-a>` - Ctrl+a
    - `<M-a>` or `<A-a>` - Alt+a
    - `<S-a>` - Shift+a
    - `<leader>` - Leader key
    - `<bar>` - | character
    - `<Nop>` - No operation (disable key)

Common mapping patterns:
    - `nnoremap <leader>w :w<CR>` - Quick save
    - `nnoremap <leader>q :q<CR>` - Quick quit
    - `nnoremap <C-h> <C-w>h` - Window navigation
    - `inoremap jk <ESC>` - Easy escape
    - `vnoremap < <gv` - Keep selection after indent
    - `nnoremap Y y$` - Yank to end of line
    - `nnoremap n nzzzv` - Center after search
    - `nnoremap <leader>ev :e $MYVIMRC<CR>` - Edit vimrc
    - `nnoremap <leader>sv :source $MYVIMRC<CR>` - Source vimrc
    - `nnoremap <silent> <leader>h :noh<CR>` - Clear search

Advanced mapping techniques:
    - Expression mappings: `inoremap <expr> <C-j> pumvisible() ? "\<C-n>" : "\<C-j>"`
    - Conditional mappings: Use functions
    - Plugin mappings: `<Plug>PluginName`
    - Operator mappings: Create custom operators
    - Visual star: `vnoremap * y/\V<C-R>=escape(@",'/\')<CR><CR>`

Mapping best practices:
    - Use noremap variants to avoid recursion
    - Choose memorable key combinations
    - Don't override important defaults
    - Document your mappings
    - Use <leader> for personal mappings
    - Test mappings thoroughly
    - Group related mappings

REMINDERS - All 30 days combined:
    Day 1-5: Movement and editing - Map shortcuts!
    Day 6-10: Visual mode and marks - Visual mappings
    Day 11-15: Advanced features - Map workflows
    Day 16-20: Productivity tools - Integration maps
    Day 21-25: Navigation systems - Jump mappings
    Day 26-29: External tools - Command mappings
    Day 30: EVERYTHING! - Your personal Vim setup

Your tasks for Day 30 - The Grand Finale:
1. Create a comprehensive set of personal mappings
2. Explore help documentation for advanced features
3. Build mode-specific mappings for your workflow
4. Set up leader key combinations
5. Celebrate completing the 30-day challenge!

Scenario: You've learned 30 days of Vim commands. Now it's time
to create your personal Vim configuration with custom mappings!
--]]

print("=== Vim Challenge Day 30 - The Grand Finale! ===\n")

-- Task 1: Essential mappings for daily use
local essential_mappings = {
    -- File operations
    ["<leader>w"] = ":w<CR>",              -- Quick save
    ["<leader>q"] = ":q<CR>",              -- Quick quit
    ["<leader>x"] = ":x<CR>",              -- Save and quit
    ["<leader>Q"] = ":q!<CR>",             -- Force quit
    
    -- Window navigation (using Ctrl)
    ["<C-h>"] = "<C-w>h",                  -- Move left
    ["<C-j>"] = "<C-w>j",                  -- Move down
    ["<C-k>"] = "<C-w>k",                  -- Move up
    ["<C-l>"] = "<C-w>l",                  -- Move right
    
    -- Better navigation
    ["j"] = "gj",                          -- Move by display line
    ["k"] = "gk",                          -- Move by display line
    ["0"] = "g0",                          -- Start of display line
    ["$"] = "g$",                          -- End of display line
}

-- Task 2: Insert mode mappings
local insert_mappings = {
    ["jk"] = "<ESC>",                      -- Easy escape
    ["jj"] = "<ESC>",                      -- Alternative escape
    ["<C-s>"] = "<ESC>:w<CR>a",            -- Save in insert mode
    ["<C-l>"] = "<Right>",                 -- Move right in insert
    ["<C-a>"] = "<Home>",                  -- Beginning of line
    ["<C-e>"] = "<End>",                   -- End of line
}

-- Task 3: Visual mode enhancements
local visual_mappings = {
    ["<"] = "<gv",                         -- Indent and reselect
    [">"] = ">gv",                         -- Outdent and reselect
    ["*"] = "y/\\V<C-R>=escape(@\",'/\\')<CR><CR>", -- Search selection
    ["//"] = "y/\\V<C-R>=escape(@\",'/\\')<CR><CR>", -- Search selection
    ["<leader>y"] = "\"+y",                -- Copy to system clipboard
    ["<leader>p"] = "\"+p",                -- Paste from system clipboard
}

-- Task 4: Advanced productivity mappings
local productivity_mappings = {
    -- Quick fixes
    ["<leader>h"] = ":noh<CR>",            -- Clear search highlight
    ["<leader>sp"] = ":set spell!<CR>",    -- Toggle spell check
    ["<leader>ws"] = ":%s/\\s\\+$//e<CR>", -- Remove trailing whitespace
    
    -- File navigation
    ["<leader>e"] = ":Explore<CR>",        -- File explorer
    ["<leader>f"] = ":find ",              -- Find file
    ["<leader>b"] = ":ls<CR>:b",           -- Buffer list and switch
    
    -- Search improvements
    ["n"] = "nzzzv",                       -- Center after next
    ["N"] = "Nzzzv",                       -- Center after previous
    ["*"] = "*zzzv",                       -- Center after word search
    ["#"] = "#zzzv",                       -- Center after word search back
    
    -- Line operations
    ["<leader>o"] = "o<ESC>",              -- Add blank line below
    ["<leader>O"] = "O<ESC>",              -- Add blank line above
    ["<leader>d"] = "\"_d",                -- Delete to black hole
    ["<leader>c"] = "\"_c",                -- Change to black hole
}

-- Task 5: Command mode abbreviations (bonus!)
local command_mappings = {
    ["<C-a>"] = "<Home>",                  -- Beginning of command
    ["<C-e>"] = "<End>",                   -- End of command
    ["<C-p>"] = "<Up>",                    -- Previous command
    ["<C-n>"] = "<Down>",                  -- Next command
}

-- Example of help topics to explore
local help_topics = {
    "map-modes",        -- Understanding mapping modes
    "key-notation",     -- Special key syntax
    "map-special-chars", -- Special characters in mappings
    "map-which-keys",    -- Finding available keys
    "leader",           -- Leader key configuration
    "map-commands",      -- All mapping commands
    "user-manual",       -- Complete user guide
    "quickref",         -- Quick reference
}

-- Function to display mapping syntax
function show_mapping_examples()
    print("\nMapping Examples:")
    print("  nnoremap <leader>w :w<CR>         " .. "-- Normal mode, save file")
    print("  inoremap jk <ESC>                 " .. "-- Insert mode, escape")
    print("  vnoremap < <gv                    " .. "-- Visual mode, indent")
    print("  nnoremap <silent> <leader>h :noh<CR> -- Silent execution")
    print("  nnoremap <buffer> <leader>r :!lua %<CR> -- Buffer-local")
    print("  nnoremap <expr> j v:count ? 'j' : 'gj' -- Expression")
end

-- Comprehensive test function
function verify_mappings()
    local results = {}
    
    -- Test 1: Essential mappings created
    local essential_maps = false -- Would check :nmap output
    table.insert(results, {"Essential mappings configured", essential_maps})
    
    -- Test 2: Mode-specific mappings
    local mode_maps = false -- Would verify :imap, :vmap
    table.insert(results, {"Mode-specific mappings created", mode_maps})
    
    -- Test 3: Help explored
    local help_explored = false -- Would check :help history
    table.insert(results, {"Help documentation explored", help_explored})
    
    -- Test 4: Leader mappings
    local leader_maps = true -- Placeholder
    table.insert(results, {"Leader key combinations set", leader_maps})
    
    -- Test 5: Personal workflow
    local personal_workflow = true -- Placeholder
    table.insert(results, {"Personal workflow optimized", personal_workflow})
    
    return results
end

-- Display celebration message
function celebrate_completion()
    print("\n🎉 CONGRATULATIONS! 🎉")
    print("You've completed the 30-day Vim challenge!")
    print("\nYour Vim journey:")
    print("  Days 1-5:   Basic movement and editing")
    print("  Days 6-10:  Visual mode and text objects")
    print("  Days 11-15: Marks, windows, and automation")
    print("  Days 16-20: Advanced features and customization")
    print("  Days 21-25: Navigation and project management")
    print("  Days 26-30: External tools and personalization")
    print("\nYou are now a Vim power user! 🚀")
end

-- Show examples
show_mapping_examples()

-- Run tests
local test_results = verify_mappings()
local passed = 0

print("\nFinal Challenge Tests:")
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
    celebrate_completion()
else
    print(string.format("\n✗ %d tests failed. Complete your Vim mastery!", total - passed))
end