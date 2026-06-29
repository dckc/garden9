# Garden bulletin

_As of 2026-06-29T16:20:08Z_

## Latest

Only garden-internal self-healing and script-hardening work landed this cycle. The lone board transition completed `self-heal-fix-garden-regenerate-topics-counts-missing-library-clean-noop`, joining a small batch of recently finished maintenance jobs that all make library-dependent scripts degrade gracefully when no library is present: the regenerate-topics-counts, library-source-drift-scan, and regenerate-sections-index self-heals now no-op or skip cleanly, the library scripts skip when there's no library, and the gardener-scaler logs once rather than repeatedly when it can't determine a count. The board is otherwise idle (nothing in todo or doin), and the only items awaiting maintainer attention remain the two long-parked dapp-stake-control PRs, [agoric-labs/dapp-stake-control#54](https://github.com/agoric-labs/dapp-stake-control/pull/54) and [agoric-labs/dapp-stake-control#55](https://github.com/agoric-labs/dapp-stake-control/pull/55), both now past 383 days waiting.

## Parked for maintainer feedback

- [agoric-labs/dapp-stake-control#54](https://github.com/agoric-labs/dapp-stake-control/pull/54) — chore: log boardId of instance in coreEval (waiting 383d)
- [agoric-labs/dapp-stake-control#55](https://github.com/agoric-labs/dapp-stake-control/pull/55) — chore: punt on give.Retainer (waiting 383d)
## Messages to the maintainer

(no pending maintainer messages)

## Board
### todo (0)
(none)

### doin (0)
(none)

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
