Symptom: `$GARDEN_STATE/inbox/` has accumulated 638 MB of orphaned local journal clone directories (159 entries, each ~5 MB) from completed jobs, filling the disk to 100% and causing `repo-watcher.sh` to fail when `git config` cannot write its `.lock` file (ENOSPC, exit 4).

Root cause: `complete-job.sh` removes the inbox from the git-tracked journal via `git rm -rq "inbox/$base"` but never removes the corresponding local clone at `$GARDEN_STATE/inbox/$base/` that `inbox-read.sh` created. The reaper path (line 250 of `reaper.sh`) has the same gap when it reclaims a stale job.

Fix:

1. In `scripts/jobs/complete-job.sh`, immediately after the existing line
   `[ -d "$DIR/inbox/$base" ] && git -C "$DIR" rm -rq "inbox/$base"`,
   add:
   ```bash
   rm -rf "${GARDEN_STATE:?}/inbox/$base"
   ```

2. In `scripts/jobs/reaper.sh`, immediately after the existing line
   `[ -d "$DIR/inbox/$spine" ] && git -C "$DIR" rm -qr "inbox/$spine"`,
   add:
   ```bash
   rm -rf "${GARDEN_STATE:?}/inbox/$spine"
   ```

3. Add a one-time forward-sweep in `reaper.sh`'s janitor loop (or as a standalone
   initializer block): scan `$GARDEN_STATE/inbox/` for directories whose name does
   NOT match an active job in `$DIR/jobs/doin/`, and `rm -rf` each orphan. This
   reclaims the existing 638 MB without a manual intervention. Guard with
   `[ -d "$GARDEN_STATE/inbox" ]` before looping.

Deliver as a gardener commit to `origin/main2`. After landing, the disk should recover ~630 MB and `garden-repo-watcher` will stop failing.
