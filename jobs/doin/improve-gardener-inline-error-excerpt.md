In `scripts/jobs/gardener.sh` (around line 287), when writing the error journal entry for a failed handler, append the first 2048 bytes of the captured output inline in the entry body after the one-line summary. Currently the summary line mentions a blob SHA ("output captured as f8918c46ee84408cc9c2c6b640ebdd24460c7f54") but that blob is a loose git object written into the gardener's own per-worker `$GARDEN_STATE/gardener-N/journal` clone, never anchored under a ref, and therefore not pushed to origin and not visible to the mentor's clone on the same host (the mentor uses `$GARDEN_STATE/mentor/journal`). The cross-host note in `common.sh:931–950` documents this gap. A 2048-byte inline excerpt in the journal entry body is committed and pushed with the entry itself, making the immediate error self-diagnosing for the mentor without any cross-clone blob lookup. Trim the excerpt with `head -c 2048` and mark it with a `--- output excerpt ---` fence.

---
claim:
  host: g9
  gardener: 3
  claimed_at: 2026-06-30T13:54:47Z
