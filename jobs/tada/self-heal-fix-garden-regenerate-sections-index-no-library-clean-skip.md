Done. Pushed to main2 as `0e6cb28f3`.

**What I did:** Added a library-presence guard to both `--land` paths.

**What changed:**
- `scripts/jobs/regenerate-sections-index.sh` (~line 333): after `LIB="$DIR/library"`, hoisted the `TIP` computation up, then added `if [ ! -d "$LIB" ]; then log "tip $TIP: journal carries no library/ tree; nothing to regenerate"; exit 0; fi` before the existing `[ -d "$LIB/sections" ] || die ...` check.
- `scripts/jobs/regenerate-topics-counts.sh` (~line 239): identical guard before the `[ -d "$LIB/topics" ] || die ...` check.

This distinguishes "instance carries no library corpus" (legitimate no-op, exit 0) from "library present but malformed" (genuine corruption, retains the `die`/exit 1). Both scripts pass `bash -n`. This stops `garden-regenerate-sections-index.service` from flapping on a journal2 branch that has no `library/` tree.

**Follow-ups:** none. The sibling `die` cases are unchanged and still fire only when `library/` exists but its `sections`/`topics` subdir is missing.
