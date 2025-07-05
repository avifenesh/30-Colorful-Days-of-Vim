--[[
Welcome to Day 18 of your Vim challenge!

Today, we'll learn about auto-commands.

New concepts for today:
    - `:autocmd`: Define an auto-command.
    - `:autocmd BufWritePost *.lua echo "Lua file saved!"`: Example auto-command.

Reminder from Day 17:
    - Registers (`"a`, `"_`, `"0`).

Your tasks:
1.  Create an auto-command that prints "File opened!" every time a Lua file is opened.
2.  Create an auto-command that prints "File saved!" every time a Lua file is saved.

(Note: These tasks involve configuring Vim, not changing the file content. The test will check for the presence of these commands in your nvim config if you were to put them there, but for this exercise, just demonstrate you know how to use them in the command line.)
]]

print("Vim challenge Day 18!")
