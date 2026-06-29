# Garden bulletin

_As of 2026-06-29T17:51:14Z_

## Latest

One new job landed on the board: [`improve-clone-keeper-auto-init`](https://github.com/kriskowal/garden/blob/journal2/jobs/todo/improve-clone-keeper-auto-init.md), extending the clone-keeper's tracked-clone entry format to support auto-initialization; its companion [`improve-clone-keeper-bootstrap-missing-bare-clone`](https://github.com/kriskowal/garden/blob/journal2/jobs/todo/improve-clone-keeper-bootstrap-missing-bare-clone.md) was already queued, so both clone-keeper hardening tasks are now sitting in `todo` together, unclaimed. The completed queue holds nine recent finishes, dominated by self-healing no-ops confirming that fixes for `regenerate-sections-index` and `regenerate-topics-counts` on empty-library tips are already in place. Two long-standing [agoric-labs/dapp-stake-control](https://github.com/agoric-labs/dapp-stake-control) PRs — [#54](https://github.com/agoric-labs/dapp-stake-control/pull/54) and [#55](https://github.com/agoric-labs/dapp-stake-control/pull/55) — remain parked at 383 days with no movement.

## Parked for maintainer feedback

- [agoric-labs/dapp-stake-control#54](https://github.com/agoric-labs/dapp-stake-control/pull/54) — chore: log boardId of instance in coreEval (waiting 383d)
- [agoric-labs/dapp-stake-control#55](https://github.com/agoric-labs/dapp-stake-control/pull/55) — chore: punt on give.Retainer (waiting 383d)
## Messages to the maintainer

(no pending maintainer messages)

## Board
### todo (2)
- [`improve-clone-keeper-auto-init`](https://github.com/kriskowal/garden/blob/journal2/jobs/todo/improve-clone-keeper-auto-init.md) — In scripts/jobs/clone-keeper.sh, extend the GARDEN_TRACKED_CLONES entry forma...
- [`improve-clone-keeper-bootstrap-missing-bare-clone`](https://github.com/kriskowal/garden/blob/journal2/jobs/todo/improve-clone-keeper-bootstrap-missing-bare-clone.md) — Harden scripts/jobs/clone-keeper.sh so a missing tracked bare clone is determ...

### doin (0)
(none)

### tada (9)
- [`self-heal-fix-garden-regenerate-sections-index-missing-library-clean-noop`](https://github.com/kriskowal/garden/blob/journal2/jobs/tada/self-heal-fix-garden-regenerate-sections-index-missing-library-clean-noop.md) — Confirmed. No work to do — the fix is already landed. Writing the completion ...
- [`deadmail-20260629T162915Z-fd50f6`](https://github.com/kriskowal/garden/blob/journal2/jobs/tada/deadmail-20260629T162915Z-fd50f6.md) — Completion report
- [`deadmail-20260629T162325Z-32ee13`](https://github.com/kriskowal/garden/blob/journal2/jobs/tada/deadmail-20260629T162325Z-32ee13.md) — Completion report
- [`improve-library-services-empty-corpus-noop`](https://github.com/kriskowal/garden/blob/journal2/jobs/tada/improve-library-services-empty-corpus-noop.md) — Completion report: improve-library-services-empty-corpus-noop
- [`self-heal-fix-garden-regenerate-topics-counts-missing-library-clean-noop`](https://github.com/kriskowal/garden/blob/journal2/jobs/tada/self-heal-fix-garden-regenerate-topics-counts-missing-library-clean-noop.md) — Pushed cleanly as 3a17c87df.
- … and 4 more

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
