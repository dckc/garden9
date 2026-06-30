# Garden bulletin

_As of 2026-06-30T08:54:31Z_

## Latest

The board's `doin` queue is saturated with 50 dead-lettered messages accumulated throughout today, all awaiting intent recovery — this volume suggests a systemic delivery failure rather than isolated drops and warrants a look at the deadmail root cause. On the productive side, `improve-triager-missing-clone-skip` closed out cleanly (the gardener recognized commit `b5b340e45` had already landed the fix) and a new job `improve-clone-keeper-url-autoinit` was claimed to extend clone-keeper with URL auto-initialization. Work in `dctinybrain/jesc24` also advanced, with an ECMA-262 provenance note committed to `theories/jessie/quasi_jessie.v` against PR #8 in that fork.

## Parked for maintainer feedback

- [agoric-labs/dapp-stake-control#54](https://github.com/agoric-labs/dapp-stake-control/pull/54) — chore: log boardId of instance in coreEval (waiting 384d)
- [agoric-labs/dapp-stake-control#55](https://github.com/agoric-labs/dapp-stake-control/pull/55) — chore: punt on give.Retainer (waiting 384d)
## Messages to the maintainer

(no pending maintainer messages)

## Board
### todo (0)
(none)

### doin (50)
- [`deadmail-20260630T031325Z-3454f5`](https://github.com/kriskowal/garden/blob/journal2/jobs/doin/deadmail-20260630T031325Z-3454f5.md) — Dead-lettered message — pick up its intent
- [`deadmail-20260630T034324Z-31124d`](https://github.com/kriskowal/garden/blob/journal2/jobs/doin/deadmail-20260630T034324Z-31124d.md) — Dead-lettered message — pick up its intent
- [`deadmail-20260630T040326Z-e8f19e`](https://github.com/kriskowal/garden/blob/journal2/jobs/doin/deadmail-20260630T040326Z-e8f19e.md) — Dead-lettered message — pick up its intent
- [`deadmail-20260630T041406Z-03fe15`](https://github.com/kriskowal/garden/blob/journal2/jobs/doin/deadmail-20260630T041406Z-03fe15.md) — Dead-lettered message — pick up its intent
- [`deadmail-20260630T041407Z-432bcb`](https://github.com/kriskowal/garden/blob/journal2/jobs/doin/deadmail-20260630T041407Z-432bcb.md) — Dead-lettered message — pick up its intent
- [`deadmail-20260630T041407Z-517d74`](https://github.com/kriskowal/garden/blob/journal2/jobs/doin/deadmail-20260630T041407Z-517d74.md) — Dead-lettered message — pick up its intent
- [`deadmail-20260630T042011Z-533a67`](https://github.com/kriskowal/garden/blob/journal2/jobs/doin/deadmail-20260630T042011Z-533a67.md) — Dead-lettered message — pick up its intent
- [`deadmail-20260630T050205Z-e09014`](https://github.com/kriskowal/garden/blob/journal2/jobs/doin/deadmail-20260630T050205Z-e09014.md) — Dead-lettered message — pick up its intent
- [`deadmail-20260630T051436Z-2c55e2`](https://github.com/kriskowal/garden/blob/journal2/jobs/doin/deadmail-20260630T051436Z-2c55e2.md) — Dead-lettered message — pick up its intent
- [`deadmail-20260630T051437Z-b58236`](https://github.com/kriskowal/garden/blob/journal2/jobs/doin/deadmail-20260630T051437Z-b58236.md) — Dead-lettered message — pick up its intent
- [`deadmail-20260630T051437Z-c6f945`](https://github.com/kriskowal/garden/blob/journal2/jobs/doin/deadmail-20260630T051437Z-c6f945.md) — Dead-lettered message — pick up its intent
- [`deadmail-20260630T055018Z-c69634`](https://github.com/kriskowal/garden/blob/journal2/jobs/doin/deadmail-20260630T055018Z-c69634.md) — Dead-lettered message — pick up its intent
- [`deadmail-20260630T060241Z-b01cd8`](https://github.com/kriskowal/garden/blob/journal2/jobs/doin/deadmail-20260630T060241Z-b01cd8.md) — Dead-lettered message — pick up its intent
- [`deadmail-20260630T061505Z-cd92f7`](https://github.com/kriskowal/garden/blob/journal2/jobs/doin/deadmail-20260630T061505Z-cd92f7.md) — Dead-lettered message — pick up its intent
- [`deadmail-20260630T061507Z-198915`](https://github.com/kriskowal/garden/blob/journal2/jobs/doin/deadmail-20260630T061507Z-198915.md) — Dead-lettered message — pick up its intent
- [`deadmail-20260630T061507Z-1c58a4`](https://github.com/kriskowal/garden/blob/journal2/jobs/doin/deadmail-20260630T061507Z-1c58a4.md) — Dead-lettered message — pick up its intent
- [`deadmail-20260630T065028Z-791816`](https://github.com/kriskowal/garden/blob/journal2/jobs/doin/deadmail-20260630T065028Z-791816.md) — Dead-lettered message — pick up its intent
- [`deadmail-20260630T070318Z-b0e39c`](https://github.com/kriskowal/garden/blob/journal2/jobs/doin/deadmail-20260630T070318Z-b0e39c.md) — Dead-lettered message — pick up its intent
- [`deadmail-20260630T071325Z-df3e16`](https://github.com/kriskowal/garden/blob/journal2/jobs/doin/deadmail-20260630T071325Z-df3e16.md) — Dead-lettered message — pick up its intent
- [`deadmail-20260630T071327Z-27fec4`](https://github.com/kriskowal/garden/blob/journal2/jobs/doin/deadmail-20260630T071327Z-27fec4.md) — Dead-lettered message — pick up its intent
- [`deadmail-20260630T071329Z-d0d4f2`](https://github.com/kriskowal/garden/blob/journal2/jobs/doin/deadmail-20260630T071329Z-d0d4f2.md) — Dead-lettered message — pick up its intent
- [`deadmail-20260630T071331Z-d66ade`](https://github.com/kriskowal/garden/blob/journal2/jobs/doin/deadmail-20260630T071331Z-d66ade.md) — Dead-lettered message — pick up its intent
- [`deadmail-20260630T071531Z-c9dd6f`](https://github.com/kriskowal/garden/blob/journal2/jobs/doin/deadmail-20260630T071531Z-c9dd6f.md) — Dead-lettered message — pick up its intent
- [`deadmail-20260630T071533Z-498d63`](https://github.com/kriskowal/garden/blob/journal2/jobs/doin/deadmail-20260630T071533Z-498d63.md) — Dead-lettered message — pick up its intent
- [`deadmail-20260630T071533Z-6ce8c7`](https://github.com/kriskowal/garden/blob/journal2/jobs/doin/deadmail-20260630T071533Z-6ce8c7.md) — Dead-lettered message — pick up its intent
- [`deadmail-20260630T073317Z-b8d3c8`](https://github.com/kriskowal/garden/blob/journal2/jobs/doin/deadmail-20260630T073317Z-b8d3c8.md) — Dead-lettered message — pick up its intent
- [`deadmail-20260630T073318Z-87e440`](https://github.com/kriskowal/garden/blob/journal2/jobs/doin/deadmail-20260630T073318Z-87e440.md) — Dead-lettered message — pick up its intent
- [`deadmail-20260630T073324Z-2b883b`](https://github.com/kriskowal/garden/blob/journal2/jobs/doin/deadmail-20260630T073324Z-2b883b.md) — Dead-lettered message — pick up its intent
- [`deadmail-20260630T073330Z-b11d5d`](https://github.com/kriskowal/garden/blob/journal2/jobs/doin/deadmail-20260630T073330Z-b11d5d.md) — Dead-lettered message — pick up its intent
- [`deadmail-20260630T073334Z-2390d6`](https://github.com/kriskowal/garden/blob/journal2/jobs/doin/deadmail-20260630T073334Z-2390d6.md) — Dead-lettered message — pick up its intent
- [`deadmail-20260630T073337Z-1071cd`](https://github.com/kriskowal/garden/blob/journal2/jobs/doin/deadmail-20260630T073337Z-1071cd.md) — Dead-lettered message — pick up its intent
- [`deadmail-20260630T073341Z-a838b0`](https://github.com/kriskowal/garden/blob/journal2/jobs/doin/deadmail-20260630T073341Z-a838b0.md) — Dead-lettered message — pick up its intent
- [`deadmail-20260630T073345Z-0e7f05`](https://github.com/kriskowal/garden/blob/journal2/jobs/doin/deadmail-20260630T073345Z-0e7f05.md) — Dead-lettered message — pick up its intent
- [`deadmail-20260630T073349Z-cd3972`](https://github.com/kriskowal/garden/blob/journal2/jobs/doin/deadmail-20260630T073349Z-cd3972.md) — Dead-lettered message — pick up its intent
- [`deadmail-20260630T073355Z-e8c752`](https://github.com/kriskowal/garden/blob/journal2/jobs/doin/deadmail-20260630T073355Z-e8c752.md) — Dead-lettered message — pick up its intent
- [`deadmail-20260630T073356Z-be640b`](https://github.com/kriskowal/garden/blob/journal2/jobs/doin/deadmail-20260630T073356Z-be640b.md) — Dead-lettered message — pick up its intent
- [`deadmail-20260630T073400Z-fe8166`](https://github.com/kriskowal/garden/blob/journal2/jobs/doin/deadmail-20260630T073400Z-fe8166.md) — Dead-lettered message — pick up its intent
- [`deadmail-20260630T073403Z-cc24cd`](https://github.com/kriskowal/garden/blob/journal2/jobs/doin/deadmail-20260630T073403Z-cc24cd.md) — Dead-lettered message — pick up its intent
- [`deadmail-20260630T073405Z-78a50e`](https://github.com/kriskowal/garden/blob/journal2/jobs/doin/deadmail-20260630T073405Z-78a50e.md) — Dead-lettered message — pick up its intent
- [`deadmail-20260630T073406Z-3fe68e`](https://github.com/kriskowal/garden/blob/journal2/jobs/doin/deadmail-20260630T073406Z-3fe68e.md) — Dead-lettered message — pick up its intent
- [`deadmail-20260630T073409Z-7088db`](https://github.com/kriskowal/garden/blob/journal2/jobs/doin/deadmail-20260630T073409Z-7088db.md) — Dead-lettered message — pick up its intent
- [`deadmail-20260630T073410Z-8b8da3`](https://github.com/kriskowal/garden/blob/journal2/jobs/doin/deadmail-20260630T073410Z-8b8da3.md) — Dead-lettered message — pick up its intent
- [`deadmail-20260630T073412Z-f24743`](https://github.com/kriskowal/garden/blob/journal2/jobs/doin/deadmail-20260630T073412Z-f24743.md) — Dead-lettered message — pick up its intent
- [`deadmail-20260630T073414Z-ad4265`](https://github.com/kriskowal/garden/blob/journal2/jobs/doin/deadmail-20260630T073414Z-ad4265.md) — Dead-lettered message — pick up its intent
- [`deadmail-20260630T074329Z-260d32`](https://github.com/kriskowal/garden/blob/journal2/jobs/doin/deadmail-20260630T074329Z-260d32.md) — Dead-lettered message — pick up its intent
- [`deadmail-20260630T075318Z-09e621`](https://github.com/kriskowal/garden/blob/journal2/jobs/doin/deadmail-20260630T075318Z-09e621.md) — Dead-lettered message — pick up its intent
- [`deadmail-20260630T080353Z-ac4f84`](https://github.com/kriskowal/garden/blob/journal2/jobs/doin/deadmail-20260630T080353Z-ac4f84.md) — Dead-lettered message — pick up its intent
- [`deadmail-20260630T082027Z-c8cf0e`](https://github.com/kriskowal/garden/blob/journal2/jobs/doin/deadmail-20260630T082027Z-c8cf0e.md) — Dead-lettered message — pick up its intent
- [`deadmail-20260630T084317Z-a93140`](https://github.com/kriskowal/garden/blob/journal2/jobs/doin/deadmail-20260630T084317Z-a93140.md) — Dead-lettered message — pick up its intent
- [`improve-clone-keeper-url-autoinit`](https://github.com/kriskowal/garden/blob/journal2/jobs/doin/improve-clone-keeper-url-autoinit.md) — Extend the tracked-clones spec in scripts/jobs/clone-keeper.sh with an option...

### tada (16)
- [`improve-triager-missing-clone-skip`](https://github.com/kriskowal/garden/blob/journal2/jobs/tada/improve-triager-missing-clone-skip.md) — The work is already done. Commit b5b340e45 ("triager: skip cleanly when bare ...
- [`deadmail-20260630T074326Z-fe5757`](https://github.com/kriskowal/garden/blob/journal2/jobs/tada/deadmail-20260630T074326Z-fe5757.md) — The maintainer inbox is still unavailable (no active liaison session), so my ...
- [`dctinybrain-jesc24-pr8-4ac3221c`](https://github.com/kriskowal/garden/blob/journal2/jobs/tada/dctinybrain-jesc24-pr8-4ac3221c.md) — Added ECMA-262 provenance note to theories/jessie/quasi_jessie.v in commit 18...
- [`deadmail-20260630T035322Z-1d8a06`](https://github.com/kriskowal/garden/blob/journal2/jobs/tada/deadmail-20260630T035322Z-1d8a06.md) — All three repos are accessible and the probe passes. Here is the completion r...
- [`improve-triager-skip-on-missing-clone`](https://github.com/kriskowal/garden/blob/journal2/jobs/tada/improve-triager-skip-on-missing-clone.md) — Completion report:
- … and 11 more

## Plan queue (parked — not claimable until promoted)
### awaiting go-ahead (maintainer authorization)
(none)

### deferred (top by priority; foreman auto-promotes when idle)
(none)

### blocked (awaiting an artifact; unblock watcher auto-promotes on completion)
(none)

## Watch set
agoric-labs-jesc24 dckc-jesc24 dctinybrain-jesc24

## Hosts
- [g9](https://github.com/kriskowal/garden/blob/journal2/hosts/g9): 5 gardeners
