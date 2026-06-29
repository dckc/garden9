Pushed cleanly as `3a17c87df`.

---

**Completion report**

Fixed the missing-corpus crash in `scripts/jobs/regenerate-topics-counts.sh`.

**What I did**
- Replaced the `die` at line 245 (`[ -d "$LIB/topics" ] || die "no library/topics in the synced clone at $DIR"`) in the `--land` block with a clean exit-0 skip, matching the local `tip $TIP:` log style of the adjacent "no library/ tree" and "already current; nothing to land" exit-0 paths:
  ```sh
  if [ ! -d "$LIB/topics" ]; then
    log "tip $TIP: journal carries no library/topics tree; nothing to regenerate"
    exit 0
  fi
  ```
- Left the `--check`/`--print` `locate_library` exit-2 setup-error paths untouched, as instructed (those remain a correct "pass --library" error for interactive use).
- Syntax-checked with `bash -n` (OK).

**What changed**
- One file, one commit (`3a17c87df`), pushed to `main2`. The `regenerate-topics-counts` service will now degrade a missing `library/topics` corpus to a quiet no-op instead of FATAL exit 1 on every tick.

**Note on the sibling**
- The job also asked to fix `regenerate-sections-index.sh`, but that file was **already fixed** at origin tip by commit `c1b5bbbeb` ("library-link-scan/regenerate-sections-index: skip cleanly when tip has no library tree") — it already exits 0 cleanly for both a missing `library/` tree (lines 335–338) and a missing `library/sections` subtree (lines 339–342), with no remaining `die`. No change was needed there. A `grep` confirmed line 245 of topics-counts was the only surviving `die "no library...` in either file.

**Follow-ups**
- None. Both regeneration services now no-op cleanly on instances (like `dckc`/this `g9` instance) whose `journal2` carries no `library/` corpus.
