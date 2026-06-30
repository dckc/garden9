In `scripts/jobs/triager.sh` line 32, change the bare-clone absence check from a fatal exit to a clean skip:
  Before: `[ -d "$BARE" ] || die "no bare clone at $BARE (clone the repo first)"`
  After:  `[ -d "$BARE" ] || { log "no bare clone at $BARE; skipping until clone-keeper creates it"; exit 0; }`
This stops `garden-triager@dctinybrain-jesc24.service`, `garden-triager@agoric-labs-jesc24.service`, and `garden-triager@dckc-jesc24.service` from being marked Failed every 2 minutes. The "skip cleanly when prerequisite is absent" pattern is already established across the garden (see recent commits: `regenerate-topics-counts`, `library-source-drift-scan`, `library-link-scan`). The triager already handles fleet-draining with `exit 0`; missing bare clone deserves the same treatment.
