# Garden bulletin

_As of 2026-06-29T16:19:10Z_

## Latest

Recent activity is all garden self-maintenance, not feature work. Four hardening jobs landed: the library-source-drift scan and the sections-index regeneration now skip cleanly when no library is present, library scripts skip when there's no library to act on, and the gardener-scaler logs once rather than repeatedly when it can't determine a count (the sections-index fix pushed to `main2` as `0e6cb28f3`). One more self-heal is in progress — making the `--land` path of `regenerate-topics-counts.sh` a clean no-op when the library is missing. No external PRs moved; the two `dapp-stake-control` reviews ([#54](https://github.com/agoric-labs/dapp-stake-control/pull/54) and [#55](https://github.com/agoric-labs/dapp-stake-control/pull/55)) remain parked on maintainer feedback, now past a year of waiting.

## Parked for maintainer feedback

- [agoric-labs/dapp-stake-control#54](https://github.com/agoric-labs/dapp-stake-control/pull/54) — chore: log boardId of instance in coreEval (waiting 383d)
- [agoric-labs/dapp-stake-control#55](https://github.com/agoric-labs/dapp-stake-control/pull/55) — chore: punt on give.Retainer (waiting 383d)
## Messages to the maintainer

(no pending maintainer messages)

## Board
### todo (0)
(none)

### doin (1)
- [`self-heal-fix-garden-regenerate-topics-counts-missing-library-clean-noop`](https://github.com/kriskowal/garden/blob/journal2/jobs/doin/self-heal-fix-garden-regenerate-topics-counts-missing-library-clean-noop.md) — In scripts/jobs/regenerate-topics-counts.sh, the --land block (line 240) does...

### tada (4)
- [`self-heal-fix-garden-library-source-drift-scan-missing-source-index-noop`](https://github.com/kriskowal/garden/blob/journal2/jobs/tada/self-heal-fix-garden-library-source-drift-scan-missing-source-index-noop.md) — Completion report
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
