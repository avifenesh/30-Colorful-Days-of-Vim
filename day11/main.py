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

    return text


def task2_sentence_objects():
    """TASK 2: Use sentence text objects

    Use cis to change inner sentence
    Use das to delete entire sentence
    """

    paragraph = (
        "First sentence here. DELETE THIS SENTENCE. "
        "Third sentence stays. Another one remains."
    )

    return paragraph


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

    return html


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

    return {
        "code": code,
        "markdown": markdown,
    }


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

    multi_sentences = (
        "Delete one. Delete two. Delete three. "
        "Keep four. Keep five."
    )

    return {
        "multi_paragraphs": multi_paragraphs,
        "multi_sentences": multi_sentences,
    }


def task6_real_world_scenarios():
    """TASK 6: Real-world text object usage

    Refactor code, edit documentation, clean HTML
    """

    old_function = """
def old_function():
    # Use di{ to delete all and rewrite
    old_code = "replace"
    more_old = "all this"
    return "stuff"
    """

    markdown_doc = """
## Section 1
This paragraph needs to be completely rewritten.
Use dap to delete it all at once.

## Section 2
This sentence is wrong. This one is correct. Fix using dis.
    """

    html_cleanup = """
    <article>
        <header>Title</header>
        <p>Content to keep</p>
        <aside>DELETE THIS ENTIRE ASIDE</aside>
        <footer>Keep footer</footer>
    </article>
    """

    return {
        "old_function": old_function,
        "markdown_doc": markdown_doc,
        "html_cleanup": html_cleanup,
    }


# Test runner
def run_tests():
    passed = 0
    total = 6

    # Test 1
    result1 = task1_paragraph_objects()
    if (
        "DELETE THIS ENTIRE PARAGRAPH" not in result1
        and "Second paragraph starts here." not in result1
        and "This continues the second paragraph." not in result1
    ):
        print("✓ Task 1: Paragraph objects mastered")
        passed += 1
    else:
        print("✗ Task 1: Practice dip/dap to remove the middle paragraph entirely")

    # Test 2
    result2 = task2_sentence_objects()
    if "DELETE THIS SENTENCE" not in result2:
        print("✓ Task 2: Sentence objects mastered")
        passed += 1
    else:
        print("✗ Task 2: Use dis/das so the incorrect sentence disappears")

    # Test 3
    result3 = task3_html_tag_objects()
    if "DELETE THIS CONTENT" not in result3:
        print("✓ Task 3: HTML tag objects mastered")
        passed += 1
    else:
        print("✗ Task 3: Use cit/dat to clean up the second <p> tag")

    # Test 4
    result4 = task4_code_block_objects()
    code_cleared = "DELETE" not in result4["code"] and "BLOCK" not in result4["code"]
    markdown_cleared = "delete this code" not in result4["markdown"]
    if code_cleared and markdown_cleared:
        print("✓ Task 4: Code block objects mastered")
        passed += 1
    else:
        print("✗ Task 4: Use di{/da` to remove the placeholder content")

    # Test 5
    result5 = task5_count_combinations()
    paragraphs_clean = (
        "Paragraph 1" not in result5["multi_paragraphs"]
        and "Paragraph 2" not in result5["multi_paragraphs"]
        and "Paragraph 3" in result5["multi_paragraphs"]
        and "Paragraph 4" in result5["multi_paragraphs"]
    )
    sentences_clean = (
        "Delete one." not in result5["multi_sentences"]
        and "Delete two." not in result5["multi_sentences"]
        and "Delete three." not in result5["multi_sentences"]
        and "Keep four." in result5["multi_sentences"]
        and "Keep five." in result5["multi_sentences"]
    )
    if paragraphs_clean and sentences_clean:
        print("✓ Task 5: Count combinations mastered")
        passed += 1
    else:
        print("✗ Task 5: Combine counts with dip/dap and dis/das")

    # Test 6
    result6 = task6_real_world_scenarios()
    old_function_clean = "replace" not in result6["old_function"] and "more_old" not in result6["old_function"]
    markdown_clean = "completely rewritten." not in result6["markdown_doc"] and "This sentence is wrong." not in result6["markdown_doc"]
    html_clean = "DELETE THIS ENTIRE ASIDE" not in result6["html_cleanup"]
    if old_function_clean and markdown_clean and html_clean:
        print("✓ Task 6: Real-world scenarios mastered")
        passed += 1
    else:
        print("✗ Task 6: Clean up the scenario strings with the suggested text objects")

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
