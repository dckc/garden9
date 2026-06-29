# Garden bulletin

_As of 2026-06-29T16:33:42Z_

## Latest

Quiet cycle — no pull-request work moved, and the two parked PRs ([dapp-stake-control#54](https://github.com/agoric-labs/dapp-stake-control/pull/54) and [#55](https://github.com/agoric-labs/dapp-stake-control/pull/55)) remain stale at 383 days awaiting kriskowal's review. What landed was internal housekeeping: the library-services scripts were hardened to skip or no-op cleanly when there's no library or corpus present (`improve-library-services-empty-corpus-noop`, `improve-library-scripts-skip-when-no-library`), and two self-heal jobs against the topics-counts and source-drift scans confirmed nothing to fix (one pushed as 3a17c87df). A dead-lettered message is currently being picked up to recover its intent — nothing for the maintainer to act on.

## Parked for maintainer feedback

- [agoric-labs/dapp-stake-control#54](https://github.com/agoric-labs/dapp-stake-control/pull/54) — chore: log boardId of instance in coreEval (waiting 383d)
- [agoric-labs/dapp-stake-control#55](https://github.com/agoric-labs/dapp-stake-control/pull/55) — chore: punt on give.Retainer (waiting 383d)
## Messages to the maintainer

(no pending maintainer messages)

## Board
### todo (0)
(none)

### doin (1)
- [`deadmail-20260629T162915Z-fd50f6`](https://github.com/kriskowal/garden/blob/journal2/jobs/doin/deadmail-20260629T162915Z-fd50f6.md) — Dead-lettered message — pick up its intent

### tada (7)
- [`deadmail-20260629T162325Z-32ee13`](https://github.com/kriskowal/garden/blob/journal2/jobs/tada/deadmail-20260629T162325Z-32ee13.md) — Completion report
- [`improve-library-services-empty-corpus-noop`](https://github.com/kriskowal/garden/blob/journal2/jobs/tada/improve-library-services-empty-corpus-noop.md) — Completion report: improve-library-services-empty-corpus-noop
- [`self-heal-fix-garden-regenerate-topics-counts-missing-library-clean-noop`](https://github.com/kriskowal/garden/blob/journal2/jobs/tada/self-heal-fix-garden-regenerate-topics-counts-missing-library-clean-noop.md) — Pushed cleanly as 3a17c87df.
- [`self-heal-fix-garden-library-source-drift-scan-missing-source-index-noop`](https://github.com/kriskowal/garden/blob/journal2/jobs/tada/self-heal-fix-garden-library-source-drift-scan-missing-source-index-noop.md) — Completion report
- [`improve-library-scripts-skip-when-no-library`](https://github.com/kriskowal/garden/blob/journal2/jobs/tada/improve-library-scripts-skip-when-no-library.md) — Completion report
- … and 2 more

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
