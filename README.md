# Garden bulletin

_As of 2026-06-29T16:28:22Z_

## Latest

A quiet maintenance cycle — no external PRs moved; the work that completed is all garden-internal hardening around the empty/absent-library case. Library services now no-op cleanly on an empty corpus, the library scripts skip when there's no library present, and two self-heal fixes landed (one pushed as `3a17c87df`) so the topics-counts regeneration and source-drift scan tolerate a missing source index instead of erroring; the gardener-scaler also now logs an undeterminable count just once rather than repeatedly. One dead-lettered message is currently in flight (`deadmail-20260629T162325Z-32ee13`) awaiting someone to pick up its intent. The two `dapp-stake-control` PRs ([#54](https://github.com/agoric-labs/dapp-stake-control/pull/54), [#55](https://github.com/agoric-labs/dapp-stake-control/pull/55)) remain parked on maintainer review, now past 383 days.

## Parked for maintainer feedback

- [agoric-labs/dapp-stake-control#54](https://github.com/agoric-labs/dapp-stake-control/pull/54) — chore: log boardId of instance in coreEval (waiting 383d)
- [agoric-labs/dapp-stake-control#55](https://github.com/agoric-labs/dapp-stake-control/pull/55) — chore: punt on give.Retainer (waiting 383d)
## Messages to the maintainer

(no pending maintainer messages)

## Board
### todo (0)
(none)

### doin (1)
- [`deadmail-20260629T162325Z-32ee13`](https://github.com/kriskowal/garden/blob/journal2/jobs/doin/deadmail-20260629T162325Z-32ee13.md) — Dead-lettered message — pick up its intent

### tada (6)
- [`improve-library-services-empty-corpus-noop`](https://github.com/kriskowal/garden/blob/journal2/jobs/tada/improve-library-services-empty-corpus-noop.md) — Completion report: improve-library-services-empty-corpus-noop
- [`self-heal-fix-garden-regenerate-topics-counts-missing-library-clean-noop`](https://github.com/kriskowal/garden/blob/journal2/jobs/tada/self-heal-fix-garden-regenerate-topics-counts-missing-library-clean-noop.md) — Pushed cleanly as 3a17c87df.
- [`self-heal-fix-garden-library-source-drift-scan-missing-source-index-noop`](https://github.com/kriskowal/garden/blob/journal2/jobs/tada/self-heal-fix-garden-library-source-drift-scan-missing-source-index-noop.md) — Completion report
- [`improve-library-scripts-skip-when-no-library`](https://github.com/kriskowal/garden/blob/journal2/jobs/tada/improve-library-scripts-skip-when-no-library.md) — Completion report
- [`improve-gardener-scaler-undeterminable-log-once`](https://github.com/kriskowal/garden/blob/journal2/jobs/tada/improve-gardener-scaler-undeterminable-log-once.md) — Completion report
- … and 1 more

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
