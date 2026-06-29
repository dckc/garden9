In `scripts/jobs/library-source-drift-scan.sh`, line 95 currently does `die "no library/sources/README.md in the synced clone at $DIR (tip has no source index?)"`, which exits 1 and marks `garden-library-source-drift-scan` Failed on every tick whenever the journal2 tip carries no library corpus. On this instance the journal2 tip has no `library/` tree at all, so this fails deterministically forever. Change line 95 so an absent `library/sources/README.md` is a clean nothing-to-audit no-op: replace the `die` with a `log "no library/sources/README.md at origin/$JOURNAL_BRANCH tip; nothing to audit"` followed by `exit 0`. This matches the script's own existing discipline of skipping (not failing) when a local bare clone is missing (lines 172-179). Apply the identical hardening to the sibling `scripts/jobs/library-link-scan.sh:115` (`die "no library/ in the synced clone..."` → log + `exit 0`), since it shares the same antipattern and would fail the same way on a library-less journal. Update `scripts/jobs/test/library-source-drift-scan-test.sh` to cover the no-source-index case asserting exit 0 and no posted jobs. Failure signature: `FATAL: no library/sources/README.md in the synced clone at ... (tip has no source index?)`, exit 1.

---
claim:
  host: g9
  gardener: 1
  claimed_at: 2026-06-29T16:08:36Z
