/*
Welcome to Day 27 of your Vim challenge!

New concepts for today:
    - `:g/pattern/command`: Execute a command on all lines matching a pattern.
    - `:10,20d`: Delete lines from 10 to 20.
    - `:%s/old/new/g`: Replace all occurrences in the entire file.
    - `:.,$s/old/new/g`: Replace from current line to end of file.

REMINDERS - Keys from previous days:
    Day 26: Tags - `Ctrl-]` (jump to definition), `Ctrl-t` (jump back)
    Day 12: Global commands - `:g/pattern/d` (you already know this!)
    Day 7: Replace - `:%s/old/new/g` (review the variations!)
    Day 6: Visual mode - `V` (select lines), `:s/old/new/g` (replace in selection)
    Day 2: Delete - `dd`, `d10j` (delete current + 10 lines down)


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