# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Repository Overview

This is the **30-Colorful-Days-of-Vim** challenge repository - a structured 30-day program for learning Vim/Neovim. Each day introduces new Vim commands with practical coding tasks in various languages (C, Rust, Node.js, Python, Lua, Java).

## Structure

- **Daily Challenges**: Each `dayX/` directory contains:
  - Main file to edit: `main.c`, `src/main.rs`, `main.js`, `main.py`, `main.lua`, or `Main.java`
  - `test.sh`: Executable test script that compiles/runs code and verifies output
  - Build files when needed: `Makefile` (C), `Cargo.toml` (Rust)
  - Legacy files from old format: `lesson.<ext>` and `solution.<ext>` (can be ignored)

## Common Commands

### Testing Daily Challenges
```bash
cd dayX
./test.sh
```

Test scripts compile/run the code and check if all tasks pass. They provide immediate feedback on what needs to be fixed.

### Running Code by Language

**C files:**
```bash
make && ./vim_dayX  # or just run ./test.sh
```

**Rust files:**
```bash
cargo run  # or just run ./test.sh
```

**JavaScript files:**
```bash
node main.js  # or just run ./test.sh
```

**Python files:**
```bash
python main.py  # or just run ./test.sh
```

**Lua files:**
```bash
lua main.lua  # or just run ./test.sh
```

**Java files:**
```bash
javac Main.java && java Main  # or just run ./test.sh
```

## Key Architectural Elements

1. **Progressive Learning Path**: Days 1-30 gradually introduce Vim commands from basic movement to advanced features like macros and global commands.

2. **Test-Driven Approach**: Each challenge includes executable tests that compile/run the code and verify the output matches expected results. Tests provide clear feedback on what needs to be fixed.

3. **Multi-Language Practice**: The challenge rotates through 6 programming languages to provide diverse editing contexts while learning Vim.

4. **Self-Contained Days**: Each day's challenge is independent, allowing learners to practice specific Vim skills without dependencies on previous days.

## Development Notes

- Tests are executable and check actual program output rather than file diffs
- Each language uses its standard build tools (make, cargo, etc.)
- No external dependencies beyond standard language runtimes and build tools
- Each main file contains commented instructions explaining the day's Vim commands and tasks
- The transformation from diff-based to test-based format provides better learning feedback