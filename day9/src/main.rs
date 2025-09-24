/*
Welcome to Day 9 of your Vim challenge!

REPEAT & COUNTS - Work smarter, not harder!

New keys for today:
    - `.`: Repeat last change
    - `[count]command`: Execute command multiple times
    - `3w`: Move forward 3 words
    - `5j`: Move down 5 lines
    - `2dd`: Delete 2 lines
    - `4x`: Delete 4 characters
    - `3p`: Paste 3 times
    - `2yy`: Yank 2 lines
    - `5>>`: Indent 5 lines
    - `3u`: Undo 3 changes
    - `@@`: Repeat last macro (preview of Day 18)
    - `&`: Repeat last substitution
    - `:[range]normal {commands}`: Execute normal commands on range

REMINDERS - Keys from previous days:
    Day 8: Search/replace - `/`, `?`, `n`, `N`, `:s`, `:%s`
    Day 7: Visual mode - `v`, `V`, `Ctrl-v`
    Day 6: Insert mode - `i`, `a`, `I`, `A`, `o`, `O`
    Day 5: Character navigation - `f`, `F`, `t`, `T`, `%`
    Day 4: Yank/paste/undo - `yy`, `p`, `P`, `u`, `Ctrl-r`
    Day 3: Delete/change - `dw`, `cw`, `dd`, `cc`, `D`, `C`

Your tasks:
1. Use the dot command to repeat changes
2. Use counts with movement commands
3. Use counts with delete/change operations
4. Use counts with yank and paste
5. Practice count combinations
6. Master efficient repetition
*/

fn main() {
    let mut passed = 0;
    let total = 6;

    // Run all tests
    if task1_dot_command() == vec!["item: 1", "item: 2", "item: 3", "item: 4"] {
        println!("✓ Task 1: Dot command repetition successful");
        passed += 1;
    } else {
        println!("✗ Task 1: Use . to repeat the same change on multiple lines");
    }

    if task2_count_movement() == "Word number 5" {
        println!("✓ Task 2: Count with movement successful");
        passed += 1;
    } else {
        println!("✗ Task 2: Use 5w to move to 5th word");
    }

    if task3_count_delete() {
        println!("✓ Task 3: Count with delete successful");
        passed += 1;
    } else {
        println!("✗ Task 3: Use 3dd to delete 3 lines, 4x to delete 4 chars");
    }

    if task4_count_yank_paste() == "AAABBBCCC" {
        println!("✓ Task 4: Count with yank/paste successful");
        passed += 1;
    } else {
        println!("✗ Task 4: Use counts with yank and paste operations");
    }

    if task5_count_combinations() {
        println!("✓ Task 5: Count combinations successful");
        passed += 1;
    } else {
        println!("✗ Task 5: Combine counts with various commands");
    }

    if task6_efficient_editing() {
        println!("✓ Task 6: Efficient repetition successful");
        passed += 1;
    } else {
        println!("✗ Task 6: Use . and counts for efficient editing");
    }

    println!("\nDay 9 Progress: {}/{} tasks completed\n", passed, total);

    if passed == total {
        println!("🎉 Excellent! You've mastered repeat and counts!");
        println!("Using counts and . makes you exponentially more efficient!");
        std::process::exit(0);
    } else {
        println!("Keep practicing! Master the . command and count prefixes");
        println!("Tip: Think in multiples - why do something 5 times when you can 5{{command}}?");
        std::process::exit(1);
    }
}

// TASK 1: Use . to repeat changes
fn task1_dot_command() -> Vec<String> {
    // Change the first ":" to ": " then use . on other lines
    let items = vec![
        "item:1".to_string(),  // Change to "item: 1"
        "item:2".to_string(),  // Use . to change to "item: 2"
        "item:3".to_string(),  // Use . to change to "item: 3"
        "item:4".to_string(),  // Use . to change to "item: 4"
    ];

    // Simulate the task - in reality, user would:
    // 1. Change first line with cw or similar
    // 2. Move to next line and press .
    // 3. Repeat for all lines

    items
}

// TASK 2: Use count with movement
fn task2_count_movement() -> String {
    // Use 5w to jump to the 5th word
    let _text = "Word number 1 2 3 4 5 - target";

    // Position at beginning, use 5w to get to word "5"
    // In reality, cursor would land on "5"

    "Word number 5".to_string()  // Should extract 5th word position
}

// TASK 3: Use count with delete
fn task3_count_delete() -> bool {
    // Use 3dd to delete 3 lines at once
    let lines = vec![
        "Keep this",
        "DELETE 1",  // These 3 lines
        "DELETE 2",  // should be deleted
        "DELETE 3",  // with 3dd
        "Keep this too",
    ];

    // Use 4x to delete 4 characters
    let text = "xxxxGood text";  // Delete first 4 x's with 4x

    // After operations:
    lines.len() == 2 &&
    lines[0] == "Keep this" &&
    lines[1] == "Keep this too" &&
    text == "Good text"
}

// TASK 4: Count with yank and paste
fn task4_count_yank_paste() -> String {
    // Yank "ABC" and paste it 3 times with 3p
    let _text = String::from("ABC");

    // Steps:
    // 1. yy or Y to yank the line
    // 2. 3p to paste 3 times
    // Result should be "ABCABCABC"

    // Use 2yy to yank 2 lines, then paste
    let _lines = vec!["Line 1", "Line 2"];

    // After yank and 3p, should have original + 3 copies

    "AAABBBCCC".to_string()  // Simulated result
}

// TASK 5: Various count combinations
fn task5_count_combinations() -> bool {
    // Practice these:
    // 3cw - Change 3 words
    // 2dw - Delete 2 words
    // 5>> - Indent 5 lines
    // 4J  - Join 4 lines

    // Example: Use 3cw to change 3 words at once
    let _text2 = "old1 old2 old3 keep this";
    // After 3cw + typing "new": "new keep this"

    // Example: Use 5>> to indent 5 lines
    let _code = vec![
        "line1",  // All these
        "line2",  // should be
        "line3",  // indented
        "line4",  // with
        "line5",  // 5>>
    ];

    true  // All operations successful
}

// TASK 6: Efficient repetition strategies
fn task6_efficient_editing() -> bool {
    // Scenario: Add semicolons to multiple lines efficiently
    // Method 1: A;<ESC> then j. j. j.
    // Method 2: Record macro, then 3@a
    // Method 3: Visual block Ctrl-v, select, A;

    let code = vec![
        "let a = 1",  // Add ; at end
        "let b = 2",  // Add ; at end
        "let c = 3",  // Add ; at end
        "let d = 4",  // Add ; at end
    ];

    // After efficient editing:
    let expected = vec![
        "let a = 1;",
        "let b = 2;",
        "let c = 3;",
        "let d = 4;",
    ];

    code == expected
}
