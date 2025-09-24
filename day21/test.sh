#!/bin/bash

echo "=== Day 21: Global Commands Challenge ==="
echo

# Compile and run the Rust program
echo "Compiling and running your code..."
cargo run --quiet 2>/dev/null

# Check exit code
if [ $? -eq 0 ]; then
    echo
    echo "✓ Code compiled and ran successfully!"
    echo
    echo "=== Global Commands Practice Guide ==="
    echo
    echo "To complete the challenges, use these Vim commands:"
    echo
    echo "Task 1 - Delete REMOVE_ME lines:"
    echo "  :g/REMOVE_ME/d"
    echo
    echo "Task 2 - Move MOVE_TO_END lines to end:"
    echo "  :g/MOVE_TO_END/m$"
    echo
    echo "Task 3 - Add TODO comments to NEEDS_REVIEW lines:"
    echo "  :g/NEEDS_REVIEW/normal A// TODO: Review"
    echo
    echo "Task 4 - Delete blank lines:"
    echo "  :g/^$/d"
    echo
    echo "Task 5 - Fix index function types (i32 to usize):"
    echo "  :g/index.*fn/s/i32/usize/g"
    echo "  or: :g/index/s/i32/usize/g"
    echo
    echo "Task 6 - Add logging to public functions:"
    echo "  :g/pub fn/normal o    println!(\"Entering function\");"
    echo
    echo "Advanced Examples:"
    echo "  :v/keep_this/d           # Delete all lines NOT containing 'keep_this'"
    echo "  :g/struct/normal @a      # Run macro 'a' on all struct lines"
    echo "  :g/TODO/m0               # Move all TODO lines to top of file"
    echo "  :g/debug/t$              # Copy all debug lines to end of file"
    echo
    echo "Remember: :g operates on ALL lines matching the pattern!"
    echo "Use :v (or :g!) for inverse matching (lines NOT containing pattern)"

    echo
    echo "After practicing, run './test.sh' again to see your progress!"
else
    echo
    echo "✗ Compilation failed. Check your syntax and try again."
    echo
    echo "Common fixes:"
    echo "- Make sure you haven't accidentally deleted necessary code"
    echo "- Check that function signatures are valid"
    echo "- Ensure struct fields are properly defined"
    echo
    echo "If you need to reset, you can restore from the git repository."
fi

echo
echo "=== Global Command Tips ==="
echo "• :g/pattern/d - Most common: delete matching lines"
echo "• :g/pattern/m$ - Move lines to end of file"
echo "• :g/pattern/normal commands - Run normal mode commands on matching lines"
echo "• :g/pattern/s/old/new/g - Substitute only on matching lines"
echo "• :v/pattern/command - Inverse: operate on NON-matching lines"
echo "• Combine with ranges: :10,50g/pattern/d - Only lines 10-50"