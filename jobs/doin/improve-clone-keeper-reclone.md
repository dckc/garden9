Harden `scripts/jobs/clone-keeper.sh` against a permanently missing bare clone.

Current behaviour (line 78-81): when `git rev-parse --git-dir` fails on the tracked directory, the keeper logs a WARN and skips — indefinitely. On host `g9` the clone `worktrees/endojs-endo.git` does not exist, so this WARN fires every ~30 min with no recovery path.

Two changes, both in `clone-keeper.sh`:

1. **Extend `GARDEN_TRACKED_CLONES` to a 4-field format**: `<dir>|<remote>|<branch>|<url>`.
   The 4th field is optional for backwards compatibility (empty = no auto-create). Update the
   default to `worktrees/endojs-endo.git|origin|master|https://github.com/endojs/endo.git`.
   Update the `while IFS='|' read` loop to capture a 4th variable `url`.

2. **In `keep_clone`, attempt re-clone when the directory is missing and a URL is known**:
   Replace the early-return WARN block (lines 78-81) with:
   ```
   if ! git -C "$abs" rev-parse --git-dir >/dev/null 2>&1; then
     if [ -n "$url" ]; then
       log "tracked clone $dir missing at $abs; re-cloning from $url"
       mkdir -p "$(dirname "$abs")"
       if git clone --bare -q "$url" "$abs"; then
         log "$dir: bare clone created from $url"
       else
         log "WARN: $dir re-clone from $url failed; skipping"
         return 0
       fi
     else
       log "WARN: tracked clone $dir is missing or not a git repo at $abs and no URL given; skipping"
       return 0
     fi
   fi
   ```
   Execution then falls through to the normal fetch+fast-forward path.

Why: the current WARN fires forever on `g9` because `endojs-endo.git` was never created there.
With this change the first tick after the fix creates the clone and subsequent ticks stay quiet
on the no-op path — consistent with the keeper's own "quiet on the no-op path" design goal.

<!-- garden-reaped: 3 -->

---
claim:
  host: g9
  gardener: 5
  claimed_at: 2026-06-30T05:14:25Z
