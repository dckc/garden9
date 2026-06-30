In `scripts/jobs/deadmail.sh`, before calling `post-job.sh` for a dead-letter message, check whether the message is a POISON report whose `Original job base:` line starts with `deadmail-`. If so, log a warning and retire the dead-letter entry without promoting it to yet another deadmail job. The current behavior creates an infinite re-promotion cycle: a failed deadmail job is POISON'd by the reaper → the POISON notice is sent to `maintainer` → the maintainer inbox is torn down → the message is dead-lettered → `deadmail.sh` promotes it to a NEW deadmail job → that job also fails → repeat. Today's digest shows 20+ gardener error entries all cycling on this pattern, each leaving a job in `doin` for the reaper. A gardener cannot resolve a POISON notice about a deadmail job; discarding these terminal notices at promotion time (with a log line) breaks the loop without losing recoverable intent.

---
claim:
  host: g9
  gardener: 1
  claimed_at: 2026-06-30T13:54:53Z
