/*
Welcome to Day 27 of your Vim challenge!

Today, we'll learn about the global command and ranges.

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
    println!("Vim challenge Day 27!");

    let new_value = 10;
    let another_new_value = 20;

    // Line 10: bar
    // Line 11: bar
    // Line 12: bar
    // Line 13: bar
    // Line 14: bar
    // Line 15: bar
}
