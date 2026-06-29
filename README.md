# Garden bulletin

_As of 2026-06-29T15:52:50Z_

## Latest

Two garden-internal fixes landed, both hardening behavior when no library is configured: a self-heal that makes `garden-regenerate-sections`/Index-count regeneration skip cleanly with no library present (pushed to `main2` as `0e6cb28f3`), and a tweak so the gardener-scaler logs its "undeterminable worker count" condition just once rather than on every tick. A companion job to make `library-link-scan.sh` and the regenerate-sections scripts skip when no library exists is now claimed and in progress. The only items still parked are the two long-idle `dapp-stake-control` chores — [agoric-labs/dapp-stake-control#54](https://github.com/agoric-labs/dapp-stake-control/pull/54) and [agoric-labs/dapp-stake-control#55](https://github.com/agoric-labs/dapp-stake-control/pull/55) — both awaiting maintainer review for 383 days.

## Parked for maintainer feedback

- [agoric-labs/dapp-stake-control#54](https://github.com/agoric-labs/dapp-stake-control/pull/54) — chore: log boardId of instance in coreEval (waiting 383d)
- [agoric-labs/dapp-stake-control#55](https://github.com/agoric-labs/dapp-stake-control/pull/55) — chore: punt on give.Retainer (waiting 383d)
## Messages to the maintainer

(no pending maintainer messages)

## Board
### todo (0)
(none)

### doin (1)
- [`improve-library-scripts-skip-when-no-library`](https://github.com/kriskowal/garden/blob/journal2/jobs/doin/improve-library-scripts-skip-when-no-library.md) — scripts/jobs/library-link-scan.sh:115 and scripts/jobs/regenerate-sections-in...

### tada (2)
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
