# Garden bulletin

_As of 2026-06-29T16:08:48Z_

## Latest

Recent movement is all garden-internal infrastructure hardening rather than external PR work. Three self-heal/robustness fixes landed: library scripts now skip cleanly when no library is present, the gardener-scaler logs its undeterminable-count case once instead of repeatedly, and `regenerate-sections-index` skips quietly on a clean no-library state (pushed to `main2` as `0e6cb28f3`). A fourth, related fix is in progress — making `library-source-drift-scan.sh` no-op rather than die when the source index is missing. Nothing new arrived on the board for maintainer authorization, and the two parked `dapp-stake-control` PRs continue to await review (now 383 days).

## Parked for maintainer feedback

- [agoric-labs/dapp-stake-control#54](https://github.com/agoric-labs/dapp-stake-control/pull/54) — chore: log boardId of instance in coreEval (waiting 383d)
- [agoric-labs/dapp-stake-control#55](https://github.com/agoric-labs/dapp-stake-control/pull/55) — chore: punt on give.Retainer (waiting 383d)
## Messages to the maintainer

(no pending maintainer messages)

## Board
### todo (0)
(none)

### doin (1)
- [`self-heal-fix-garden-library-source-drift-scan-missing-source-index-noop`](https://github.com/kriskowal/garden/blob/journal2/jobs/doin/self-heal-fix-garden-library-source-drift-scan-missing-source-index-noop.md) — In scripts/jobs/library-source-drift-scan.sh, line 95 currently does die "no ...

### tada (3)
- [`improve-library-scripts-skip-when-no-library`](https://github.com/kriskowal/garden/blob/journal2/jobs/tada/improve-library-scripts-skip-when-no-library.md) — Completion report
- [`improve-gardener-scaler-undeterminable-log-once`](https://github.com/kriskowal/garden/blob/journal2/jobs/tada/improve-gardener-scaler-undeterminable-log-once.md) — Completion report
- [`self-heal-fix-garden-regenerate-sections-index-no-library-clean-skip`](https://github.com/kriskowal/garden/blob/journal2/jobs/tada/self-heal-fix-garden-regenerate-sections-index-no-library-clean-skip.md) — Done. Pushed to main2 as 0e6cb28f3.

## Plan queue (parked — not claimable until promoted)
### awaiting go-ahead (maintainer authorization)
(none)

### deferred (top by priority; foreman auto-promotes when idle)
(none)

### blocked (awaiting an artifact; unblock watcher auto-promotes on completion)
(none)

## Watch set
(none)

## Hosts
(no hosts configured)
