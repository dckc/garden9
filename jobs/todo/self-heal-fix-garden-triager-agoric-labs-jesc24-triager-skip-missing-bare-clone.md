In `scripts/jobs/triager.sh` line 32, change the hard `die` on a missing bare clone to a clean skip:

  Before:
    [ -d "$BARE" ] || die "no bare clone at $BARE (clone the repo first)"

  After:
    [ -d "$BARE" ] || { log "no bare clone at $BARE; skipping until cloned"; exit 0; }

Failure signature: `garden-triager@agoric-labs-jesc24` exits 1 every timer-tick with
`FATAL: no bare clone at /home/dckc/repos/agoric-labs-jesc24.git` because the repo has not been
cloned yet. The `die` turns a "not-yet-set-up" state into a repeating systemd failure, flooding
the journal. The fleet-draining guard on line 29 already shows the intended idiom: log + exit 0
for a precondition that doesn't require noise. This change makes the triager inert (not Failed)
until the operator runs the clone, consistent with the skip-cleanly pattern used throughout the
garden scripts (see recent commits: "skip cleanly when tip has no library/topics", etc.).
