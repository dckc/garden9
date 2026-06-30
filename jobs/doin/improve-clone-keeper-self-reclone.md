In `scripts/jobs/clone-keeper.sh`, extend `GARDEN_TRACKED_CLONES` from a 3-column format (`dir|remote|branch`) to a 4-column format (`dir|remote|branch|url`), keeping the 4th field optional for backward compatibility.

In `keep_clone`, replace the current WARN-and-return-0 block (lines 78–81) that fires when `rev-parse --git-dir` fails with a self-healing path: if a `url` column is present, run `git clone --bare -q "$url" "$abs"` and log the recovery; if `url` is absent, keep the existing WARN-and-skip behaviour so old entries remain valid.

Update the default value at line 47:
  `GARDEN_TRACKED_CLONES:=worktrees/endojs-endo.git|origin|master|https://github.com/endojs/endo`

Update `scripts/jobs/test/clone-keeper-test.sh` to cover the re-clone path: provide a 4-column entry whose directory is absent, assert that `keep_clone` calls `git clone --bare`, and verify the directory is created.

Why: the missing `worktrees/endojs-endo.git` bare clone is the only failure in this digest, and it will repeat every 30 minutes until resolved by hand. Self-healing via `git clone --bare` is purely deterministic (no LLM judgment), and the URL is stable and known. This moves clone restoration off agent discretion and onto the script.

<!-- garden-reaped: 2 -->

---
claim:
  host: g9
  gardener: 2
  claimed_at: 2026-06-30T04:07:04Z
