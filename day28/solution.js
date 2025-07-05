/*
Welcome to Day 28 of your Vim challenge!

Today, we'll learn about external commands.

New concepts for today:
    - `:!command`: Execute an external command.
    - `:r!command`: Read the output of an external command into the buffer.
    - `:w !command`: Write the buffer to an external command's stdin.
    - `!{motion}command`: Filter a motion through an external command.
    - `!{range}command`: Filter a range through an external command.

Reminder from Day 27:
    - Global command and ranges (`:g`, `:s`).

Your tasks:
1.  Insert the current date and time into the file using an external command.
2.  Sort the lines with the comments "// SORT ME" using an external command.
*/

console.log("Vim challenge Day 28!");

Fri Jul  5 12:34:56 PM UTC 2025

// SORT ME: a
// SORT ME: b
// SORT ME: c
