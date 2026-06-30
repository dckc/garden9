# Garden bulletin

_As of 2026-06-30T13:27:06Z_

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

### doin (57)
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
- [`deadmail-20260630T100504Z-1fa1cb`](https://github.com/kriskowal/garden/blob/journal2/jobs/doin/deadmail-20260630T100504Z-1fa1cb.md) — Dead-lettered message — pick up its intent
- [`deadmail-20260630T104326Z-89fe96`](https://github.com/kriskowal/garden/blob/journal2/jobs/doin/deadmail-20260630T104326Z-89fe96.md) — Dead-lettered message — pick up its intent
- [`deadmail-20260630T110307Z-452987`](https://github.com/kriskowal/garden/blob/journal2/jobs/doin/deadmail-20260630T110307Z-452987.md) — Dead-lettered message — pick up its intent
- [`deadmail-20260630T110309Z-97baaf`](https://github.com/kriskowal/garden/blob/journal2/jobs/doin/deadmail-20260630T110309Z-97baaf.md) — Dead-lettered message — pick up its intent
- [`deadmail-20260630T110311Z-606c43`](https://github.com/kriskowal/garden/blob/journal2/jobs/doin/deadmail-20260630T110311Z-606c43.md) — Dead-lettered message — pick up its intent
- [`deadmail-20260630T110538Z-cc11ac`](https://github.com/kriskowal/garden/blob/journal2/jobs/doin/deadmail-20260630T110538Z-cc11ac.md) — Dead-lettered message — pick up its intent
- [`deadmail-20260630T114320Z-31672b`](https://github.com/kriskowal/garden/blob/journal2/jobs/doin/deadmail-20260630T114320Z-31672b.md) — Dead-lettered message — pick up its intent
- [`deadmail-20260630T114324Z-fda4c9`](https://github.com/kriskowal/garden/blob/journal2/jobs/doin/deadmail-20260630T114324Z-fda4c9.md) — Dead-lettered message — pick up its intent
- [`deadmail-20260630T114326Z-bd1288`](https://github.com/kriskowal/garden/blob/journal2/jobs/doin/deadmail-20260630T114326Z-bd1288.md) — Dead-lettered message — pick up its intent
- [`deadmail-20260630T114329Z-f4583d`](https://github.com/kriskowal/garden/blob/journal2/jobs/doin/deadmail-20260630T114329Z-f4583d.md) — Dead-lettered message — pick up its intent
- [`deadmail-20260630T114332Z-888463`](https://github.com/kriskowal/garden/blob/journal2/jobs/doin/deadmail-20260630T114332Z-888463.md) — Dead-lettered message — pick up its intent
- [`deadmail-20260630T120610Z-9a4db4`](https://github.com/kriskowal/garden/blob/journal2/jobs/doin/deadmail-20260630T120610Z-9a4db4.md) — Dead-lettered message — pick up its intent
- [`deadmail-20260630T123326Z-3ac90d`](https://github.com/kriskowal/garden/blob/journal2/jobs/doin/deadmail-20260630T123326Z-3ac90d.md) — Dead-lettered message — pick up its intent
- [`deadmail-20260630T124326Z-9b16ef`](https://github.com/kriskowal/garden/blob/journal2/jobs/doin/deadmail-20260630T124326Z-9b16ef.md) — Dead-lettered message — pick up its intent
- [`deadmail-20260630T125307Z-6a97ea`](https://github.com/kriskowal/garden/blob/journal2/jobs/doin/deadmail-20260630T125307Z-6a97ea.md) — Dead-lettered message — pick up its intent
- [`deadmail-20260630T125311Z-2d1a7d`](https://github.com/kriskowal/garden/blob/journal2/jobs/doin/deadmail-20260630T125311Z-2d1a7d.md) — Dead-lettered message — pick up its intent
- [`deadmail-20260630T130327Z-6ab9d9`](https://github.com/kriskowal/garden/blob/journal2/jobs/doin/deadmail-20260630T130327Z-6ab9d9.md) — Dead-lettered message — pick up its intent
- [`deadmail-20260630T130328Z-d0b4bf`](https://github.com/kriskowal/garden/blob/journal2/jobs/doin/deadmail-20260630T130328Z-d0b4bf.md) — Dead-lettered message — pick up its intent
- [`deadmail-20260630T130331Z-f8c48b`](https://github.com/kriskowal/garden/blob/journal2/jobs/doin/deadmail-20260630T130331Z-f8c48b.md) — Dead-lettered message — pick up its intent
- [`deadmail-20260630T130337Z-77a4b6`](https://github.com/kriskowal/garden/blob/journal2/jobs/doin/deadmail-20260630T130337Z-77a4b6.md) — Dead-lettered message — pick up its intent
- [`deadmail-20260630T130342Z-3d065c`](https://github.com/kriskowal/garden/blob/journal2/jobs/doin/deadmail-20260630T130342Z-3d065c.md) — Dead-lettered message — pick up its intent
- [`deadmail-20260630T130645Z-41150b`](https://github.com/kriskowal/garden/blob/journal2/jobs/doin/deadmail-20260630T130645Z-41150b.md) — Dead-lettered message — pick up its intent
- [`deadmail-20260630T131326Z-170ca8`](https://github.com/kriskowal/garden/blob/journal2/jobs/doin/deadmail-20260630T131326Z-170ca8.md) — Dead-lettered message — pick up its intent
- [`deadmail-20260630T131328Z-414714`](https://github.com/kriskowal/garden/blob/journal2/jobs/doin/deadmail-20260630T131328Z-414714.md) — Dead-lettered message — pick up its intent
- [`deadmail-20260630T131332Z-964413`](https://github.com/kriskowal/garden/blob/journal2/jobs/doin/deadmail-20260630T131332Z-964413.md) — Dead-lettered message — pick up its intent
- [`deadmail-20260630T131334Z-8bea6c`](https://github.com/kriskowal/garden/blob/journal2/jobs/doin/deadmail-20260630T131334Z-8bea6c.md) — Dead-lettered message — pick up its intent
- [`deadmail-20260630T132317Z-53db60`](https://github.com/kriskowal/garden/blob/journal2/jobs/doin/deadmail-20260630T132317Z-53db60.md) — Dead-lettered message — pick up its intent
- [`deadmail-20260630T132319Z-ed40dc`](https://github.com/kriskowal/garden/blob/journal2/jobs/doin/deadmail-20260630T132319Z-ed40dc.md) — Dead-lettered message — pick up its intent
- [`deadmail-20260630T132321Z-ae9225`](https://github.com/kriskowal/garden/blob/journal2/jobs/doin/deadmail-20260630T132321Z-ae9225.md) — Dead-lettered message — pick up its intent
- [`deadmail-20260630T132323Z-7d63ce`](https://github.com/kriskowal/garden/blob/journal2/jobs/doin/deadmail-20260630T132323Z-7d63ce.md) — Dead-lettered message — pick up its intent
- [`deadmail-20260630T132326Z-ddbd76`](https://github.com/kriskowal/garden/blob/journal2/jobs/doin/deadmail-20260630T132326Z-ddbd76.md) — Dead-lettered message — pick up its intent
- [`deadmail-20260630T132331Z-47d035`](https://github.com/kriskowal/garden/blob/journal2/jobs/doin/deadmail-20260630T132331Z-47d035.md) — Dead-lettered message — pick up its intent
- [`deadmail-20260630T132341Z-8b3cb9`](https://github.com/kriskowal/garden/blob/journal2/jobs/doin/deadmail-20260630T132341Z-8b3cb9.md) — Dead-lettered message — pick up its intent
- [`deadmail-20260630T132346Z-0a5e2e`](https://github.com/kriskowal/garden/blob/journal2/jobs/doin/deadmail-20260630T132346Z-0a5e2e.md) — Dead-lettered message — pick up its intent
- [`deadmail-20260630T132349Z-fe728a`](https://github.com/kriskowal/garden/blob/journal2/jobs/doin/deadmail-20260630T132349Z-fe728a.md) — Dead-lettered message — pick up its intent
- [`deadmail-20260630T132357Z-67870a`](https://github.com/kriskowal/garden/blob/journal2/jobs/doin/deadmail-20260630T132357Z-67870a.md) — Dead-lettered message — pick up its intent
- [`deadmail-20260630T132408Z-2a898c`](https://github.com/kriskowal/garden/blob/journal2/jobs/doin/deadmail-20260630T132408Z-2a898c.md) — Dead-lettered message — pick up its intent
- [`deadmail-20260630T132417Z-ea18bd`](https://github.com/kriskowal/garden/blob/journal2/jobs/doin/deadmail-20260630T132417Z-ea18bd.md) — Dead-lettered message — pick up its intent
- [`deadmail-20260630T132422Z-a8a599`](https://github.com/kriskowal/garden/blob/journal2/jobs/doin/deadmail-20260630T132422Z-a8a599.md) — Dead-lettered message — pick up its intent
- [`deadmail-20260630T132424Z-6b6301`](https://github.com/kriskowal/garden/blob/journal2/jobs/doin/deadmail-20260630T132424Z-6b6301.md) — Dead-lettered message — pick up its intent

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
