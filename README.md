# Garden bulletin

_As of 2026-06-30T03:23:35Z_

## Latest

Seven new directives for [dctinybrain/jesc24#8](https://github.com/dctinybrain/jesc24/pull/8) landed this cycle — six attention items and one review — making that PR the dominant signal on the board. Alongside them, three self-heal jobs arrived targeting `scripts/jobs/triager.sh`: a wrong `GARDEN_REPOS` default (pointing at `$GARDEN_ROOT/repos` instead of `$GARDEN_ROOT/worktrees`) and bare-clone skip-rather-than-die gaps for both the agoric-labs and dctinybrain jesc24 repos. A dead-lettered message also queued for pickup. Nothing was claimed or completed in this window; the gardener pool is idle against a 23-item todo queue that is now weighted toward jesc24 PR attention and clone-keeper hardening work.

## Parked for maintainer feedback

- [agoric-labs/dapp-stake-control#54](https://github.com/agoric-labs/dapp-stake-control/pull/54) — chore: log boardId of instance in coreEval (waiting 384d)
- [agoric-labs/dapp-stake-control#55](https://github.com/agoric-labs/dapp-stake-control/pull/55) — chore: punt on give.Retainer (waiting 384d)
## Messages to the maintainer

(no pending maintainer messages)

## Board
### todo (0)
(none)

### doin (32)
- [`dctinybrain-jesc24-pr8-2b9b686e`](https://github.com/kriskowal/garden/blob/journal2/jobs/doin/dctinybrain-jesc24-pr8-2b9b686e.md) — attention directive on dctinybrain/jesc24 PR #8
- [`dctinybrain-jesc24-pr8-43dac6e5`](https://github.com/kriskowal/garden/blob/journal2/jobs/doin/dctinybrain-jesc24-pr8-43dac6e5.md) — attention directive on dctinybrain/jesc24 PR #8
- [`dctinybrain-jesc24-pr8-4ac3221c`](https://github.com/kriskowal/garden/blob/journal2/jobs/doin/dctinybrain-jesc24-pr8-4ac3221c.md) — attention directive on dctinybrain/jesc24 PR #8
- [`dctinybrain-jesc24-pr8-8cf8658c`](https://github.com/kriskowal/garden/blob/journal2/jobs/doin/dctinybrain-jesc24-pr8-8cf8658c.md) — attention directive on dctinybrain/jesc24 PR #8
- [`dctinybrain-jesc24-pr8-a1945b78`](https://github.com/kriskowal/garden/blob/journal2/jobs/doin/dctinybrain-jesc24-pr8-a1945b78.md) — attention directive on dctinybrain/jesc24 PR #8
- [`dctinybrain-jesc24-pr8-e8334684`](https://github.com/kriskowal/garden/blob/journal2/jobs/doin/dctinybrain-jesc24-pr8-e8334684.md) — attention directive on dctinybrain/jesc24 PR #8
- [`dctinybrain-jesc24-pr8-review-6fb8daec`](https://github.com/kriskowal/garden/blob/journal2/jobs/doin/dctinybrain-jesc24-pr8-review-6fb8daec.md) — Review directive on dctinybrain/jesc24 PR #8
- [`deadmail-20260630T014217Z-74e560`](https://github.com/kriskowal/garden/blob/journal2/jobs/doin/deadmail-20260630T014217Z-74e560.md) — Dead-lettered message — pick up its intent
- [`deadmail-20260630T015024Z-fccead`](https://github.com/kriskowal/garden/blob/journal2/jobs/doin/deadmail-20260630T015024Z-fccead.md) — Dead-lettered message — pick up its intent
- [`deadmail-20260630T021236Z-051d3f`](https://github.com/kriskowal/garden/blob/journal2/jobs/doin/deadmail-20260630T021236Z-051d3f.md) — Dead-lettered message — pick up its intent
- [`deadmail-20260630T021237Z-220f67`](https://github.com/kriskowal/garden/blob/journal2/jobs/doin/deadmail-20260630T021237Z-220f67.md) — Dead-lettered message — pick up its intent
- [`deadmail-20260630T021237Z-c7fe04`](https://github.com/kriskowal/garden/blob/journal2/jobs/doin/deadmail-20260630T021237Z-c7fe04.md) — Dead-lettered message — pick up its intent
- [`deadmail-20260630T024255Z-6329b9`](https://github.com/kriskowal/garden/blob/journal2/jobs/doin/deadmail-20260630T024255Z-6329b9.md) — Dead-lettered message — pick up its intent
- [`deadmail-20260630T025027Z-252212`](https://github.com/kriskowal/garden/blob/journal2/jobs/doin/deadmail-20260630T025027Z-252212.md) — Dead-lettered message — pick up its intent
- [`deadmail-20260630T031324Z-018412`](https://github.com/kriskowal/garden/blob/journal2/jobs/doin/deadmail-20260630T031324Z-018412.md) — Dead-lettered message — pick up its intent
- [`deadmail-20260630T031325Z-3454f5`](https://github.com/kriskowal/garden/blob/journal2/jobs/doin/deadmail-20260630T031325Z-3454f5.md) — Dead-lettered message — pick up its intent
- [`deadmail-20260630T031325Z-8e3744`](https://github.com/kriskowal/garden/blob/journal2/jobs/doin/deadmail-20260630T031325Z-8e3744.md) — Dead-lettered message — pick up its intent
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
agoric-labs-jesc24 dckc-jesc24 dctinybrain-jesc24

## Hosts
- [g9](https://github.com/kriskowal/garden/blob/journal2/hosts/g9): 5 gardeners
