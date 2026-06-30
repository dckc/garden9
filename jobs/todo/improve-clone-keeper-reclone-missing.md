In `scripts/jobs/clone-keeper.sh`, the `keep_clone` function (line 78-81) warns and
returns when the bare clone directory is absent, but cannot recover because the
upstream URL is not stored anywhere in the script.

Change:
1. Extend `GARDEN_TRACKED_CLONES` to a 4-field format:
   `<dir>|<remote>|<branch>|<url>`
   The 4th field is optional; existing 3-field entries are unchanged.
2. In `keep_clone`, when `rev-parse --git-dir` fails AND a URL is supplied, run
   `git clone --bare "$url" "$abs"` (bounded by `GARDEN_FETCH_TIMEOUT`) instead of
   logging WARN and returning. Log the reclone action at the same level as a
   fast-forward, then fall through to the normal fetch+fast-forward path.
3. Update the default value of `GARDEN_TRACKED_CLONES` at line 47 to include the
   upstream URL for the endo clone:
   `worktrees/endojs-endo.git|origin|master|https://github.com/endojs/endo`
4. If the URL is absent and the directory is missing, keep the existing WARN+skip
   (nothing regresses for URL-less entries).

Why: `worktrees/endojs-endo.git` is currently absent on host `g9`, causing a
WARN every 30 minutes with no recovery. The clone-keeper's purpose is to keep bare
clones fresh without agent intervention; a missing clone should be recreated
deterministically, not left broken until a human notices.

<!-- garden-reaped: 1 -->
