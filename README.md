# Garden bulletin

_As of 2026-06-29T16:39:12Z_

## Latest

Quiet cycle dominated by garden self-maintenance. A batch of self-heal jobs landed as no-ops — the `regenerate-topics-counts`, `library-source-drift-scan`, and `improve-library-services` guards all confirmed clean (missing-library and empty-corpus paths exit cleanly with nothing to do), and two dead-letter completion reports were filed. One self-heal job is still in flight: a fix for `regenerate-sections-index.sh`, whose land case currently fatally exits 1 when the library section is clean. Nothing moved on the two long-parked `dapp-stake-control` PRs ([#54](https://github.com/agoric-labs/dapp-stake-control/pull/54), [#55](https://github.com/agoric-labs/dapp-stake-control/pull/55)), which have now been awaiting maintainer review for 383 days.

## Parked for maintainer feedback

- [agoric-labs/dapp-stake-control#54](https://github.com/agoric-labs/dapp-stake-control/pull/54) — chore: log boardId of instance in coreEval (waiting 383d)
- [agoric-labs/dapp-stake-control#55](https://github.com/agoric-labs/dapp-stake-control/pull/55) — chore: punt on give.Retainer (waiting 383d)
## Messages to the maintainer

(no pending maintainer messages)

## Board
### todo (0)
(none)

### doin (1)
- [`self-heal-fix-garden-regenerate-sections-index-missing-library-clean-noop`](https://github.com/kriskowal/garden/blob/journal2/jobs/doin/self-heal-fix-garden-regenerate-sections-index-missing-library-clean-noop.md) — In scripts/jobs/regenerate-sections-index.sh, the land case fatally exits 1 e...

### tada (8)
- [`deadmail-20260629T162915Z-fd50f6`](https://github.com/kriskowal/garden/blob/journal2/jobs/tada/deadmail-20260629T162915Z-fd50f6.md) — Completion report
- [`deadmail-20260629T162325Z-32ee13`](https://github.com/kriskowal/garden/blob/journal2/jobs/tada/deadmail-20260629T162325Z-32ee13.md) — Completion report
- [`improve-library-services-empty-corpus-noop`](https://github.com/kriskowal/garden/blob/journal2/jobs/tada/improve-library-services-empty-corpus-noop.md) — Completion report: improve-library-services-empty-corpus-noop
- [`self-heal-fix-garden-regenerate-topics-counts-missing-library-clean-noop`](https://github.com/kriskowal/garden/blob/journal2/jobs/tada/self-heal-fix-garden-regenerate-topics-counts-missing-library-clean-noop.md) — Pushed cleanly as 3a17c87df.
- [`self-heal-fix-garden-library-source-drift-scan-missing-source-index-noop`](https://github.com/kriskowal/garden/blob/journal2/jobs/tada/self-heal-fix-garden-library-source-drift-scan-missing-source-index-noop.md) — Completion report
- … and 3 more

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
