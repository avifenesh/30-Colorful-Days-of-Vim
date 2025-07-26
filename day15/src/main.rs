/*
Welcome to Day 15 of your Vim challenge!

COMMAND HISTORY - Never lose a command again!
Today's focus: Using Vim's command and search history features

New commands for today:
    - `q:` - Open command-line window (edit previous commands)
    - `q/` - Open search history window
    - `q?` - Open backward search history window
    - `Ctrl-f` - Switch to command-line window from command mode
    - `:` then `↑/↓` - Navigate command history
    - `/` then `↑/↓` - Navigate search history
    - `Ctrl-p/Ctrl-n` - Previous/next in command history (in command mode)
    - `:history` - Show command history
    - `:history /` - Show search history
    - `@:` - Repeat last command
    - `@@` - Repeat last @: command

REMINDERS - Keys from previous days:
    Day 14: Autocomplete - `Ctrl-n`, `Ctrl-p`, `Ctrl-x Ctrl-l`
    Day 13: Windows - `:split`, `:vsplit`, `Ctrl-w w`
    Day 12: Global commands - `:g/pattern/d`, `:g/pattern/m$`
    Day 11: Marks - `ma`, `'a`
    Day 10: Visual mode practice
    Day 9: Text objects - `iw`, `aw`, `i"`, `a"`
    Day 8: Macros - `qa`, `@a`
    Day 7: Replace - `:%s/old/new/g`
    Day 6: Visual mode - `v`, `V`, `Ctrl-v`
    Day 5: Search - `/pattern`, `n`, `N`
    Day 4: Repeat - `.`, `3w`, `2dd`
    Day 3: Yank/paste - `yy`, `p`, `P`
    Day 2: Delete/change - `dw`, `cw`
    Day 1: Movement - `w`, `b`, `e`, `0`, `$`

Your tasks for Day 15:
1. Fix all the duplicate imports by using command history to repeat deletions
2. Use search history to find and fix all instances of incorrect error codes
3. Apply the same formatting fix to multiple similar lines using command repetition
4. Find and replace deprecated function names using command history
5. Use the command-line window to edit and execute a complex substitution
*/

use std::collections::HashMap;
use std::io::{self, Read, Write};
use std::fs::File;
// Task 1: These duplicate imports need to be removed
// use std::collections::HashMap;
// use std::io::{self, Read, Write};
// use std::fs::File;

// Error codes that need fixing
const ERROR_INVALID_INPUT: i32 = 100;
const ERROR_FILE_NOT_FOUND: i32 = 200;  // Task 2: Should be 404
const ERROR_PERMISSION_DENIED: i32 = 300;  // Task 2: Should be 403
const ERROR_INTERNAL_ERROR: i32 = 400;  // Task 2: Should be 500

// Task 3: These function signatures need consistent formatting
fn process_data(data: &str) -> Result<String, String> {println!("Processing"); Ok(data.to_string())}
fn validate_data(data: &str) -> Result<bool, String> {println!("Validating"); Ok(true)}
fn transform_data(data: &str) -> Result<String, String> {println!("Transforming"); Ok(data.to_uppercase())}

// Task 4: Deprecated function names that need updating
fn get_user_name() -> String {  // Should be get_username
    "user".to_string()
}

fn set_user_name(name: &str) {  // Should be set_username
    println!("Setting user name: {}", name);
}

fn check_user_name(name: &str) -> bool {  // Should be check_username
    !name.is_empty()
}

// Task 5: Complex pattern that needs fixing with command-line window editing
impl DataProcessor {
    fn process(&self) {
        // TODO: fix formatting - should be TODO(priority): fix formatting
        // TODO: add validation - should be TODO(priority): add validation
        // TODO: implement caching - should be TODO(priority): implement caching
    }
}

struct DataProcessor {
    cache: HashMap<String, String>,
}

fn main() {
    println!("=== Vim Challenge Day 15 ===\n");
    
    // Test if tasks are completed
    let mut tests_passed = true;
    
    // Test 1: Check if duplicate imports are removed
    let duplicate_imports_removed = false; // Would check actual file
    
    // Test 2: Check if error codes are fixed
    let error_codes_fixed = ERROR_FILE_NOT_FOUND == 404 && 
                           ERROR_PERMISSION_DENIED == 403 && 
                           ERROR_INTERNAL_ERROR == 500;
    
    // Test 3: Check if functions are formatted consistently
    let functions_formatted = false; // Would check formatting
    
    // Test 4: Check if deprecated names are updated
    let names_updated = false; // Would check function names
    
    // Test 5: Check if TODOs are formatted correctly
    let todos_formatted = false; // Would check TODO format
    
    // Display results
    println!("{} Duplicate imports removed", if duplicate_imports_removed { "✓" } else { "✗" });
    println!("{} Error codes fixed", if error_codes_fixed { "✓" } else { "✗" });
    println!("{} Functions formatted consistently", if functions_formatted { "✓" } else { "✗" });
    println!("{} Deprecated names updated", if names_updated { "✓" } else { "✗" });
    println!("{} TODO comments formatted", if todos_formatted { "✓" } else { "✗" });
    
    if duplicate_imports_removed && error_codes_fixed && functions_formatted && 
       names_updated && todos_formatted {
        println!("\n✓ All tests passed!");
    } else {
        println!("\n✗ Some tests failed. Keep practicing command history!");
        tests_passed = false;
    }
}