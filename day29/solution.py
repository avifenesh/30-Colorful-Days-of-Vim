
Welcome to Day 29 of your Vim challenge!

Today, we'll learn about abbreviations.

New concepts for today:
    - `:iabbrev <abbr> <word>`: Define an abbreviation in insert mode.
    - `:cabbrev <abbr> <word>`: Define an abbreviation in command-line mode.
    - `:unabbrev <abbr>`: Remove an abbreviation.
    - `:abclear`: Clear all abbreviations.

Reminder from Day 28:
    - External commands (`:!`, `:r!`, `:w!`).

Your tasks:
1.  Create an insert mode abbreviation `sig` that expands to your signature (e.g., "John Doe\nSoftware Engineer").
2.  Create a command-line abbreviation `W` that expands to `w !sudo tee %` (write with sudo).
3.  Use the abbreviations.


print("Vim challenge Day 29!")
