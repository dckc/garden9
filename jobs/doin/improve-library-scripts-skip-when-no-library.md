`scripts/jobs/library-link-scan.sh:115` and `scripts/jobs/regenerate-sections-index.sh:334` both `die` (nonzero, not the unit's `--expect 75` benign code) when the synced journal tip has no `library/` (resp. `library/sections`) tree — so on any instance that doesn't carry the reference-library corpus (host g9), `garden-library-link-scan.service` and `garden-regenerate-sections-index.service` are marked `Failed` on every timer fire. A tip with no library tree is a benign steady state for these services, not breakage. Change both scripts so that, after `sync_clone`, an absent library tree logs a single "no library on this tip; nothing to scan/regenerate" line and exits cleanly (exit 0, or the `--expect 75` benign code the units already tolerate) instead of `die`. The library-bearing leader still runs the real scan/regenerate; non-library hosts stop generating `Failed` units.

---
claim:
  host: g9
  gardener: 1
  claimed_at: 2026-06-29T15:52:36Z
