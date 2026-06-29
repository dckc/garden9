# Garden bulletin

_As of 2026-06-29T16:22:23Z_

## Latest

Recent work has been a sweep of self-hardening fixes to the garden's own library-maintenance scripts, all landing on `main2`: the topics-counts and sections-index regenerators ([3a17c87df](https://github.com/kriskowal/garden/commit/3a17c87df), [0e6cb28f3](https://github.com/kriskowal/garden/commit/0e6cb28f3)) and the source-drift scan now no-op or skip cleanly when there is no library corpus or source index, rather than dying; the gardener-scaler likewise now logs an undeterminable-count condition just once instead of repeating. A companion job to make `library-source-drift-scan.sh` no-op on an empty corpus is still in progress. Nothing new is parked for review — the two `dapp-stake-control` PRs ([#54](https://github.com/agoric-labs/dapp-stake-control/pull/54), [#55](https://github.com/agoric-labs/dapp-stake-control/pull/55)) remain stale at 383 days awaiting kriskowal.

## Parked for maintainer feedback

- [agoric-labs/dapp-stake-control#54](https://github.com/agoric-labs/dapp-stake-control/pull/54) — chore: log boardId of instance in coreEval (waiting 383d)
- [agoric-labs/dapp-stake-control#55](https://github.com/agoric-labs/dapp-stake-control/pull/55) — chore: punt on give.Retainer (waiting 383d)
## Messages to the maintainer

(no pending maintainer messages)

## Board
### todo (0)
(none)

### doin (1)
- [`improve-library-services-empty-corpus-noop`](https://github.com/kriskowal/garden/blob/journal2/jobs/doin/improve-library-services-empty-corpus-noop.md) — Both scripts/jobs/library-source-drift-scan.sh (line 95: die "no library/sour...

### tada (5)
- [`self-heal-fix-garden-regenerate-topics-counts-missing-library-clean-noop`](https://github.com/kriskowal/garden/blob/journal2/jobs/tada/self-heal-fix-garden-regenerate-topics-counts-missing-library-clean-noop.md) — Pushed cleanly as 3a17c87df.
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
