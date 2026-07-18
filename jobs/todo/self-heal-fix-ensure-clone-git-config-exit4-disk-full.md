In `scripts/jobs/common.sh`, function `ensure_clone` (lines 541-552):
the two `git -C "$dir" config` calls exit 4 when the disk is full ("the file
could not be written" per git-config docs). Under `set -euo pipefail` that
propagates verbatim, making garden-gardener-scaler and any other service using
ensure_clone crash with rc=4 on a full disk — indistinguishable to self-heal
from a real bug. The fix: wrap both `git config` lines to catch rc=4 and treat
it the same as a network outage: log a WARN "disk full (git config exit 4)",
call `clone_unlock "$dir"`, and `exit "$GARDEN_OFFLINE_RC"` so systemd's
EX_TEMPFAIL path silently retries on the next timer tick rather than firing
self-heal. Mirroring the pattern already used in `sync_clone` for rc=124
(fetch timeout). No other git-config exit codes need this treatment; rc=4 is
the only one whose meaning is "I/O write failure" rather than "bad argument".
