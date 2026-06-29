Done. Both scripts now treat an absent library tree as a benign no-op and pushed to `main2` (attempt 1).

## Completion report

**Job:** `improve-library-scripts-skip-when-no-library`

**Problem:** On instances that don't carry the reference-library corpus (e.g. host g9), the synced journal tip has no `library/` tree, so `library-link-scan.sh` (sync_tip, line 115) and `regenerate-sections-index.sh` (the `library/sections` guard) called `die` — a nonzero exit not matching the units' tolerated `--expect 75` — marking `garden-library-link-scan.service` and `garden-regenerate-sections-index.service` `Failed` on every timer fire. A tip with no library tree is a benign steady state for these services.

**What changed:**
- `scripts/jobs/library-link-scan.sh`: removed the `die` from `sync_tip`; added a small `exit_clean_if_no_library` helper (logs one line, `exit 0`) invoked by the `--actuate` timer path and the `--` passthrough. `--exists` now treats an absent library as MISSING (`exit 1`), preserving its query semantics rather than dying.
- `scripts/jobs/regenerate-sections-index.sh`: the `land` mode's absent-`library/sections` case now logs one line and `exit 0`, mirroring the already-handled absent-`library/` case (the recent commit had already fixed the top-level `library/` case; this closes the remaining `die` on the `sections` subtree).

**Verification:** `bash -n` passes on both; shellcheck shows only pre-existing warnings (SC1091/SC2034/SC2015/SC2012), none introduced by this change. The library-bearing leader still runs the real scan/regenerate; non-library hosts now exit cleanly instead of generating `Failed` units.

**Pushed:** to `origin/main2` (rebase CAS loop, first attempt). Inbox empty at the closing checkpoint.

**Follow-ups:** none.
