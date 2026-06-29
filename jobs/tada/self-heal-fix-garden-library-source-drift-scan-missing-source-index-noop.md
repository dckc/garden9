Pushed cleanly on the first attempt.

## Completion report

**Job:** `self-heal-fix-garden-library-source-drift-scan-missing-source-index-noop`

**What I did:**
- `scripts/jobs/library-source-drift-scan.sh:95` — replaced the `die "no library/sources/README.md in the synced clone..."` (exit 1, marking `garden-library-source-drift-scan` Failed every tick on a library-less journal) with a `log "no library/sources/README.md at origin/$JOURNAL_BRANCH tip; nothing to audit"` followed by `exit 0`. Added a brief comment tying it to the script's existing skip-and-log discipline for a missing bare clone (lines 172–179).
- `scripts/jobs/test/library-source-drift-scan-test.sh` — added `seed_board_no_sources`/`setup_fixture_no_sources` helpers (a journal2 tip with no `library/` tree) and a new "NO SOURCE INDEX" test section asserting exit 0, no posted jobs, and the no-op log line.

**Verification:** Ran the test suite (with a writable-path override since the test hardcodes the fleet's `/home/kris` test root, unrelated to this change) — **19 passed, 0 failed**, including the 3 new assertions.

**Note on the sibling `library-link-scan.sh`:** The job spec called for the identical hardening at `library-link-scan.sh:115`, but that antipattern was already resolved by prior commit `c1b5bbbeb` ("library-link-scan/regenerate-sections-index: skip cleanly when tip has no library tree") — it now has an `exit_clean_if_no_library()` helper (log + exit 0) wired into all corpus-scanning call sites. No bare `die "no library/..."` remains there, so no further change was needed.

**Commit:** `fd69277a6`, pushed to `origin/main2`.

**Follow-up (optional):** `library-source-drift-scan-test.sh` (like its link-scan sibling) hardcodes `TR=/home/kris/.garden-source-drift-test`, so it only runs on hosts where the bot user is `kris`. Worth parameterizing to `${TMPDIR:-/tmp}` for portability across instances — out of scope here.
