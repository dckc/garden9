In `scripts/jobs/clone-keeper.sh`, extend the GARDEN_TRACKED_CLONES line format
from `<dir>|<remote>|<branch>` to `<dir>|<remote>|<branch>|<url>` (4th field
optional, backward-compatible). In `keep_clone()`, replace the current
warn-and-return path for a missing directory (lines 78-81) with: if `<url>` is
non-empty, run `git clone --bare "$url" "$abs"` (bounded by
GARDEN_FETCH_TIMEOUT), log success or failure, and continue to the fetch step on
success; if `<url>` is empty, keep the existing WARN-and-skip behavior.

Update the default GARDEN_TRACKED_CLONES (line 47) to supply the URL:
  worktrees/endojs-endo.git|origin|master|https://github.com/endojs/endo.git

This turns a recurring every-30-minute WARN that requires manual intervention
(the endo bare clone was missing on host g9) into a self-healing re-clone,
matching the pattern already established for fetch failures (log + leave in
place) and fast-forward races (log + retry next tick).

<!-- garden-reaped: 2 -->

---
claim:
  host: g9
  gardener: 5
  claimed_at: 2026-06-30T04:06:47Z
