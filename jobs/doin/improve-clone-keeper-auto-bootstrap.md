In `scripts/jobs/clone-keeper.sh`, the `keep_clone` function currently logs
`WARN: tracked clone ... is missing or not a git repo` and returns 0, requiring
manual re-creation of the bare clone.

Extend `GARDEN_TRACKED_CLONES` to support an optional 4th `|<url>` field.  When
the bare-clone directory is absent and a URL is present, bootstrap it
automatically:

    git clone --bare "$url" "$abs"
    git -C "$abs" config --unset-all remote.origin.fetch

(The `--unset-all remote.origin.fetch` step preserves the existing invariant that
`git fetch origin <branch>` advances FETCH_HEAD only, not branch refs, so the
subsequent fast-forward logic is unchanged.)

Update the default to include the upstream URL:

    GARDEN_TRACKED_CLONES="worktrees/endojs-endo.git|origin|master|https://github.com/endojs/endo"

Add a test case to `scripts/jobs/test/clone-keeper-test.sh` for the bootstrap
path: remove `$CLONE` after `setup_fixture`, set a 4-field entry in
`GARDEN_TRACKED_CLONES` pointing at the local `$UP`, run the keeper, and assert
the clone was created and `local_master` equals upstream tip.

Why: `worktrees/endojs-endo.git` is currently absent, causing a WARN on every
~30-minute tick (Jun 29 23:30:23) with no recovery.  A bare-clone bootstrap is
deterministic, needs no LLM judgment, and removes the manual step entirely.

<!-- garden-reaped: 3 -->

---
claim:
  host: g9
  gardener: 4
  claimed_at: 2026-06-30T05:13:30Z
