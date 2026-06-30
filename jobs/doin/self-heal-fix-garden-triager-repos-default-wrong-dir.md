`scripts/jobs/triager.sh` line 25 defaults `GARDEN_REPOS` to `$GARDEN_ROOT/repos`, but that directory does not exist on this host. All bare clones (confirmed by `find /home/dckc -name 'dckc-jesc24.git'`) live in `$GARDEN_ROOT/worktrees/`. Change the default:

```
: "${GARDEN_REPOS:=$GARDEN_ROOT/repos}"
→
: "${GARDEN_REPOS:=$GARDEN_ROOT/worktrees}"
```

Failure signature: `FATAL: no bare clone at /home/dckc/repos/dckc-jesc24.git (clone the repo first)` — the `repos/` directory does not exist; `worktrees/dckc-jesc24.git` (and sibling bare clones `agoric-labs-jesc24.git`, `dctinybrain-jesc24.git`) are the canonical location. The `clone-keeper.sh` also tracks paths under `worktrees/`, confirming that `worktrees/` is the host convention for bare clones. No change to the unit template needed; fixing the script default covers all instances.

---
claim:
  host: g9
  gardener: 4
  claimed_at: 2026-06-30T01:46:45Z
