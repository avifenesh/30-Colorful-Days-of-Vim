--[[
Welcome to Day 12 of your Vim challenge!

MARKS - Your precise navigation system!
Today's focus: Using Vim's marks for bookmarking and navigation

New commands for today:
    - `ma` - Set mark 'a' at cursor position (any letter a-z)
    - `'a` - Jump to line with mark 'a'
    - `` `a`` - Jump to exact position of mark 'a'
    - `mA` - Set global mark 'A' (works across files, A-Z)
    - `''` - Jump back to previous position (before last jump)
    - ``` - Jump to last edit location
    - `'.` - Jump to line of last edit
    - `:marks` - List all marks
    - `:marks abc` - Show specific marks
    - `:delmarks a` - Delete mark 'a'
    - `:delmarks!` - Delete all lowercase marks

REMINDERS - Keys from previous days:
    Day 11: Global commands - `:g/pattern/d`, `:v/pattern/d`
    Day 10: Visual mode practice - `v`, `V`, `Ctrl-v`
    Day 9: Text objects - `iw`, `aw`, `i"`, `a"`
    Day 8: Macros - `qa`, `@a`, `@@`
    Day 7: Replace - `:%s/old/new/g`
    Day 6: Visual mode - `v`, `V`, `Ctrl-v`
    Day 5: Search - `/pattern`, `n`, `N`
    Day 4: Repeat - `.`, `3w`, `2dd`
    Day 3: Yank/paste - `yy`, `p`, `P`
    Day 2: Delete/change - `dw`, `cw`
    Day 1: Movement - `w`, `b`, `e`, `0`, `$`

Your tasks for Day 12:
1. Set mark 'a' at the CONFIG table and fix the missing port value
2. Set mark 'b' at the database connection function and fix the connection string
3. Set mark 'c' at the validation function and fix the email validation
4. Jump between marks to verify all fixes work together
5. Use `` ``` to navigate between your last changes efficiently
6. Set mark 'r' at the RESULTS section and verify all tests pass

--]]

-- Configuration section
-- Task 1: Set mark 'a' here and fix the missing port value (should be 8080)
local CONFIG = {
    host = "localhost",
    -- port = nil,  -- FIXME: Add port number 8080
    database = "myapp",
    timeout = 30
}

-- Utility functions
local function log_message(message)
    print("[LOG] " .. message)
end

-- Task 2: Set mark 'b' at this function and fix the connection string
local function connect_to_database()
    -- FIXME: Fix the connection string - should use CONFIG.host and CONFIG.port
    local connection_string = string.format("host=%s;port=%s;db=%s",
                                           "wrong_host",  -- Should be CONFIG.host
                                           "9999",        -- Should be CONFIG.port
                                           CONFIG.database)

    log_message("Connecting with: " .. connection_string)
    return connection_string
end

-- Task 3: Set mark 'c' at this function and fix the email validation
local function validate_email(email)
    -- FIXME: This validation is wrong - it should check for '@' symbol
    if string.find(email, "#") then  -- Wrong symbol! Should be '@'
        return true
    end
    return false
end

local function validate_config()
    if not CONFIG.host then
        return false, "Host not configured"
    end
    if not CONFIG.port then
        return false, "Port not configured"
    end
    if not CONFIG.database then
        return false, "Database not configured"
    end
    return true, "Configuration valid"
end

local function process_user(user_data)
    if not validate_email(user_data.email) then
        return false, "Invalid email address"
    end

    log_message("Processing user: " .. user_data.name)
    return true, "User processed successfully"
end

-- Main application function
local function run_application()
    log_message("Starting application...")

    local config_valid, config_msg = validate_config()
    if not config_valid then
        log_message("Error: " .. config_msg)
        return false
    end

    local db_connection = connect_to_database()
    if not db_connection then
        log_message("Error: Database connection failed")
        return false
    end

    -- Test user processing
    local test_user = {
        name = "John Doe",
        email = "john@example.com"
    }

    local user_processed, user_msg = process_user(test_user)
    if not user_processed then
        log_message("Error: " .. user_msg)
        return false
    end

    log_message("Application completed successfully!")
    return true
end

-- Task 6: Set mark 'r' here for the RESULTS section
-- RESULTS: Test suite
print("=== Vim Challenge Day 12 ===")

-- Test 1: Configuration should be valid after fix
local config_valid, config_msg = validate_config()
if config_valid then
    print("✓ Configuration validation test passed")
else
    print("✗ Configuration validation test failed: " .. config_msg)
end

-- Test 2: Database connection string should be correct
local expected_connection = string.format("host=%s;port=%s;db=%s",
                                        CONFIG.host, CONFIG.port, CONFIG.database)
local actual_connection = connect_to_database()
if actual_connection == expected_connection then
    print("✓ Database connection test passed")
else
    print("✗ Database connection test failed")
    print("  Expected: " .. expected_connection)
    print("  Got: " .. actual_connection)
end

-- Test 3: Email validation should work correctly
local test_emails = {
    {email = "valid@example.com", should_pass = true},
    {email = "invalid.email.com", should_pass = false},
    {email = "another@test.org", should_pass = true}
}

local email_tests_passed = true
for _, test in ipairs(test_emails) do
    local result = validate_email(test.email)
    if result ~= test.should_pass then
        print("✗ Email validation failed for: " .. test.email)
        email_tests_passed = false
    end
end

if email_tests_passed then
    print("✓ Email validation tests passed")
end

-- Test 4: Complete application should run successfully
if run_application() then
    print("✓ Complete application test passed")
else
    print("✗ Complete application test failed")
end

-- Final summary
local all_functions_work = config_valid and
                          (actual_connection == expected_connection) and
                          email_tests_passed and
                          run_application()

if all_functions_work then
    print("\n✓ All tests passed! Great work with marks navigation!")
    print("Remember: Use marks to jump quickly between different parts of your code!")
else
    print("\n✗ Some tests failed. Use marks to navigate efficiently and fix the issues!")
    print("Set marks with 'ma', jump with 'a or `a, list with :marks")
end