# Repository Guidelines

## Project Structure & Module Organization
- Root scripts: `test-runner.sh` (run many tests) and `progress.sh` (track/advance days). Progress persists in `.vim_progress`.
- Daily challenges: `dayX/` directories (e.g., `day1`, `day17`). Each contains:
  - Main file: `main.c`, `src/main.rs`, `main.js`, `main.py`, `main.lua`, or `Main.java`.
  - `test.sh`: compiles/runs and validates output; language build files as needed (`Makefile`, `Cargo.toml`).
- Do not introduce cross‑day dependencies; each `dayX/` is self‑contained.

## Build, Test, and Development Commands
- One day: `cd dayX && ./test.sh` — builds/runs and reports ✓/✗.
- All days: `./test-runner.sh` — runs days 1–30 with a summary.
- By filter:
  - Day: `./test-runner.sh -d 5`
  - Range: `./test-runner.sh -r 1-10`
  - Language: `./test-runner.sh -l rust`
- Track progress: `./progress.sh`, `./progress.sh next`, or `./progress.sh test 5`.

## Coding Style & Naming Conventions
- Preserve existing style in each language/day; avoid sweeping reformatting.
- Keep file names stable: `dayX/` + canonical main file (see above) and `test.sh`.
- Prefer minimal, standard‑library solutions; do not add external deps.
- Shell scripts: POSIX/bash, `set -e` patterns optional but keep output learner‑friendly.

## Testing Guidelines
- Source of truth is each `dayX/test.sh`; update tests only to clarify intent, not to mask failures.
- When adding a day, include deterministic checks with clear ✓/✗ output and helpful diffs/hints.
- Use `test-runner.sh -v` to surface error excerpts during triage.

## Commit & Pull Request Guidelines
- Messages: concise, imperative, scoped to a day or script.
  - Examples: `day 14: fix test for autocomplete`, `runner: add -l <lang> filter`.
- PRs: include summary, affected days/scripts, before/after behavior, and any screenshots of terminal output when helpful.
- Keep changes focused; avoid mixing lesson content, tests, and infrastructure in one PR.

## Security & Configuration Tips
- Keep `test.sh` sandboxed (no network calls, no destructive `rm -rf`).
- Ensure executables are `chmod +x` and paths are relative.
- Do not modify `.vim_progress` directly; use `progress.sh`.

