/*
Welcome to Day 9 of your Vim challenge!

Today we'll learn about text objects - powerful ways to select and operate on text.

New concepts:
    - `iw`: Inner word (word without surrounding spaces)
    - `aw`: A word (word with surrounding spaces)
    - `i"`: Inner quotes (content inside quotes)
    - `a"`: A quotes (content including quotes)
    - `i(` or `ib`: Inner parentheses
    - `a(` or `ab`: A parentheses
    - `it`: Inner tag (HTML/XML)
    - `at`: A tag (HTML/XML)

Your tasks:
1. Delete the content inside the quotes but keep the quotes
2. Change the content inside the parentheses
3. Delete the entire function body but keep the function signature
*/

fn main() {
    println!("=== Vim Challenge Day 9 ===\n");
    
    // Task 1: Delete content inside quotes (use di")
    let message = "DELETE THIS TEXT";  // Should become ""
    
    // Task 2: Change content inside parentheses (use ci()
    let result = calculate(100 + 200);  // Change to just (42)
    
    // Task 3: Delete function body (use di{)
    let value = get_value();
    
    // Tests
    if message == "" {
        println!("✓ Task 1 passed!");
    } else {
        println!("✗ Task 1 failed. String should be empty");
    }
    
    if result == 42 {
        println!("✓ Task 2 passed!");
    } else {
        println!("✗ Task 2 failed. Expected 42, got {}", result);
    }
    
    if value == 0 {
        println!("✓ Task 3 passed!");
    } else {
        println!("✗ Task 3 failed. Function should return 0");
    }
}

fn calculate(x: i32) -> i32 {
    x
}

fn get_value() -> i32 {
    // DELETE EVERYTHING INSIDE THESE BRACES
    let x = 10;
    let y = 20;
    return x + y;
}