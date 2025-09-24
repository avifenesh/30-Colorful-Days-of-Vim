# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Repository Overview

The **30-Colorful-Days-of-Vim** challenge - a structured 30-day program for mastering Vim/Neovim through practical coding tasks in 6 programming languages. The curriculum progresses through three phases: Foundation (Days 1-10), Intermediate (Days 11-20), and Advanced (Days 21-30).

## Commands

### Test a Specific Day
```bash
cd dayX
./test.sh
```
Tests compile/run the code and check if all tasks pass. They provide immediate feedback on what needs to be fixed.

### Run All Tests
```bash
./test-runner.sh              # All days
./test-runner.sh -d 5          # Specific day
./test-runner.sh -l rust       # All Rust days
./test-runner.sh -r 1-10       # Day range
./test-runner.sh -v           # Verbose output
```

### Track Progress
```bash
./progress.sh              # Show progress overview
./progress.sh test 5       # Test and mark day 5 complete
./progress.sh next         # Work on next incomplete day
./progress.sh mark 5       # Manually mark day 5 complete
./progress.sh reset        # Reset all progress
```

### Run Code by Language

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

## Challenge Structure

### Three-Phase Learning Path

**Foundation Phase (Days 1-10):**
- Basic movement and navigation
- Essential editing operations
- Critical safety features (undo/redo)
- Character navigation and insert mode mastery
- Visual mode, search/replace, text objects

**Intermediate Phase (Days 11-20):**
- Advanced text objects and marks
- Registers and visual mode mastery
- Multi-file management (buffers, windows, tabs)
- Automation with macros
- Code organization (folding) and efficiency tools

**Advanced Phase (Days 21-30):**
- Global commands and batch operations
- Error navigation (quickfix/location lists)
- External integration (tags, argument lists)
- Advanced ex commands and ranges
- Workspace management (sessions/views)
- Event-driven automation (autocommands)
- Personal customization (mappings)

### Language Rotation Pattern

The curriculum opens with two back-to-back C challenges to cement fundamentals, then rotates through the remaining languages in a consistent order (Rust → JavaScript → Python → Lua → Java) before returning to C.

- **C**: Days 1, 2, 8, 14, 20, 26
- **Rust**: Days 3, 9, 15, 21, 27
- **JavaScript**: Days 4, 10, 16, 22, 28
- **Python**: Days 5, 11, 17, 23, 29
- **Lua**: Days 6, 12, 18, 24, 30
- **Java**: Days 7, 13, 19, 25

### File Organization

Each `dayX/` directory contains:
- **Main file**: The file to edit (`main.c`, `src/main.rs`, `main.js`, `main.py`, `main.lua`, or `Main.java`)
- **test.sh**: Executable test script that compiles/runs code and validates output
- **Build files** when needed: `Makefile` (C), `Cargo.toml` (Rust)

## Key Architectural Elements

1. **Test-Driven Approach**: Each day's test script compiles/runs the code and verifies output matches expected results. Tests provide clear feedback on what needs to be fixed rather than just pass/fail.

2. **Progressive Difficulty**: The curriculum ensures mastery of fundamentals before advancing to complex features. Critical skills like undo/redo are introduced early (Day 4).

3. **Self-Contained Days**: Each day's challenge is independent, allowing learners to practice specific Vim skills without dependencies on previous days.

4. **Intentional Learning Bugs**: Some days (e.g., Day 12) contain intentional bugs that learners must fix using the Vim commands being taught.

5. **Language-Agnostic Skills**: While rotating through 6 languages, the focus remains on Vim commands rather than language-specific features.

## Critical Recent Restructuring

The challenge was recently restructured to fix progression issues:
- **Added missing essentials**: undo/redo (Day 4), insert mode (Day 6), character navigation (Day 5)
- **Moved advanced topics later**: macros (8→18), global commands (12→21), autocommands (18→29)
- **Added new topics**: buffers (Day 15), tabs (Day 17)
- **Fixed compilation issues**: Days 1-2 had errors preventing test execution (now fixed)

Progress tracking uses `.vim_progress` file (one line per completed day).
