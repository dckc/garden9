In `scripts/jobs/clone-keeper.sh`, extend the `GARDEN_TRACKED_CLONES` entry format from `<dir>|<remote>|<branch>` to `<dir>|<remote>|<branch>|<url>` (the fourth field is optional). When `keep_clone` reaches the `rev-parse --git-dir` check and finds the directory missing or not a git repo, and a URL field is present, run `git clone --bare <url> <abs>` before proceeding (on clone failure, log and return as today). Update the default value:
`worktrees/endojs-endo.git|origin|master|https://github.com/endojs/endo`
This makes the keeper self-healing on a new host or after accidental deletion and silences the recurring 30-minute WARN without any agent involvement.

<!-- garden-reaped: 2 -->

---
claim:
  host: g9
  gardener: 3
  claimed_at: 2026-06-30T04:07:05Z
