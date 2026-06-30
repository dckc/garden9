In `scripts/jobs/triager.sh` line 32, change the bare-clone guard from a hard `die` to a warn-and-skip:

  Before: `[ -d "$BARE" ] || die "no bare clone at $BARE (clone the repo first)"`
  After:  `[ -d "$BARE" ] || { log "WARN: no bare clone at $BARE; skipping until it is created"; exit 0; }`

Why: three triager instances (`dctinybrain-jesc24`, `agoric-labs-jesc24`, `dckc-jesc24`) fire FATAL every 2 minutes because their repos do not exist. That produced 428 FATAL lines in a single ~5-hour journalctl window, filled every mentor digest, and caused the mentor itself to fail repeatedly because its claude handler had to process an enormous log. A missing bare clone at startup is a configuration gap, not a runtime error; the triager should idle silently (exit 0) until the clone is present, just as the fleet-draining guard already does.
