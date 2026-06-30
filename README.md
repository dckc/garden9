# Garden bulletin

_As of 2026-06-30T04:20:19Z_

## Latest

A deadmail probe completed cleanly — all three jesc24 repos are accessible and the probe passed. Work on [dctinybrain/jesc24#8](https://github.com/dctinybrain/jesc24/pull/8) is active, with four jobs (three attention directives and a review directive) still claimed in doin and a fresh monitor-auth journal entry filed. The notable signal this cycle is a large backpressure wave: roughly twenty jobs — the entire batch of `improve-clone-keeper-*` hardening tasks, the triager self-heals for missing bare clones, `improve-mentor-job-dedup`, additional PR #8 attention directives, and a deadmail — were released from doin back to todo, indicating gardeners claimed but could not complete them. The triager self-heal jobs implicate a missing bare clone as the likely root cause blocking the wider clone-keeper and triager work; those jobs remain open and unresolved.

## Parked for maintainer feedback

- [agoric-labs/dapp-stake-control#54](https://github.com/agoric-labs/dapp-stake-control/pull/54) — chore: log boardId of instance in coreEval (waiting 384d)
- [agoric-labs/dapp-stake-control#55](https://github.com/agoric-labs/dapp-stake-control/pull/55) — chore: punt on give.Retainer (waiting 384d)
## Messages to the maintainer

(no pending maintainer messages)

## Board
### todo (0)
(none)

### doin (35)
- [`dctinybrain-jesc24-pr8-2b9b686e`](https://github.com/kriskowal/garden/blob/journal2/jobs/doin/dctinybrain-jesc24-pr8-2b9b686e.md) — attention directive on dctinybrain/jesc24 PR #8
- [`dctinybrain-jesc24-pr8-43dac6e5`](https://github.com/kriskowal/garden/blob/journal2/jobs/doin/dctinybrain-jesc24-pr8-43dac6e5.md) — attention directive on dctinybrain/jesc24 PR #8
- [`dctinybrain-jesc24-pr8-8cf8658c`](https://github.com/kriskowal/garden/blob/journal2/jobs/doin/dctinybrain-jesc24-pr8-8cf8658c.md) — attention directive on dctinybrain/jesc24 PR #8
- [`dctinybrain-jesc24-pr8-a1945b78`](https://github.com/kriskowal/garden/blob/journal2/jobs/doin/dctinybrain-jesc24-pr8-a1945b78.md) — attention directive on dctinybrain/jesc24 PR #8
- [`dctinybrain-jesc24-pr8-e8334684`](https://github.com/kriskowal/garden/blob/journal2/jobs/doin/dctinybrain-jesc24-pr8-e8334684.md) — attention directive on dctinybrain/jesc24 PR #8
- [`dctinybrain-jesc24-pr8-review-6fb8daec`](https://github.com/kriskowal/garden/blob/journal2/jobs/doin/dctinybrain-jesc24-pr8-review-6fb8daec.md) — Review directive on dctinybrain/jesc24 PR #8
- [`deadmail-20260630T014217Z-74e560`](https://github.com/kriskowal/garden/blob/journal2/jobs/doin/deadmail-20260630T014217Z-74e560.md) — Dead-lettered message — pick up its intent
- [`deadmail-20260630T015024Z-fccead`](https://github.com/kriskowal/garden/blob/journal2/jobs/doin/deadmail-20260630T015024Z-fccead.md) — Dead-lettered message — pick up its intent
- [`deadmail-20260630T021236Z-051d3f`](https://github.com/kriskowal/garden/blob/journal2/jobs/doin/deadmail-20260630T021236Z-051d3f.md) — Dead-lettered message — pick up its intent
- [`deadmail-20260630T021237Z-220f67`](https://github.com/kriskowal/garden/blob/journal2/jobs/doin/deadmail-20260630T021237Z-220f67.md) — Dead-lettered message — pick up its intent
- [`deadmail-20260630T021237Z-c7fe04`](https://github.com/kriskowal/garden/blob/journal2/jobs/doin/deadmail-20260630T021237Z-c7fe04.md) — Dead-lettered message — pick up its intent
- [`deadmail-20260630T025027Z-252212`](https://github.com/kriskowal/garden/blob/journal2/jobs/doin/deadmail-20260630T025027Z-252212.md) — Dead-lettered message — pick up its intent
- [`deadmail-20260630T031324Z-018412`](https://github.com/kriskowal/garden/blob/journal2/jobs/doin/deadmail-20260630T031324Z-018412.md) — Dead-lettered message — pick up its intent
- [`deadmail-20260630T031325Z-3454f5`](https://github.com/kriskowal/garden/blob/journal2/jobs/doin/deadmail-20260630T031325Z-3454f5.md) — Dead-lettered message — pick up its intent
- [`deadmail-20260630T031325Z-8e3744`](https://github.com/kriskowal/garden/blob/journal2/jobs/doin/deadmail-20260630T031325Z-8e3744.md) — Dead-lettered message — pick up its intent
- [`deadmail-20260630T034324Z-31124d`](https://github.com/kriskowal/garden/blob/journal2/jobs/doin/deadmail-20260630T034324Z-31124d.md) — Dead-lettered message — pick up its intent
- [`deadmail-20260630T040326Z-e8f19e`](https://github.com/kriskowal/garden/blob/journal2/jobs/doin/deadmail-20260630T040326Z-e8f19e.md) — Dead-lettered message — pick up its intent
- [`deadmail-20260630T041406Z-03fe15`](https://github.com/kriskowal/garden/blob/journal2/jobs/doin/deadmail-20260630T041406Z-03fe15.md) — Dead-lettered message — pick up its intent
- [`deadmail-20260630T041407Z-432bcb`](https://github.com/kriskowal/garden/blob/journal2/jobs/doin/deadmail-20260630T041407Z-432bcb.md) — Dead-lettered message — pick up its intent
- [`deadmail-20260630T041407Z-517d74`](https://github.com/kriskowal/garden/blob/journal2/jobs/doin/deadmail-20260630T041407Z-517d74.md) — Dead-lettered message — pick up its intent
- [`improve-clone-keeper-auto-bootstrap`](https://github.com/kriskowal/garden/blob/journal2/jobs/doin/improve-clone-keeper-auto-bootstrap.md) — In scripts/jobs/clone-keeper.sh, the keep_clone function currently logs
- [`improve-clone-keeper-auto-init`](https://github.com/kriskowal/garden/blob/journal2/jobs/doin/improve-clone-keeper-auto-init.md) — In scripts/jobs/clone-keeper.sh, extend the GARDEN_TRACKED_CLONES entry forma...
- [`improve-clone-keeper-auto-reclone`](https://github.com/kriskowal/garden/blob/journal2/jobs/doin/improve-clone-keeper-auto-reclone.md) — In scripts/jobs/clone-keeper.sh, the keep_clone function (lines 78-81) logs W...
- [`improve-clone-keeper-bootstrap-missing-bare-clone`](https://github.com/kriskowal/garden/blob/journal2/jobs/doin/improve-clone-keeper-bootstrap-missing-bare-clone.md) — Harden scripts/jobs/clone-keeper.sh so a missing tracked bare clone is determ...
- [`improve-clone-keeper-missing-init`](https://github.com/kriskowal/garden/blob/journal2/jobs/doin/improve-clone-keeper-missing-init.md) — scripts/jobs/clone-keeper.sh warns and skips when a tracked bare clone path i...
- [`improve-clone-keeper-reclone-missing`](https://github.com/kriskowal/garden/blob/journal2/jobs/doin/improve-clone-keeper-reclone-missing.md) — In scripts/jobs/clone-keeper.sh, the keep_clone function (line 78-81) warns and
- [`improve-clone-keeper-reclone`](https://github.com/kriskowal/garden/blob/journal2/jobs/doin/improve-clone-keeper-reclone.md) — Harden scripts/jobs/clone-keeper.sh against a permanently missing bare clone.
- [`improve-clone-keeper-recreate-missing`](https://github.com/kriskowal/garden/blob/journal2/jobs/doin/improve-clone-keeper-recreate-missing.md) — scripts/ clone-keeper (scripts/jobs/clone-keeper.sh or equivalent) currently
- [`improve-clone-keeper-self-heal`](https://github.com/kriskowal/garden/blob/journal2/jobs/doin/improve-clone-keeper-self-heal.md) — In scripts/jobs/clone-keeper.sh, extend the GARDEN_TRACKED_CLONES line format
- [`improve-clone-keeper-self-init`](https://github.com/kriskowal/garden/blob/journal2/jobs/doin/improve-clone-keeper-self-init.md) — In scripts/jobs/clone-keeper.sh, extend the GARDEN_TRACKED_CLONES entry forma...
- [`improve-clone-keeper-self-reclone`](https://github.com/kriskowal/garden/blob/journal2/jobs/doin/improve-clone-keeper-self-reclone.md) — In scripts/jobs/clone-keeper.sh, extend GARDEN_TRACKED_CLONES from a 3-column...
- [`improve-mentor-job-dedup`](https://github.com/kriskowal/garden/blob/journal2/jobs/doin/improve-mentor-job-dedup.md) — In scripts/jobs/handlers/mentor-claude.sh, the loop that parses JOB blocks ca...
- [`self-heal-fix-garden-triager-agoric-labs-jesc24-triager-skip-missing-bare-clone`](https://github.com/kriskowal/garden/blob/journal2/jobs/doin/self-heal-fix-garden-triager-agoric-labs-jesc24-triager-skip-missing-bare-clone.md) — In scripts/jobs/triager.sh line 32, change the hard die on a missing bare clo...
- [`self-heal-fix-garden-triager-dctinybrain-jesc24-repos-default-points-worktrees`](https://github.com/kriskowal/garden/blob/journal2/jobs/doin/self-heal-fix-garden-triager-dctinybrain-jesc24-repos-default-points-worktrees.md) — Fix the wrong GARDEN_REPOS default in scripts/jobs/triager.sh (line 25) and s...
- [`self-heal-fix-garden-triager-repos-default-wrong-dir`](https://github.com/kriskowal/garden/blob/journal2/jobs/doin/self-heal-fix-garden-triager-repos-default-wrong-dir.md) — scripts/jobs/triager.sh line 25 defaults GARDEN_REPOS to $GARDEN_ROOT/repos, ...

### tada (14)
- [`dctinybrain-jesc24-pr8-4ac3221c`](https://github.com/kriskowal/garden/blob/journal2/jobs/tada/dctinybrain-jesc24-pr8-4ac3221c.md) — Added ECMA-262 provenance note to theories/jessie/quasi_jessie.v in commit 18...
- [`deadmail-20260630T035322Z-1d8a06`](https://github.com/kriskowal/garden/blob/journal2/jobs/tada/deadmail-20260630T035322Z-1d8a06.md) — All three repos are accessible and the probe passes. Here is the completion r...
- [`improve-triager-skip-on-missing-clone`](https://github.com/kriskowal/garden/blob/journal2/jobs/tada/improve-triager-skip-on-missing-clone.md) — Completion report:
- [`improve-clone-keeper-auto-reclone-missing`](https://github.com/kriskowal/garden/blob/journal2/jobs/tada/improve-clone-keeper-auto-reclone-missing.md) — Push succeeded on first attempt.
- [`deadmail-20260630T024255Z-6329b9`](https://github.com/kriskowal/garden/blob/journal2/jobs/tada/deadmail-20260630T024255Z-6329b9.md) — The maintainer inbox is still unavailable, creating another deadmail (2026063...
- … and 9 more

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
