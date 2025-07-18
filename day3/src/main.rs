/*
Welcome to Day 3 of your Vim challenge!

Today, we'll focus on yanking (copying) and putting (pasting) text.

New keys for today:
    - `yy`: Yank (copy) the current line.
    - `p`: Put (paste) the yanked text after the cursor.
    - `P`: Put (paste) the yanked text before the cursor.
    - `yw`: Yank from the cursor to the beginning of the next word.
    - `yb`: Yank from the cursor to the beginning of the previous word.
    - `ye`: Yank from the cursor to the end of the current word.
    - `y$`: Yank from the cursor to the end of the line.
    - `y0`: Yank from the cursor to the beginning of the line.

Reminder from Day 2:
    - `dw`, `cw` for deleting and changing words.

Your tasks:
1. Copy the COPY_ME string and place it in the duplicate_line function
2. Append " Rust" to the end of the append_word function's return value
*/

fn main() {
    println!("=== Vim Challenge Day 3 ===\n");
    
    // Test 1: Duplicate line
    let result1 = duplicate_line();
    if result1.contains("COPY_ME: Yank this line") && result1.lines().count() == 2 {
        println!("✓ Task 1 passed!");
    } else {
        println!("✗ Task 1 failed. Expected two lines with 'COPY_ME: Yank this line'");
        println!("  Got: {:?}", result1);
    }
    
    // Test 2: Append word
    let result2 = append_word();
    if result2 == "This is a line of code Rust" {
        println!("✓ Task 2 passed!");
    } else {
        println!("✗ Task 2 failed. Expected: 'This is a line of code Rust'");
        println!("  Got: '{}'", result2);
    }
}

// TASK 1: Copy the COPY_ME line and duplicate it below
fn duplicate_line() -> String {
    // COPY_ME: Yank this line
    // PUT THE YANKED LINE HERE
    
    // Return both lines
    "COPY_ME: Yank this line".to_string()
}

// TASK 2: Yank the word "Rust" from the comment and append it to the return string
fn append_word() -> String {
    // This line contains the word Rust that you need to yank
    "This is a line of code".to_string()
}