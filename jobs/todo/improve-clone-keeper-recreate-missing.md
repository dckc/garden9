`scripts/` clone-keeper (`scripts/jobs/clone-keeper.sh` or equivalent) currently
WARNs and skips when a tracked bare clone (`worktrees/endojs-endo.git`) is absent
or not a git repo.  Instead it should recreate the bare clone from the configured
upstream URL (e.g. `git clone --bare <upstream> <path>`), then continue — the
same way it would handle any fresh host.  This turns a "skip forever until someone
notices" failure into a self-healing one.  The WARN line that surfaced this:

  clone-keeper: WARN: tracked clone worktrees/endojs-endo.git is missing or not
  a git repo at /home/dckc/worktrees/endojs-endo.git; skipping

<!-- garden-reaped: 1 -->
