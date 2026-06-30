# Garden bulletin

_As of 2026-06-30T09:58:02Z_

## Latest

The board is effectively stalled: the only transition since the last bulletin was one deadmail job completing after reporting that the upgrade-ready signal is set (`~/.garden-state/deploy/upgrade-ready`), which means a garden deploy is pending but cannot proceed without the maintainer's inbox — itself unavailable, which is why 50 dead-lettered messages have piled up in `doin` throughout today with no gardener able to drain them. No PR pipeline work is in flight; the sole items awaiting attention remain the two long-parked [dapp-stake-control#54](https://github.com/agoric-labs/dapp-stake-control/pull/54) and [dapp-stake-control#55](https://github.com/agoric-labs/dapp-stake-control/pull/55) (both over a year without review). The maintainer should check whether the inbox session needs to be restarted and consider triggering a deploy manually via `scripts/jobs/deploy-garden.sh` if the upgrade-ready signal is intended.

## Parked for maintainer feedback

- [agoric-labs/dapp-stake-control#54](https://github.com/agoric-labs/dapp-stake-control/pull/54) — chore: log boardId of instance in coreEval (waiting 384d)
- [agoric-labs/dapp-stake-control#55](https://github.com/agoric-labs/dapp-stake-control/pull/55) — chore: punt on give.Retainer (waiting 384d)
## Messages to the maintainer

(no pending maintainer messages)

## Board
### todo (0)
(none)

### doin (54)
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
- [`deadmail-20260630T075318Z-09e621`](https://github.com/kriskowal/garden/blob/journal2/jobs/doin/deadmail-20260630T075318Z-09e621.md) — Dead-lettered message — pick up its intent
- [`deadmail-20260630T080353Z-ac4f84`](https://github.com/kriskowal/garden/blob/journal2/jobs/doin/deadmail-20260630T080353Z-ac4f84.md) — Dead-lettered message — pick up its intent
- [`deadmail-20260630T082027Z-c8cf0e`](https://github.com/kriskowal/garden/blob/journal2/jobs/doin/deadmail-20260630T082027Z-c8cf0e.md) — Dead-lettered message — pick up its intent
- [`deadmail-20260630T084317Z-a93140`](https://github.com/kriskowal/garden/blob/journal2/jobs/doin/deadmail-20260630T084317Z-a93140.md) — Dead-lettered message — pick up its intent
- [`deadmail-20260630T085306Z-f44aee`](https://github.com/kriskowal/garden/blob/journal2/jobs/doin/deadmail-20260630T085306Z-f44aee.md) — Dead-lettered message — pick up its intent
- [`deadmail-20260630T085600Z-6bb434`](https://github.com/kriskowal/garden/blob/journal2/jobs/doin/deadmail-20260630T085600Z-6bb434.md) — Dead-lettered message — pick up its intent
- [`deadmail-20260630T090132Z-8bd3bf`](https://github.com/kriskowal/garden/blob/journal2/jobs/doin/deadmail-20260630T090132Z-8bd3bf.md) — Dead-lettered message — pick up its intent
- [`deadmail-20260630T090149Z-0db69b`](https://github.com/kriskowal/garden/blob/journal2/jobs/doin/deadmail-20260630T090149Z-0db69b.md) — Dead-lettered message — pick up its intent
- [`deadmail-20260630T090318Z-06b133`](https://github.com/kriskowal/garden/blob/journal2/jobs/doin/deadmail-20260630T090318Z-06b133.md) — Dead-lettered message — pick up its intent
- [`deadmail-20260630T090427Z-5317db`](https://github.com/kriskowal/garden/blob/journal2/jobs/doin/deadmail-20260630T090427Z-5317db.md) — Dead-lettered message — pick up its intent
- [`deadmail-20260630T091317Z-8e7e40`](https://github.com/kriskowal/garden/blob/journal2/jobs/doin/deadmail-20260630T091317Z-8e7e40.md) — Dead-lettered message — pick up its intent
- [`deadmail-20260630T095027Z-215bb2`](https://github.com/kriskowal/garden/blob/journal2/jobs/doin/deadmail-20260630T095027Z-215bb2.md) — Dead-lettered message — pick up its intent
- [`deadmail-20260630T095326Z-03c650`](https://github.com/kriskowal/garden/blob/journal2/jobs/doin/deadmail-20260630T095326Z-03c650.md) — Dead-lettered message — pick up its intent
- [`deadmail-20260630T095330Z-5d4d1d`](https://github.com/kriskowal/garden/blob/journal2/jobs/doin/deadmail-20260630T095330Z-5d4d1d.md) — Dead-lettered message — pick up its intent
- [`deadmail-20260630T095332Z-35ab1d`](https://github.com/kriskowal/garden/blob/journal2/jobs/doin/deadmail-20260630T095332Z-35ab1d.md) — Dead-lettered message — pick up its intent
- [`deadmail-20260630T095348Z-af4483`](https://github.com/kriskowal/garden/blob/journal2/jobs/doin/deadmail-20260630T095348Z-af4483.md) — Dead-lettered message — pick up its intent
- [`deadmail-20260630T095355Z-1b2c18`](https://github.com/kriskowal/garden/blob/journal2/jobs/doin/deadmail-20260630T095355Z-1b2c18.md) — Dead-lettered message — pick up its intent

### tada (22)
- [`deadmail-20260630T085833Z-c2e58c`](https://github.com/kriskowal/garden/blob/journal2/jobs/tada/deadmail-20260630T085833Z-c2e58c.md) — The upgrade-ready signal is set at /home/dckc/.garden-state/deploy/upgrade-re...
- [`deadmail-20260630T085552Z-4d01e0`](https://github.com/kriskowal/garden/blob/journal2/jobs/tada/deadmail-20260630T085552Z-4d01e0.md) — The maintainer inbox is still unavailable (dead-lettered again). Since this i...
- [`deadmail-20260630T074329Z-260d32`](https://github.com/kriskowal/garden/blob/journal2/jobs/tada/deadmail-20260630T074329Z-260d32.md) — The message dead-lettered again (maintainer inbox still absent) — the garden'...
- [`deadmail-20260630T085303Z-16c5ea`](https://github.com/kriskowal/garden/blob/journal2/jobs/tada/deadmail-20260630T085303Z-16c5ea.md) — No inbox messages. My attempt to notify the maintainer also dead-lettered (ma...
- [`deadmail-20260630T085332Z-4e4e1c`](https://github.com/kriskowal/garden/blob/journal2/jobs/tada/deadmail-20260630T085332Z-4e4e1c.md) — The maintainer's inbox is still not available (likely no active session). The...
- … and 17 more

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
