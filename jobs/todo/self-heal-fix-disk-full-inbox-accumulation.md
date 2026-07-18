**Root cause:** `/dev/mapper/pve-root` is 100% full (94G used, 0 available). `/home/dckc/.garden-state/inbox/` holds 159 entries totaling ~638M, each containing a `journal` worktree (entries like `dctinybrain-jesc24-pr8-*` and `deadmail-*`). These are message-bus inbox threads that are not being reclaimed after processing.

**What to investigate:**
1. Check `scripts/jobs/maintainer-watch.sh` and `scripts/jobs/gardener.sh` (or whichever script creates/drains entries under `$GARDEN_STATE/inbox/`) to find where cleanup (the `rm -rf` of a processed inbox entry) should happen but isn't.
2. Audit whether the `deadmail-*` entries in `$GARDEN_STATE/inbox/` are being left behind by `scripts/jobs/deadmail.sh` or similar — deadmail entries dating to 2026-06-29 confirm they predate the disk-full event.

**Immediate fix:**
- Identify inbox entries that have been fully processed (their matching journal entry is `done` / `archived`) and delete them. A one-liner like `ls ~/.garden-state/inbox/ | wc -l` confirms 159 candidates; the safe filter is entries whose `journal.lock` is stale (older than, say, 24h) meaning no active agent holds them.
- Add a post-drain `rm -rf "$GARDEN_STATE/inbox/$entry"` (or equivalent) in the consuming script so entries are removed after the drain step succeeds.

**Guard to add (secondary):** In `scripts/jobs/common.sh`'s `sync_clone` or at the top of `repo-watcher.sh`, add a disk-space pre-check (e.g., `df --output=avail "$GARDEN_STATE" | tail -1`) that logs a clear `FATAL: disk full` and exits with a distinct code before attempting git writes, making future occurrences immediately diagnosable without reading lockfile errors.
