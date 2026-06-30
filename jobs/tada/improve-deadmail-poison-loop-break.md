Pushed successfully after one rebase. 

---

**Completion report**

**What changed:**
- `scripts/jobs/deadmail.sh`: Added a poison-cycle guard in the dead-letter promotion loop. Before calling `post-job.sh`, the script now checks whether the dead-letter message contains a line matching `^Original job base: deadmail-`. If so, it logs a `WARN` line, retires the entry via `git rm` + `commit_and_push` (with the same CAS retry loop used for normal retires), and `continue`s to the next entry without promoting. This breaks the loop: POISON notice about a deadmail job → dead-letter → **retired here** (was: promoted to new deadmail job → fails → POISON again).

- `scripts/jobs/test/run-test.sh`: Added SUBTEST 16 case (4) that seeds a dead-lettered POISON notice with `Original job base: deadmail-some-old-msg`, runs `deadmail.sh`, and asserts (a) no new `deadmail-poison-cycle-*` job was created in `jobs/todo` and (b) the dead-letter entry was retired from `inbox/dead`.

**No follow-ups required.** The fix is targeted and does not affect normal (non-POISON, non-deadmail-origin) dead-letter promotion.
