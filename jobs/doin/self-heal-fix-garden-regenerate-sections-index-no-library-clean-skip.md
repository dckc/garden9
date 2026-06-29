In `scripts/jobs/regenerate-sections-index.sh` `--land` mode (around line 330–334), before the `[ -d "$LIB/sections" ] || die ...` check, distinguish "this journal carries no library at all" from "library present but malformed." After `sync_clone "$DIR"` sets `LIB="$DIR/library"`, if the `library/` directory itself is absent (`[ ! -d "$LIB" ]`), log a quiet skip (e.g. `log "tip $TIP: journal carries no library/ tree; nothing to regenerate"`) and `exit 0` — this is a legitimate no-op state on an instance not seeded with the library corpus, not a failure. Only keep the existing `die "no library/sections in the synced clone at $DIR"` (exit 1) for the genuine-corruption case where `library/` exists but `library/sections` does not. Apply the identical guard in the sibling `scripts/jobs/regenerate-topics-counts.sh` (around line 240, the `[ -d "$LIB/topics" ] || die "no library/topics ..."` check): if `library/` is absent, quiet `exit 0`; only die when `library/` exists but `library/topics` is missing. Failure signature being fixed: `FATAL: no library/sections in the synced clone at <state>/regenerate-sections-index/journal`, exit 1, flapping `garden-regenerate-sections-index.service` on a journal2 branch that has no `library/` tree (top-level only `.bulletin-trigger`, `README.md`, `msgs/`).

---
claim:
  host: g9
  gardener: 1
  claimed_at: 2026-06-29T15:38:39Z
