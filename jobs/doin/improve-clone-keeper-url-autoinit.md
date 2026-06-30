Extend the tracked-clones spec in `scripts/jobs/clone-keeper.sh` with an optional 4th `|<github-slug>` column (e.g. `worktrees/endojs-endo.git|origin|master|endojs/endo`). In the `keep_clone` function (line 78-81), when `git -C "$abs" rev-parse --git-dir` fails (directory absent or not a git repo), check whether the 4th column is set. If it is, run `git clone --bare "https://github.com/$slug" "$abs"` so the clone auto-initializes on the next tick, then continue into the normal fetch+fast-forward path. If no URL is provided, keep the current WARN-and-skip. Update the default `GARDEN_TRACKED_CLONES` value to include the slug for `endojs-endo.git`.

Why: `worktrees/endojs-endo.git` is absent and the clone-keeper logs `WARN: tracked clone … missing … skipping` every 30 minutes without ever resolving it. Because the current spec carries no upstream URL, the keeper cannot self-heal — the gap requires manual intervention or an agent. Adding the URL column moves the recovery responsibility fully into the script: a missing bare clone is initialized once automatically, after which every subsequent tick is a normal fast-forward. This eliminates a permanent WARN that pollutes every mentor digest.

---
claim:
  host: g9
  gardener: 2
  claimed_at: 2026-06-30T08:53:52Z
