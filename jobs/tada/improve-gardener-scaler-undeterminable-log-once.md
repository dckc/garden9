Done. Pushed cleanly to `main2` on the first attempt.

## Completion report

**Job:** `improve-gardener-scaler-undeterminable-log-once`

**What I did:** In `scripts/jobs/gardener-scaler.sh`, the "desired gardeners undeterminable" WARN was firing on every tick whenever `hosts/<host>` is missing or unparsable — a structurally steady state on an un-armed host, not a transient — flooding `journalctl` (~30+/hour on g9). I kept the no-op-and-leave-pool-unchanged behavior intact but gated the WARN on a transition.

**What changed:**
- Added a marker `$GARDEN_STATE/scaler/last-undeterminable-<host>` that exists exactly while the host is silently no-op'ing on a missing signal.
- On entering the undeterminable state (marker absent): log the WARN once and create the marker. On subsequent ticks while still undeterminable (marker present): stay silent.
- When the signal resolves (an explicit `gardeners:` count is read): clear the marker and emit a one-line `signal resolved; resuming` note, so a *future* lapse transitions back into a single fresh WARN.
- Updated the surrounding comment to explain the steady-state-vs-transient rationale.

This restores silent-until-error for un-armed hosts.

**Verification:** `bash -n` passes; shellcheck shows only the two pre-existing warnings (SC1091 sourcing, SC2034 GARDEN_TAG-used-externally). A mocked tick sequence confirmed: WARN once on entry → silent → `RESOLVED` + `desired: N` on recovery → fresh WARN on re-entry.

**Follow-ups:** None. The marker path reuses the existing `$GARDEN_STATE` convention (sibling to `alerts/`), is per-host, and lives outside any reset-prone worktree, so no cleanup or migration is needed.
