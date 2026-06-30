In `scripts/jobs/clone-keeper.sh`, extend the `GARDEN_TRACKED_CLONES` entry format from
`<dir>|<remote>|<branch>` to `<dir>|<remote>|<branch>|<upstream-url>` (the fourth field
is optional; existing entries without it keep current behavior).

In `keep_clone()`, when the `rev-parse --git-dir` check fails AND a non-empty `<upstream-url>`
was provided, replace the current WARN+skip with:

  log "bare clone $dir missing; initializing from $upstream_url"
  git clone --bare "$upstream_url" "$abs"

and then continue with the fetch/fast-forward logic rather than returning.  If the clone-creation
itself fails, log the error and return 0 (same resilient pattern used for failed fetches).

Also update the default in the script:
  GARDEN_TRACKED_CLONES:=worktrees/endojs-endo.git|origin|master|https://github.com/endojs/endo.git

This eliminates the recurring `WARN: tracked clone ... is missing` that fires every ~30 min and
requires a human or agent to notice and manually `git clone --bare` the missing clone into place.

<!-- garden-reaped: 3 -->
