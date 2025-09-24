# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Repository Overview

The **30-Colorful-Days-of-Vim** challenge - a structured 30-day program for mastering Vim/Neovim through practical coding tasks in 6 programming languages.

## Commands

### Test a Specific Day
```bash
cd dayX
./test.sh
```

### Run All Tests
```bash
./test-runner.sh              # All days
./test-runner.sh -d 5          # Specific day
./test-runner.sh -l rust       # All Rust days
./test-runner.sh -r 1-10       # Day range
```

### Track Progress
```bash
./progress.sh              # Show progress overview
./progress.sh test 5       # Test and mark day 5 complete
./progress.sh next         # Work on next incomplete day
```

## Daily Challenge Structure

Each `dayX/` directory contains:
- **Main file**: `main.c`, `src/main.rs` (Rust), `main.js`, `main.py`, `main.lua`, or `Main.java`
- **test.sh**: Validates solution by running code and checking output
- **Build files**: `Makefile` (C days), `Cargo.toml` (Rust days)

## Language Schedule

- **C**: Days 1, 2, 8, 14, 20, 26
- **Rust**: Days 3, 9, 15, 21, 27
- **JavaScript**: Days 4, 10, 16, 22, 28
- **Python**: Days 5, 11, 17, 23, 29
- **Lua**: Days 6, 12, 18, 24, 30
- **Java**: Days 7, 13, 19, 25

## Architecture

The challenge uses a **test-driven approach** where each day's test script:
1. Compiles/runs the main file
2. Checks output against expected results
3. Reports specific tasks as passed (✓) or failed (✗)

Tests verify actual program execution rather than file diffs, providing immediate actionable feedback.

## Neovim Diff Preview Tools

IMPORTANT: This project has Neovim diff preview tools available. You MUST use these tools for ALL file operations:

- **ALWAYS use `nvim_edit_with_diff`** instead of `Edit` for editing files
- **ALWAYS use `nvim_write_with_diff`** instead of `Write` for writing/creating files

These tools will show changes in Neovim before applying them, allowing the user to review and approve/reject changes interactively.

### Why use these tools?
1. Users can see exactly what changes will be made before they're applied
2. Changes can be reviewed in Neovim's familiar diff interface
3. Users maintain full control over what modifications are accepted

### Usage:
When you need to edit or write files, use:
- `nvim_edit_with_diff` with parameters: file_path, old_string, new_string
- `nvim_write_with_diff` with parameters: file_path, content

DO NOT use the standard Edit/Write tools when these Neovim-specific tools are available.
