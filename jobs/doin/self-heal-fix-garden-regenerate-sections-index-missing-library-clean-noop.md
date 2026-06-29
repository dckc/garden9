In `scripts/jobs/regenerate-sections-index.sh`, the `land` case fatally exits 1 every tick on a garden instance whose `journal2` branch carries no `library/` tree (confirmed: `git ls-tree origin/journal2` on this host shows only `.bulletin-trigger`, `README.md`, `jobs/`, `msgs/` — no `library/`). The offending line is:

    [ -d "$LIB/sections" ] || die "no library/sections in the synced clone at $DIR"

Change it so a tip that carries no `library/sections` tree is treated as a clean no-op rather than a failure — there is nothing to project, so the regenerator should log and `exit 0`, e.g.:

    if [ ! -d "$LIB/sections" ]; then
      log "tip $TIP: no library/sections in the synced clone at $DIR; nothing to regenerate"
      exit 0
    fi

(Compute `TIP` before this guard, or inline a `git -C "$DIR" rev-parse --short HEAD`.) This makes `garden-regenerate-sections-index` idle quietly on library-less instances and resume real work automatically once a `library/` tree exists, matching the service's own "self-heals on the next tick" design and its idempotent-no-op posture. Apply the same missing-library → clean `exit 0` treatment to the identical `die` in the sibling `scripts/jobs/library-link-scan.sh` (`[ -d "$LIB" ] || die "no library/ in the synced clone ..."`, around line 115), which has the same latent hourly failure on this instance. Do NOT weaken the existing 75/EX_TEMPFAIL transient-outage handling or the dangling/anchor failure exits (those remain real failures).

---
claim:
  host: g9
  gardener: 1
  claimed_at: 2026-06-29T16:39:02Z
