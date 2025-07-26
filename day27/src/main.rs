/*
Welcome to Day 27 of your Vim challenge!

RANGES - Master Vim's powerful line addressing system!
Today's focus: Using ranges to operate on specific parts of your file

New commands for today:
    - `:10,20` - Lines 10 through 20
    - `:.,+5` - Current line plus next 5 lines
    - `:.,$` - Current line to end of file
    - `:1,.` - Beginning of file to current line
    - `:%` - Entire file (same as :1,$)
    - `:.-3,.+3` - 3 lines before to 3 lines after current
    - `:'a,'b` - From mark 'a' to mark 'b'
    - `:'<,'>` - Visual selection (auto-inserted)
    - `:?pattern?,/pattern/` - From previous to next pattern
    - `:/pattern1/,/pattern2/` - Between two patterns
    - `:10,20d` - Delete lines 10-20
    - `:.,+5y` - Yank current line plus next 5
    - `:10,20s/old/new/g` - Replace in lines 10-20
    - `:10,20w file.txt` - Write lines 10-20 to file
    - `:10,20!sort` - Sort lines 10-20
    - `:10,20>` - Indent lines 10-20
    - `:10,20<` - Unindent lines 10-20
    - `:10,20normal @a` - Run macro 'a' on lines 10-20
    - `:10,20g/pattern/d` - Delete matching lines in range
    - `:10,20v/pattern/d` - Delete non-matching lines

Advanced range patterns:
    - `:.;+5` - Current line to current+5 (semicolon)
    - `:0` - Before first line (for :0read)
    - `:.,.` - Just current line
    - `:$-5,$` - Last 6 lines of file
    - `:%normal A;` - Add semicolon to every line
    - `:'a,.` - From mark 'a' to current line
    - `:?function?,/^}/` - Function definition
    - `:\(` and `:\)` - Match parentheses (if enabled)

Range modifiers:
    - `:10,20p` - Print lines (default action)
    - `:10,20#` - Print with line numbers
    - `:10,20l` - Print with invisible chars
    - `:10,20move 30` - Move lines after line 30
    - `:10,20copy 30` - Copy lines after line 30
    - `:10,20t30` - Same as copy (shorter)

REMINDERS - Keys from previous days:
    Day 26: Tags - Navigate with ranges: `:10,20tag`
    Day 25: Jump list - Ranges create jump points
    Day 24: Sessions - Range commands in session
    Day 23: Undo tree - Undo range operations
    Day 22: Location list - `:10,20lgrep pattern`
    Day 21: Quickfix - Process error ranges
    Day 20: Argument list - `:10,20argdo`
    Day 19: Custom commands - Use ranges in commands
    Day 18: Autocommands - Trigger on range changes
    Day 17: Registers - Yank ranges to registers
    Day 16: Folding - `:10,20fold`
    Day 15: Command history - Find range commands
    Day 14: Autocomplete - Complete range addresses
    Day 13: Windows - Different ranges in windows
    Day 12: Global commands - `:g` is range-aware!
    Day 11: Marks - Use marks in ranges
    Day 10: Visual mode - Creates ranges
    Day 9: Text objects - Different from ranges
    Day 8: Macros - Apply to ranges
    Day 7: Replace - Always uses ranges
    Day 6: Visual mode - Auto-range creation
    Day 5: Search - Define ranges
    Day 4: Repeat - Can't repeat range commands
    Day 3: Yank/paste - Yank specific ranges
    Day 2: Delete - Delete ranges
    Day 1: Movement - Navigate to range bounds

Your tasks for Day 27:
1. Delete specific line ranges using various addressing methods
2. Apply operations to pattern-based ranges
3. Use relative ranges for context-aware editing
4. Combine ranges with other commands effectively
5. Master mark-based and search-based ranges

Scenario: You're refactoring code and need to operate on
specific sections without manually selecting each one.
*/

fn main() {
    println!("=== Vim Challenge Day 27 ===\n");
    
    // Task 1: Delete specific ranges
    test_range_deletion();
    
    // Task 2: Pattern-based ranges
    test_pattern_ranges();
    
    // Task 3: Relative ranges
    test_relative_ranges();
    
    // Task 4: Range combinations
    test_range_combinations();
    
    // Task 5: Advanced ranges
    test_advanced_ranges();
    
    // Run verification
    verify_ranges();
}

// Task 1: Lines to be deleted with different range methods
fn test_range_deletion() {
    println!("Testing range deletion...");
    
    // DELETE: This line contains the word DELETE
    let data = vec![1, 2, 3, 4, 5];
    
    // Lines 25-30: Delete this entire block with :25,30d
    // This is line 26
    // This is line 27
    // This is line 28
    // This is line 29
    // This is line 30
    
    // DELETE: Another line to delete
    for i in &data {
        process_item(*i);
    }
    // DELETE: Yet another deletion target
}

// Task 2: Pattern-based range operations
fn test_pattern_ranges() {
    println!("Testing pattern ranges...");
    
    // BEGIN_BLOCK
    let mut old_value = 10;
    let old_string = "old text";
    let old_data = vec!["old1", "old2", "old3"];
    // END_BLOCK
    
    // Use :/BEGIN_BLOCK/,/END_BLOCK/s/old/new/g
    
    // TODO: Fix this function
    // TODO: Add error handling
    // TODO: Optimize performance
    
    // Delete all TODO lines with :g/TODO/d
}

// Task 3: Relative range operations
fn test_relative_ranges() {
    println!("Testing relative ranges...");
    
    // Mark 'a' here - use ma
    let start_point = 100;
    
    // The next 5 lines should be indented with :.,.+4>
    let x = 1;
    let y = 2;
    let z = 3;
    let sum = x + y + z;
    println!("Sum: {}", sum);
    
    // Mark 'b' here - use mb
    let end_point = 200;
    
    // Copy from mark 'a' to 'b' with :'a,'bco.
}

// Task 4: Combining ranges with commands
fn test_range_combinations() {
    println!("Testing range combinations...");
    
    // Sort these items with visual selection or :83,92!sort
    let items = vec![
        "Zebra",
        "Apple",
        "Mango",
        "Banana",
        "Orange",
        "Grape",
        "Cherry",
        "Peach",
        "Kiwi",
        "Lemon",
    ];
    
    // Apply macro to each line with :83,92normal @a
    
    // Replace foo with bar in this section only
    let foo_1 = "foo value 1";  // foo comment
    let foo_2 = "foo value 2";  // foo comment
    let foo_3 = "foo value 3";  // foo comment
    // Use :.,.+2s/foo/bar/g
}

// Task 5: Advanced range techniques
fn test_advanced_ranges() {
    println!("Testing advanced ranges...");
    
    // Function to demonstrate range operations
    fn process_data(input: &[i32]) -> Vec<i32> {
        // Use :?fn?,/^}/s/old/new/g to replace in function
        let mut result = Vec::new();
        
        for &item in input {
            // Process each item
            let processed = item * 2;
            result.push(processed);
        }
        
        // Return the processed data
        result
    }
    
    // Another function for range practice
    fn calculate_stats(data: &[f64]) -> (f64, f64) {
        // Calculate mean and standard deviation
        let sum: f64 = data.iter().sum();
        let mean = sum / data.len() as f64;
        
        let variance = data.iter()
            .map(|&x| (x - mean).powi(2))
            .sum::<f64>() / data.len() as f64;
        
        (mean, variance.sqrt())
    }
}

// Helper function
fn process_item(item: i32) {
    println!("Processing: {}", item);
}

// Verification function
fn verify_ranges() {
    println!("\nRange Operation Tests:");
    let mut passed = 0;
    let total = 5;
    
    // Test 1: Line range deletion
    let range_deletion = false; // Would check if DELETE lines removed
    println!("{} Line range deletion", if range_deletion { "✓" } else { "✗" });
    if range_deletion { passed += 1; }
    
    // Test 2: Pattern ranges
    let pattern_ranges = false; // Would verify pattern-based operations
    println!("{} Pattern-based ranges", if pattern_ranges { "✓" } else { "✗" });
    if pattern_ranges { passed += 1; }
    
    // Test 3: Relative ranges
    let relative_ranges = false; // Would check :.,.+n operations
    println!("{} Relative range operations", if relative_ranges { "✓" } else { "✗" });
    if relative_ranges { passed += 1; }
    
    // Test 4: Range combinations
    let range_combos = true; // Placeholder
    println!("{} Range command combinations", if range_combos { "✓" } else { "✗" });
    if range_combos { passed += 1; }
    
    // Test 5: Advanced ranges
    let advanced_ranges = true; // Placeholder
    println!("{} Advanced range techniques", if advanced_ranges { "✓" } else { "✗" });
    if advanced_ranges { passed += 1; }
    
    if passed == total {
        println!("\n✓ All tests passed!");
    } else {
        println!("\n✗ {} tests failed. Keep practicing ranges!", total - passed);
    }
}