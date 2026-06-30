In `scripts/jobs/clone-keeper.sh`, the `keep_clone` function (lines 78-81) logs WARN and returns 0 when the tracked bare-clone directory is absent. This fires every ~30 min indefinitely; healing requires a human or agent to notice the journal entry and run `git clone --bare` by hand.

Harden it by extending `GARDEN_TRACKED_CLONES` from a 3-field to a 4-field format:
  `dir|remote|branch|url`

The 4th field is backward-compatible (empty = current skip behaviour). When `url` is non-empty and `abs` does not exist (or fails `rev-parse --git-dir`), run:
  `git clone --bare "$url" "$abs"`
and then proceed with the normal fetch+fast-forward path. Log the reclone at the same level as a fast-forward. If the clone fails, log the error and return 0 (never abort the rest of the loop).

The existing default value in `GARDEN_TRACKED_CLONES` becomes:
  `worktrees/endojs-endo.git|origin|master|https://github.com/endojs/endo`
(or the SSH URL if the host uses SSH remotes — check `git -C worktrees/endojs-endo.git remote get-url origin` on a host where the clone still exists, or read the journal/config for the canonical upstream URL).

Also update the test file `scripts/jobs/test/clone-keeper-test.sh` to cover the missing-clone-with-url path (reclone attempted) and the missing-clone-without-url path (WARN+skip as before).

---
claim:
  host: g9
  gardener: 2
  claimed_at: 2026-06-30T01:46:27Z
