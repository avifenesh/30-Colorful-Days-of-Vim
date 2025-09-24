/*
Welcome to Day 3 of your Vim challenge!

DELETE & CHANGE - Master text modification operations!

New keys for today:
    - `dw`: Delete word (from cursor to start of next word)
    - `db`: Delete backward word
    - `de`: Delete to end of word
    - `d$` or `D`: Delete to end of line
    - `d0`: Delete to beginning of line
    - `dd`: Delete entire line
    - `cw`: Change word (delete and enter insert mode)
    - `cb`: Change backward word
    - `ce`: Change to end of word
    - `c$` or `C`: Change to end of line
    - `c0`: Change to beginning of line
    - `cc`: Change entire line
    - `x`: Delete character under cursor
    - `X`: Delete character before cursor

REMINDERS - Keys from previous days:
    Day 2: Advanced navigation - `gg`, `G`, `Ctrl-d/u`, `H/M/L`, `{/}`
    Day 1: Basic movement - `w`, `b`, `e`, `0`, `$`

Your tasks:
1. Delete unnecessary words using dw
2. Change incorrect values using cw
3. Delete entire lines using dd
4. Use D and C for line-end operations
5. Clean up code using various delete/change commands
*/

fn main() {
    // Run all tests
    let mut passed = 0;
    let total = 6;

    // Test each task
    if task1_delete_words() == "Clean code" {
        println!("✓ Task 1: Deleted extra words correctly");
        passed += 1;
    } else {
        println!("✗ Task 1: Delete 'very extra' words from the string");
    }

    if task2_change_values() == 42 {
        println!("✓ Task 2: Changed value correctly");
        passed += 1;
    } else {
        println!("✗ Task 2: Change 999 to 42");
    }

    if task3_delete_lines() == vec!["keep", "this", "also"] {
        println!("✓ Task 3: Deleted unnecessary lines");
        passed += 1;
    } else {
        println!("✗ Task 3: Delete the 'DELETE THIS LINE' entries");
    }

    if task4_line_end_ops() == "Start correct" {
        println!("✓ Task 4: Fixed line endings");
        passed += 1;
    } else {
        println!("✗ Task 4: Use D to delete ' wrong ending'");
    }

    if task5_change_entire_line() == "This line is perfect" {
        println!("✓ Task 5: Changed entire line");
        passed += 1;
    } else {
        println!("✗ Task 5: Use cc to change the entire wrong line");
    }

    if task6_cleanup() == "perfect" {
        println!("✓ Task 6: Code cleaned up");
        passed += 1;
    } else {
        println!("✗ Task 6: Clean up using x, X, and other commands");
    }

    println!("\nDay 3 Progress: {}/{} tasks completed\n", passed, total);

    if passed == total {
        println!("🎉 Excellent! You've mastered delete and change operations!");
        println!("You can now efficiently modify text with precision.");
        std::process::exit(0);
    } else {
        println!("Keep practicing! Master dw, cw, dd, cc, D, C, and x");
        println!("Tip: 'd' deletes, 'c' changes (delete + insert mode)");
        std::process::exit(1);
    }
}

// TASK 1: Delete extra words using dw
fn task1_delete_words() -> String {
    // Delete "very extra " to leave just "Clean code"
    let result = "Clean very extra code";
    return result.to_string();
}

// TASK 2: Change the wrong value using cw
fn task2_change_values() -> i32 {
    // Change 999 to 42
    let value = 999;
    return value;
}

// TASK 3: Delete entire lines using dd
fn task3_delete_lines() -> Vec<String> {
    let lines = vec![
        "keep".to_string(),
        "DELETE THIS LINE".to_string(),
        "this".to_string(),
        "DELETE THIS LINE".to_string(),
        "also".to_string(),
        "DELETE THIS LINE".to_string(),
    ];
    return lines;
}

// TASK 4: Use D (delete to end of line)
fn task4_line_end_ops() -> String {
    // Delete " wrong ending" from this string using D
    let text = "Start correct wrong ending";
    return text.to_string();
}

// TASK 5: Change entire line using cc
fn task5_change_entire_line() -> String {
    // Change this entire line to "This line is perfect"
    let line = "This entire line is completely wrong and needs to be replaced";
    return line.to_string();
}

// TASK 6: Clean up code using various commands
fn task6_cleanup() -> String {
    // Remove extra characters: xxxperfectyyy
    // Use x to delete 'xxx' and X (from end) to delete 'yyy'
    let code = "xxxperfectyyy";
    return code.to_string();
}