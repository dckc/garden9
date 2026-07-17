In `scripts/jobs/common.sh`, harden `ensure_clone` against a full-disk
condition. Currently when `git -C "$dir" config user.name ...` fails with exit
code 4 (git's "cannot write config file" code), `set -e` propagates it silently
and systemd retries in a tight loop with no useful log.

Fix: after each `git -C "$dir" config` call inside `ensure_clone`, catch a
non-zero exit, check whether the filesystem is out of space (e.g.
`df --output=avail "$dir" | awk 'NR==2{exit ($1+0 < 1024)}'`), and if so call
`log "FATAL: disk full on $(df --output=source "$dir" | tail -1) — free space
before garden services can write"` then `exit "$GARDEN_OFFLINE_RC"` (75 /
EX_TEMPFAIL). This turns a confusing exit-4 restart loop into a clearly labelled,
rate-limited transient skip that self-heals when the operator frees disk space.

Failure signature: `error: failed to write new configuration file
.../repo-watcher/journal/.git/config.lock` from a `git config` call inside
`ensure_clone` when the host filesystem is at 100% utilisation.
