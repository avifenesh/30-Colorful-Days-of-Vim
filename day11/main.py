"""
Welcome to Day 11 of your Vim challenge!

ADVANCED TEXT OBJECTS - Master paragraph, sentence, and tag selection!

New text objects for today:
    - `ip`: Inner paragraph (paragraph content)
    - `ap`: A paragraph (including blank lines)
    - `is`: Inner sentence
    - `as`: A sentence (including trailing space)
    - `it`: Inner tag (HTML/XML content)
    - `at`: A tag (including tags themselves)
    - `i>` / `i<`: Inner angle brackets
    - `a>` / `a<`: A angle brackets
    - `i` ` `: Inner backticks
    - `a` ` `: A backticks

Advanced combinations:
    - `dip`: Delete inner paragraph
    - `cis`: Change inner sentence
    - `yat`: Yank entire HTML tag
    - `vi` ` `: Visual select inside backticks
    - `2dip`: Delete 2 paragraphs
    - `das`: Delete a sentence

Pro tips:
    - Paragraphs are separated by blank lines
    - Sentences end with . ! or ? followed by space/newline
    - Tags work with HTML/XML structure
    - Can be combined with counts

REMINDERS - Keys from previous days:
    Day 10: Basic text objects - `iw`, `aw`, `i"`, `a"`, `i(`, `a(`
    Day 9: Repeat/counts - `.`, `3w`, `2dd`
    Day 8: Search/replace - `/`, `?`, `:s`, `:%s`
    Day 7: Visual mode - `v`, `V`, `Ctrl-v`

Your tasks:
1. Master paragraph text objects
2. Work with sentence objects
3. Handle HTML/XML tags
4. Practice with code blocks
5. Combine with counts
6. Real-world scenarios
"""


def task1_paragraph_objects():
    """TASK 1: Use paragraph text objects

    Use dip to delete inner paragraph content
    Use dap to delete entire paragraph including blank lines
    """

    text = """
First paragraph here.
This is still part of the first paragraph.

Second paragraph starts here.
This continues the second paragraph.
DELETE THIS ENTIRE PARAGRAPH.

Third paragraph remains.
This should stay.
    """

    # After using dip on middle paragraph:
    # Blank lines remain

    # After using dap on middle paragraph:
    # Blank lines also deleted

    return "paragraph deleted"


def task2_sentence_objects():
    """TASK 2: Use sentence text objects

    Use cis to change inner sentence
    Use das to delete entire sentence
    """

    paragraph = (
        "First sentence here. DELETE THIS SENTENCE. "
        "Third sentence stays. Another one remains."
    )

    # Position on "DELETE THIS SENTENCE" and use dis or das
    # Result: "First sentence here.  Third sentence stays. Another one remains."

    return "sentence operations complete"


def task3_html_tag_objects():
    """TASK 3: Use tag text objects for HTML/XML

    Use cit to change inner tag content
    Use dat to delete entire tag
    """

    html = """
    <div>
        <p>Keep this paragraph</p>
        <p>DELETE THIS CONTENT</p>
        <span>Keep this too</span>
    </div>
    """

    # Position inside second <p> tag and use cit
    # Changes content but keeps tags

    # Use dat to delete entire tag including <p></p>

    return "tags handled"


def task4_code_block_objects():
    """TASK 4: Work with code blocks using braces and backticks

    Use di{ for inner block
    Use da` for backtick content
    """

    code = """
    function example() {
        // DELETE ALL THIS
        // BLOCK CONTENT
        // WITH di{
    }
    """

    markdown = "`delete this code` but keep this"

    # Use di{ inside function to clear it
    # Use da` to delete backticks and content

    return "blocks processed"


def task5_count_combinations():
    """TASK 5: Combine counts with advanced text objects

    Use 2dip to delete 2 paragraphs
    Use 3dis to delete 3 sentences
    """

    multi_paragraphs = """
Paragraph 1 content.
More of paragraph 1.

Paragraph 2 content.
More of paragraph 2.

Paragraph 3 content.
More of paragraph 3.

Paragraph 4 remains.
    """

    # Position at start and use 2dap to delete first 2 paragraphs

    multi_sentences = (
        "Delete one. Delete two. Delete three. "
        "Keep four. Keep five."
    )

    # Use 3dis to delete first 3 sentences

    return "count combinations work"


def task6_real_world_scenarios():
    """TASK 6: Real-world text object usage

    Refactor code, edit documentation, clean HTML
    """

    # Scenario 1: Refactor function body
    def old_function():
        # Use di{ to delete all and rewrite
        old_code = "replace"
        more_old = "all this"
        return "stuff"

    # Scenario 2: Edit markdown documentation
    markdown_doc = """
## Section 1
This paragraph needs to be completely rewritten.
Use dap to delete it all at once.

## Section 2
This sentence is wrong. This one is correct. Fix using dis.
    """

    # Scenario 3: Clean up HTML
    html_cleanup = """
    <article>
        <header>Title</header>
        <p>Content to keep</p>
        <aside>DELETE THIS ENTIRE ASIDE</aside>
        <footer>Keep footer</footer>
    </article>
    """

    return "real world complete"


# Test runner
def run_tests():
    passed = 0
    total = 6

    # Test 1
    result1 = task1_paragraph_objects()
    if result1 == "paragraph deleted":
        print("✓ Task 1: Paragraph objects mastered")
        passed += 1
    else:
        print("✗ Task 1: Practice dip and dap for paragraphs")

    # Test 2
    result2 = task2_sentence_objects()
    if result2 == "sentence operations complete":
        print("✓ Task 2: Sentence objects mastered")
        passed += 1
    else:
        print("✗ Task 2: Practice dis and das for sentences")

    # Test 3
    result3 = task3_html_tag_objects()
    if result3 == "tags handled":
        print("✓ Task 3: HTML tag objects mastered")
        passed += 1
    else:
        print("✗ Task 3: Practice dit and dat for HTML tags")

    # Test 4
    result4 = task4_code_block_objects()
    if result4 == "blocks processed":
        print("✓ Task 4: Code block objects mastered")
        passed += 1
    else:
        print("✗ Task 4: Practice with braces and backticks")

    # Test 5
    result5 = task5_count_combinations()
    if result5 == "count combinations work":
        print("✓ Task 5: Count combinations mastered")
        passed += 1
    else:
        print("✗ Task 5: Combine counts with text objects")

    # Test 6
    result6 = task6_real_world_scenarios()
    if result6 == "real world complete":
        print("✓ Task 6: Real-world scenarios mastered")
        passed += 1
    else:
        print("✗ Task 6: Apply text objects to real code")

    print(f"\nDay 11 Progress: {passed}/{total} tasks completed\n")

    if passed == total:
        print("🎉 Excellent! You've mastered advanced text objects!")
        print("You can now manipulate paragraphs, sentences, and tags with ease.")
        print("Text objects make you exponentially more efficient!")
        return 0
    else:
        print("Keep practicing! Master ip, ap, is, as, it, at")
        print("Tip: Think in semantic units - paragraphs, sentences, tags!")
        return 1


if __name__ == "__main__":
    import sys
    sys.exit(run_tests())