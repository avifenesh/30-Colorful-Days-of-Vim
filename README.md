# 30-Colorful-Days-of-Vim

Welcome to the **30-Colorful-Days-of-Vim** challenge! This repository contains a structured 30-day program designed to help you become proficient in Vim (or Neovim).

Each day introduces new Vim commands and concepts, accompanied by a coding task in a different programming language (C, Rust, Node.js, Python, Lua, Java). Your goal is to complete the task using only the Vim commands learned up to that day. Each challenge includes executable tests that verify your solution by running the code and checking the output.

## Why this challenge?

- **Structured Learning:** A clear path to mastering Vim, broken down into manageable daily lessons.
- **Hands-on Practice:** Each day includes practical coding tasks to reinforce your learning.
- **Diverse Languages:** Work with C, Rust, Node.js, Python, Lua, and Java to broaden your experience.
- **Test-Driven:** Verify your progress with automated test scripts for each daily challenge.
- **Progressive Difficulty:** Starts with fundamental movements and edits, gradually introducing more advanced features like macros, windows, and global commands.

## Getting Started

1.  **Clone the repository:**
    ```bash
    git clone https://github.com/avifenesh/30-Colorful-Days-of-Vim.git
    cd 30-Colorful-Days-of-Vim
    ```

2.  **Navigate to a daily challenge:**
    Each day's challenge is in its own directory (e.g., `day1`, `day2`, etc.).
    ```bash
    cd day1
    ```

3.  **Open the main file:**
    Open the main file for the challenge in Neovim (or Vim):
    - C days: `nvim main.c`
    - Rust days: `nvim src/main.rs`
    - JavaScript days: `nvim main.js`
    - Python days: `nvim main.py`
    - Lua days: `nvim main.lua`
    - Java days: `nvim Main.java`

4.  **Follow the instructions:**
    The main file contains comments explaining the new Vim commands for the day and the tasks you need to complete. Each task involves editing code to make the tests pass.

5.  **Run the tests:**
    After completing the tasks, save the file and run the test script:
    ```bash
    ./test.sh
    ```
    
    The tests will compile/run your code and check if all tasks are completed correctly. You'll see:
    - ✓ for passed tasks
    - ✗ for failed tasks with hints about what's expected
    
    Keep practicing until all tests pass!

## Challenge Structure

Each `dayX` directory contains:

-   **Main file**: The file you'll edit (e.g., `main.c`, `src/main.rs`, `main.js`, etc.)
-   **Test script**: `test.sh` - Compiles and runs your code, checking if tasks are completed
-   **Build files**: Language-specific build files when needed:
    - C: `Makefile`
    - Rust: `Cargo.toml`
    - Java: Direct compilation

## Language Schedule

- **C**: Days 1, 2, 8, 14, 20, 26
- **Rust**: Days 3, 9, 15, 21, 27
- **JavaScript**: Days 4, 10, 16, 22, 28
- **Python**: Days 5, 11, 17, 23, 29
- **Lua**: Days 6, 12, 18, 24, 30
- **Java**: Days 7, 13, 19, 25

## Contributing

Feel free to contribute by:

-   Adding more advanced Vim challenges.
-   Improving existing lessons or tests.
-   Translating lessons into other languages.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
