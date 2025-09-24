#!/bin/bash

# Test script for Day 15 - Buffer Management (Rust)

echo "Testing Day 15 - Buffer Management (Rust)..."

# Check if cargo is available
if ! command -v cargo &> /dev/null; then
    echo "Error: cargo (Rust) is not installed"
    exit 1
fi

# Run the Rust program
echo "Running cargo run..."
output=$(cargo run 2>&1)

# Display the output
echo "$output"

# Check if the program compiled and ran successfully
if [ $? -eq 0 ] && echo "$output" | grep -q "✓ All tests passed!"; then
    echo ""
    echo "SUCCESS: All Day 15 tests passed!"
    echo "Great work practicing buffer management! Key commands:"
    echo ""
    echo "Buffer Navigation:"
    echo "- :ls or :buffers - List all open buffers"
    echo "- :b <name> - Switch to buffer by name/number"
    echo "- :bn/:bp - Next/previous buffer"
    echo "- :bf/:bl - First/last buffer"
    echo "- Ctrl-^ - Toggle between current and alternate buffer"
    echo ""
    echo "Buffer Management:"
    echo "- :e <file> - Edit new file (creates new buffer)"
    echo "- :bd <name> - Close specific buffer"
    echo "- :enew - Create new empty buffer"
    echo "- :badd <file> - Add file to buffer list"
    echo ""
    echo "Buffer Windows:"
    echo "- :sb <name> - Split and switch to buffer"
    echo "- :vert sb <name> - Vertical split and switch"
    echo "- :ball - Open all buffers in windows"
    echo ""
    echo "Practice workflow:"
    echo "1. Use :e filename.rs to create separate module files"
    echo "2. Move code sections to appropriate buffers"
    echo "3. Navigate between buffers with :ls, :b, :bn/:bp"
    echo "4. Use Ctrl-^ to toggle between main buffers"
    echo "5. Close unused buffers with :bd when done"

    # Clean up
    cargo clean > /dev/null 2>&1
    exit 0
else
    echo ""
    echo "FAILURE: Program failed or tests didn't pass."
    echo "Focus on these buffer management techniques:"
    echo ""
    echo "File Organization:"
    echo "1. Create config.rs with :e config.rs"
    echo "2. Move Config struct there, add proper use statements"
    echo "3. Create user.rs, utils.rs, db.rs, tests.rs similarly"
    echo "4. Use :ls to see all open buffers"
    echo ""
    echo "Navigation Practice:"
    echo "- :b config to switch to config.rs buffer"
    echo "- :bn/:bp to cycle through all buffers"
    echo "- Ctrl-^ to toggle between current and previous"
    echo "- :bd unused_buffer to close buffers you don't need"
    echo ""
    echo "Multi-file Workflow:"
    echo "- :sb main to split and view main.rs"
    echo "- :vert sb config for side-by-side editing"
    echo "- Use :ball to see all buffers at once"

    # Clean up
    cargo clean > /dev/null 2>&1
    exit 1
fi