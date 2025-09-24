/*
Welcome to Day 21 of your Vim challenge!

GLOBAL COMMANDS - Master the powerful `:g` command for advanced text manipulation!
Today's focus: Using global commands to operate on multiple lines matching patterns

New commands for today:
    - `:g/pattern/command` - Execute command on lines matching pattern
    - `:g!/pattern/command` or `:v/pattern/command` - Execute on NON-matching lines
    - `:g/^$/d` - Delete all blank lines
    - `:g/TODO/p` - Print all lines containing TODO
    - `:g/pattern/m$` - Move matching lines to end of file
    - `:g/pattern/m0` - Move matching lines to beginning of file
    - `:g/pattern/t$` - Copy matching lines to end of file
    - `:g/pattern/s/old/new/g` - Substitute on matching lines only
    - `:g/pattern/normal @a` - Run macro 'a' on matching lines
    - `:g/pattern/d` - Delete all lines matching pattern
    - `:g/^#/normal I//` - Comment out all lines starting with #

REMINDERS - Keys from previous days:
    Day 20: Autocomplete & abbreviations - `Ctrl-n`, `Ctrl-x Ctrl-f`, `:ab`
    Day 19: Folding - `zf`, `za`, `zM`, `zR`
    Day 18: Macros - `qa`, `@a`, `@@`
    Day 17: Tabs - `:tabnew`, `gt`, `gT`
    Day 16: Windows - `:split`, `:vsplit`, `Ctrl-w w`
    Day 15: Buffers - `:ls`, `:bnext`, `:bprev`
    Day 14: Visual mastery - `gv`, `o`, `Ctrl-v`
    Day 13: Registers - `"ay`, `"ap`, `:reg`
    Day 12: Marks & jumps - `ma`, `'a`, `Ctrl-o`
    Day 11: Advanced text objects - `ip`, `ap`, `it`, `at`
    Day 10: Text objects intro - `iw`, `aw`, `i"`
    Day 9: Repeat & counts - `.`, `3w`, `2dd`
    Day 8: Search & replace - `/pattern`, `:%s/old/new/g`
    Day 7: Visual mode - `v`, `V`, `Ctrl-v`
    Day 6: Insert mode - `i`, `a`, `I`, `A`
    Day 5: Character search - `f`, `F`, `%`
    Day 4: Yank & undo - `yy`, `p`, `u`, `Ctrl-r`
    Day 3: Delete/change - `dw`, `cw`, `dd`
    Day 2: Navigation - `gg`, `G`, `H/M/L`
    Day 1: Movement basics - `w`, `b`, `e`, `0`, `$`

Your tasks for Day 21:
1. Delete all lines containing "REMOVE_ME" using `:g/REMOVE_ME/d`
2. Move all lines containing "MOVE_TO_END" to the end of file using `:g/MOVE_TO_END/m$`
3. Add "// TODO: Review" at the end of lines containing "NEEDS_REVIEW"
4. Delete all blank lines using `:g/^$/d`
5. Apply fixes to all lines matching specific patterns using `:v` (inverse)
6. Use global commands with substitution for targeted replacements

Example workflow:
    :g/pattern/d              # Delete matching lines
    :g/pattern/m$            # Move to end
    :g/pattern/normal A// TODO # Add text at end of line
    :v/keep/d                # Delete non-matching lines
    :g/fn/s/old/new/g        # Replace only in function lines
*/

use std::collections::HashMap;
use std::fs;
use std::io::{self, Write};

// Task 1: These lines should be removed with :g/REMOVE_ME/d
// REMOVE_ME: Deprecated function - no longer needed
fn old_function() {
    println!("This function is obsolete"); // REMOVE_ME
}
// REMOVE_ME: Another line that should be deleted

// Task 2: Lines below should be moved to end with :g/MOVE_TO_END/m$
struct Config { // MOVE_TO_END
    debug: bool,
    verbose: bool,
} // MOVE_TO_END

// Regular code that should stay in place
fn process_data(input: &str) -> Result<String, Box<dyn std::error::Error>> {
    let result = input.to_uppercase();
    Ok(result)
}

// Task 3: Add "// TODO: Review" to these lines with :g/NEEDS_REVIEW/normal A// TODO: Review
fn validate_input(data: &str) -> bool { // NEEDS_REVIEW
    !data.is_empty()
}

fn sanitize_input(input: &str) -> String { // NEEDS_REVIEW
    input.trim().to_string()
}

// Task 4: These blank lines should be removed with :g/^$/d

// There are intentional blank lines above and below

struct DataProcessor {
    cache: HashMap<String, String>,
    status: ProcessingStatus,
}

enum ProcessingStatus {
    Ready,
    Processing,
    Complete,
    Error(String),
}

impl DataProcessor {
    fn new() -> Self {
        DataProcessor {
            cache: HashMap::new(),
            status: ProcessingStatus::Ready,
        }
    }

    // Task 5: Fix these function signatures - change "i32" to "usize" in functions containing "index"
    fn get_item_by_index(&self, index: i32) -> Option<&String> {
        None
    }

    fn find_index(&self, key: &str) -> Option<i32> {
        None
    }

    fn remove_at_index(&mut self, index: i32) -> Option<String> {
        None
    }

    // Task 6: Add logging to all "pub fn" functions
    pub fn process(&mut self, input: &str) -> Result<String, String> {
        self.status = ProcessingStatus::Processing;
        match process_data(input) {
            Ok(result) => {
                self.status = ProcessingStatus::Complete;
                Ok(result)
            }
            Err(e) => {
                self.status = ProcessingStatus::Error(e.to_string());
                Err(e.to_string())
            }
        }
    }

    pub fn get_status(&self) -> &ProcessingStatus {
        &self.status
    }

    pub fn reset(&mut self) {
        self.status = ProcessingStatus::Ready;
        self.cache.clear();
    }
}

// Additional test functions for global commands practice
fn helper_function() {
    println!("Helper function");
}

fn utility_function() {
    println!("Utility function");
}

fn main() {
    println!("=== Vim Challenge Day 21: Global Commands ===\n");

    let mut tests_passed = 0;
    let total_tests = 6;

    // Test 1: Check if REMOVE_ME lines are deleted
    let source = include_str!("main.rs");
    let remove_me_count = source.lines().filter(|line| line.contains("REMOVE_ME")).count();
    let task1_passed = remove_me_count == 0;
    println!("{} Task 1: REMOVE_ME lines deleted", if task1_passed { "✓" } else { "✗" });
    if task1_passed { tests_passed += 1; }

    // Test 2: Check if MOVE_TO_END lines are at the end
    let lines: Vec<&str> = source.lines().collect();
    let move_to_end_lines: Vec<usize> = lines.iter()
        .enumerate()
        .filter(|(_, line)| line.contains("MOVE_TO_END"))
        .map(|(i, _)| i)
        .collect();

    let task2_passed = if move_to_end_lines.is_empty() {
        true // All moved to end (not visible in current context)
    } else {
        // Check if they're in the last portion of the file
        let file_length = lines.len();
        move_to_end_lines.iter().all(|&pos| pos > file_length * 3 / 4)
    };
    println!("{} Task 2: MOVE_TO_END lines moved to end", if task2_passed { "✓" } else { "✗" });
    if task2_passed { tests_passed += 1; }

    // Test 3: Check if TODO comments are added to NEEDS_REVIEW lines
    let needs_review_with_todo = source.lines()
        .filter(|line| line.contains("NEEDS_REVIEW"))
        .all(|line| line.contains("// TODO: Review"));
    println!("{} Task 3: TODO comments added to NEEDS_REVIEW lines",
             if needs_review_with_todo { "✓" } else { "✗" });
    if needs_review_with_todo { tests_passed += 1; }

    // Test 4: Check if blank lines are removed (simplified test)
    let consecutive_blanks = source.lines()
        .collect::<Vec<_>>()
        .windows(3)
        .any(|window| window.iter().all(|line| line.trim().is_empty()));
    let task4_passed = !consecutive_blanks;
    println!("{} Task 4: Excessive blank lines removed", if task4_passed { "✓" } else { "✗" });
    if task4_passed { tests_passed += 1; }

    // Test 5: Check if i32 was changed to usize in index functions
    let index_functions_fixed = source.lines()
        .filter(|line| line.contains("index") && (line.contains("fn ") || line.contains("-> Option")))
        .all(|line| !line.contains("i32"));
    println!("{} Task 5: Index function types fixed (i32 → usize)",
             if index_functions_fixed { "✓" } else { "✗" });
    if index_functions_fixed { tests_passed += 1; }

    // Test 6: Check if logging was added to pub fn functions
    let pub_functions_have_logging = source.lines()
        .enumerate()
        .filter(|(_, line)| line.trim_start().starts_with("pub fn"))
        .all(|(line_num, _)| {
            source.lines()
                .skip(line_num + 1)
                .take(5)
                .any(|line| line.contains("println!") || line.contains("log::"))
        });

    let task6_passed = pub_functions_have_logging;
    println!("{} Task 6: Logging added to public functions", if task6_passed { "✓" } else { "✗" });
    if task6_passed { tests_passed += 1; }

    println!("\n=== Global Commands Examples ===");
    println!("Commands you should practice:");
    println!("  :g/REMOVE_ME/d                    # Delete lines containing pattern");
    println!("  :g/MOVE_TO_END/m$                 # Move lines to end of file");
    println!("  :g/NEEDS_REVIEW/normal A// TODO: Review  # Add text to end of matching lines");
    println!("  :g/^$/d                           # Delete blank lines");
    println!("  :g/index.*fn/s/i32/usize/g       # Replace on matching lines only");
    println!("  :g/pub fn/normal o    println!(\"Entering function\");  # Add logging");
    println!("  :v/important/d                    # Delete non-important lines");
    println!("  :g/TODO/normal @q                 # Run macro q on TODO lines");

    let success = tests_passed == total_tests;

    if success {
        println!("\n✓ Excellent! You've mastered global commands!");
        println!("Global commands are one of Vim's most powerful features for batch operations.");
    } else {
        println!("\n✗ {} tasks remaining. Practice those global commands!",
                 total_tests - tests_passed);
        println!("Hint: :g works on ALL lines matching the pattern!");
    }

    // Create test data processor for demonstration
    let mut processor = DataProcessor::new();
    match processor.process("sample data") {
        Ok(result) => println!("\nProcessed: {}", result),
        Err(e) => println!("\nError: {}", e),
    }

    if success {
        std::process::exit(0);
    } else {
        std::process::exit(1);
    }
}
