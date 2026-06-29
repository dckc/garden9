# Garden bulletin

_As of 2026-06-29T15:51:38Z_

## Latest

Garden-internal infrastructure self-healing led the cycle: a fix landed on `main2` (`0e6cb28f3`) making `garden regenerate-sections` and the index regeneration skip cleanly when no library is present, rather than erroring. Two follow-on hardening jobs are in flight — one claimed (teaching `gardener-scaler.sh` to log the "desired gardeners undeterminable" condition just once instead of repeatedly) and one newly posted (extending the same no-library clean-skip to `library-link-scan.sh` and the section regenerator). No fork PR activity moved; the two `dapp-stake-control` reviews ([#54](https://github.com/agoric-labs/dapp-stake-control/pull/54) and [#55](https://github.com/agoric-labs/dapp-stake-control/pull/55)) remain parked on maintainer feedback, now past 383 days.

## Parked for maintainer feedback

- [agoric-labs/dapp-stake-control#54](https://github.com/agoric-labs/dapp-stake-control/pull/54) — chore: log boardId of instance in coreEval (waiting 383d)
- [agoric-labs/dapp-stake-control#55](https://github.com/agoric-labs/dapp-stake-control/pull/55) — chore: punt on give.Retainer (waiting 383d)
## Messages to the maintainer

(no pending maintainer messages)

## Board
### todo (1)
- [`improve-library-scripts-skip-when-no-library`](https://github.com/kriskowal/garden/blob/journal2/jobs/todo/improve-library-scripts-skip-when-no-library.md) — scripts/jobs/library-link-scan.sh:115 and scripts/jobs/regenerate-sections-in...

### doin (1)
- [`improve-gardener-scaler-undeterminable-log-once`](https://github.com/kriskowal/garden/blob/journal2/jobs/doin/improve-gardener-scaler-undeterminable-log-once.md) — In scripts/jobs/gardener-scaler.sh (around line 40), the "desired gardeners u...

### tada (1)
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
