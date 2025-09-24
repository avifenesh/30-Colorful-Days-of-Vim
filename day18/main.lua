--[[
Welcome to Day 18 of your Vim challenge!

MACROS - Record and replay your editing magic!
Today's focus: Using Vim's macro system to automate repetitive editing tasks

New commands for today:
    - `qa` - Start recording macro into register 'a'
    - `q` - Stop recording current macro
    - `@a` - Execute macro from register 'a'
    - `@@` - Repeat the last executed macro
    - `5@a` - Execute macro 'a' five times
    - `:reg a` - View contents of register 'a'
    - `"ap` - Paste macro contents (to edit)
    - `"ay` - Yank text into register 'a' (to create macro)
    - Recursive macros: Call `@a` within macro 'a'
    - Editing macros: Paste with `"ap`, edit, then yank back with `"ay`

REMINDERS - Keys from previous days:
    Day 17: Tabs - `:tabnew`, `gt`, `gT`, `:tabmove`
    Day 16: Windows - `:split`, `:vsplit`, `Ctrl-w w`
    Day 15: Buffers - `:ls`, `:b <name>`, `:bn/:bp`
    Day 14: Visual mode mastery - `gv`, `o` in visual mode
    Day 13: Registers - `"ay`, `"ap`, `"+y`
    Day 12: Marks & jumps - `ma`, `'a`, `Ctrl-o/Ctrl-i`
    Day 11: Advanced text objects - `ip`, `ap`, `it`, `at`
    Day 10: Text objects intro - `iw`, `aw`, `i"`, `a"`
    Day 9: Repeat & counts - `.`, `3w`, `2dd`
    Day 8: Search & replace - `/`, `n`, `:%s//g`

Your tasks for Day 18:
1. Record a macro to format function declarations
2. Use a macro to add logging statements to functions
3. Create a macro to convert variable names from camelCase to snake_case
4. Use recursive macros to process nested structures
5. Edit an existing macro to improve its functionality
6. Use macros with counts to process multiple items efficiently
--]]

print("=== Vim Challenge Day 18: Macros ===")
print()

-- Task 1: Format these function declarations (use a macro!)
-- Record a macro to add proper spacing, semicolons, and formatting
local unformattedFunction1=function(a,b)return a+b end
local unformattedFunction2=function(x,y,z)return x*y*z end
local unformattedFunction3=function(str)return string.upper(str)end
local unformattedFunction4=function(t)return #t end

-- Task 2: Add logging to these functions (use a macro!)
-- Each function should have: print("Calling function: <function_name>")
local function calculateSum(a, b)
    return a + b
end

local function findMaximum(a, b)
    if a > b then
        return a
    else
        return b
    end
end

local function processString(str)
    return string.gsub(str, "%s+", "_")
end

local function validateInput(input)
    return input ~= nil and input ~= ""
end

-- Task 3: Convert these camelCase variables to snake_case (use a macro!)
local userFirstName = "John"
local userLastName = "Doe"
local userEmailAddress = "john.doe@example.com"
local isUserActive = true
local userAccountBalance = 1000.50
local maxRetryCount = 5
local connectionTimeout = 30

-- Task 4: Process this nested structure (use recursive macro!)
local nested_data = {
    -- Each line needs "processed = true," added
    level1 = {
        item1 = "value1",
        item2 = "value2",
        level2 = {
            subitem1 = "subvalue1",
            subitem2 = "subvalue2",
            level3 = {
                deepitem1 = "deepvalue1",
                deepitem2 = "deepvalue2"
            }
        }
    }
}

-- Task 5: These comment blocks need consistent formatting
--This comment needs proper spacing
--   This one has too much indentation
--And this one is missing punctuation
--this one needs capitalization
--      excessive spaces here

-- Another block:
--inconsistent formatting here
--  Mixed indentation
--missing periods
--EXCESSIVE CAPS

-- Task 6: Use macros with counts to process these arrays efficiently
local numbers = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10}
-- Add " * 2" to each number to make them: 1 * 2, 2 * 2, etc.

local colors = {"red", "green", "blue", "yellow", "purple", "orange"}
-- Wrap each color in quotes and add "color_" prefix: "color_red", etc.

-- Macro demonstration functions
local MacroDemo = {}

function MacroDemo.demonstrate_basic_macro()
    print("=== Basic Macro Demonstration ===")
    print("1. Record a macro: qa (start recording into register 'a')")
    print("2. Perform your edits")
    print("3. Stop recording: q")
    print("4. Execute macro: @a")
    print("5. Repeat last macro: @@")
    print("6. Execute with count: 5@a")
    print()
end

function MacroDemo.demonstrate_macro_editing()
    print("=== Macro Editing Demonstration ===")
    print("1. View macro contents: :reg a")
    print("2. Paste macro to edit: \"ap")
    print("3. Edit the macro text")
    print("4. Yank back to register: \"ay")
    print("5. Test the edited macro: @a")
    print()
end

function MacroDemo.demonstrate_recursive_macro()
    print("=== Recursive Macro Demonstration ===")
    print("1. Record macro that calls itself: qa...@aq")
    print("2. The macro will repeat until it fails")
    print("3. Useful for processing lists/structures")
    print("4. Always include an exit condition!")
    print()
end

-- Task verification system
local TaskTracker = {}
TaskTracker.tasks = {
    "Format function declarations with proper spacing",
    "Add logging statements to functions",
    "Convert camelCase to snake_case variables",
    "Process nested structure with recursive macro",
    "Edit and improve existing macros",
    "Use macros with counts for bulk operations"
}
TaskTracker.completed = {}

function TaskTracker.complete_task(index, description)
    if index <= #TaskTracker.tasks then
        table.insert(TaskTracker.completed, index)
        print(string.format("✓ Task %d completed: %s", index, description or TaskTracker.tasks[index]))
    end
end

function TaskTracker.show_progress()
    print("\n=== Task Progress ===")
    for i, task in ipairs(TaskTracker.tasks) do
        local completed = false
        for _, comp in ipairs(TaskTracker.completed) do
            if comp == i then
                completed = true
                break
            end
        end
        local status = completed and "✓" or "○"
        print(string.format("%s Task %d: %s", status, i, task))
    end

    local completed_count = #TaskTracker.completed
    local total_count = #TaskTracker.tasks

    print(string.format("\nProgress: %d/%d tasks completed", completed_count, total_count))

    if completed_count == total_count then
        print("🎉 Congratulations! You've mastered Vim macros!")
        print("You can now automate complex editing tasks efficiently.")
    else
        print(string.format("%d tasks remaining. Keep practicing macros!", total_count - completed_count))
    end
end

-- Advanced macro examples
function MacroDemo.show_advanced_examples()
    print("=== Advanced Macro Examples ===")
    print()

    print("Example 1: Format function signature")
    print("Macro: I-- <Esc>A;<Esc>j")
    print("Result: Adds comment prefix and semicolon, moves to next line")
    print()

    print("Example 2: Create getter/setter pair")
    print("Macro: yiwIget<Esc>ea()<Space>{<Enter>return<Space>this.<Esc>pa;<Enter>}<Esc>")
    print("Result: Transforms property into getter method")
    print()

    print("Example 3: Wrap in console.log")
    print("Macro: Iconsole.log('<Esc>A');<Esc>")
    print("Result: Wraps line in console.log statement")
    print()
end

-- Run the macro demonstration
function run_macro_demo()
    print("Starting macro demonstration...")
    print()

    MacroDemo.demonstrate_basic_macro()
    MacroDemo.demonstrate_macro_editing()
    MacroDemo.demonstrate_recursive_macro()
    MacroDemo.show_advanced_examples()

    -- Simulate some task completions for demo
    TaskTracker.complete_task(1, "Function formatting (simulated)")
    TaskTracker.complete_task(2, "Logging statements (simulated)")

    TaskTracker.show_progress()

    print("\n=== Practice Instructions ===")
    print("1. Open this file: vim main.lua")
    print("2. Position cursor on first unformattedFunction")
    print("3. Record macro: qa")
    print("4. Format the function manually")
    print("5. Stop recording: q")
    print("6. Apply to other functions: @a")
    print("7. Use with counts: 3@a")
    print("8. Edit macros: \"ap, modify, \"ay")
    print("9. Create recursive macros for nested data")
    print()

    print("=== Macro Tips ===")
    print("- Start with simple, repeatable actions")
    print("- Use relative movements (j, k) not absolute")
    print("- Test macros on one item before bulk application")
    print("- Store useful macros in your vimrc")
    print("- Remember: macros are stored in registers!")
end

-- Run the demonstration
run_macro_demo()