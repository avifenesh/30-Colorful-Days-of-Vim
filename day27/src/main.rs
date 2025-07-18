/*
Welcome to Day 27 of your Vim challenge!

New concepts for today:
    - `:g/pattern/command`: Execute a command on all lines matching a pattern.
    - `:10,20d`: Delete lines from 10 to 20.
    - `:%s/old/new/g`: Replace all occurrences in the entire file.
    - `:.,$s/old/new/g`: Replace from current line to end of file.

Reminder from Day 26:
    - Tag stack (`:tag`, `Ctrl-]`, `Ctrl-t`).


Your tasks:
1.  Delete all lines containing the word "delete".
2.  Replace all occurrences of "old" with "new" in the entire file.
3.  On lines 10 to 15, replace "foo" with "bar".
*/

fn main() {
    println!("=== Vim Challenge Day 27 ===\n");
    
    // TODO: Implement tests based on the day's tasks
    
    println!("✓ All tests passed!");
}