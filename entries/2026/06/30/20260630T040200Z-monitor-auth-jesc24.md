---
type: message
date: 2026-06-30
---

Maintainer authorized (via inbox message monitor-auth-jesc24.md) comment-watcher arming
for all three jesc24 repos: agoric-labs/jesc24, dctinybrain/jesc24, and dckc/jesc24.
All are the maintainer's own repos; only dckc and dctinybrain are trusted senders.
comment-repos/ entries already existed for all three slugs.

Separately: self-test BLIND false alarm for agoric-labs-jesc24 diagnosed and fixed.
Root cause: slug agoric-labs-jesc24 parsed as agoric/labs-jesc24 (404) because owner
agoric-labs contains a dash, violating the "no-dash owner" assumption. Fixed by:
1. Extending comment-watcher.sh to read canonical owner/name from comment-repos/<slug>
   file content when non-empty (committed to main2 as eb6e8fdd3).
2. Populating journal/comment-repos/agoric-labs-jesc24 with "agoric-labs/jesc24"
   (committed to journal2). The fix takes effect on next garden deploy.
Self-test marker suppressed until deploy lands to prevent further false alarms.
