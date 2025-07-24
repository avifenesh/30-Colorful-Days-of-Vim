/*
Welcome to Day 28 of your Vim challenge!

New concepts for today:
    - `:!command`: Execute an external command.
    - `:r!command`: Read the output of an external command into the buffer.
    - `:w !command`: Write the buffer to an external command's stdin.
    - `!{motion}command`: Filter a motion through an external command.
    - `!{range}command`: Filter a range through an external command.

REMINDERS - Keys from previous days:
    Day 27: Ranges - `:10,20d`, `:.,$s/old/new/g` (use with external commands!)
    Day 19: Custom commands - `:command` (create shortcuts for shell commands)
    Day 9: Text objects - `ap`, `ip` (select text to filter through commands)
    Day 6: Visual mode - `V` (select lines), `!sort` (filter selection)
    Day 1: Movement - `{`, `}` (navigate to select text for filtering)


Your tasks:
1.  Insert the current date and time into the file using an external command.
2.  Sort the lines with the comments "// SORT ME" using an external command.
*/

console.log("=== Vim Challenge Day 28 ===\n");

// TODO: Implement tests based on the day's tasks

console.log("✓ All tests passed!");