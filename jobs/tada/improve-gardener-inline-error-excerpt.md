Pushed successfully on the first try.

---

**Completion report**

**What changed:** `scripts/jobs/gardener.sh` lines 287-293. The single `printf | journal-entry.sh` call was replaced with a subshell block that:
1. Prints the existing one-line summary (unchanged text, still references the blob SHA and escalation status).
2. Appends a `\n--- output excerpt ---\n` fence.
3. Pipes the first 2048 bytes of `$capture` via `head -c 2048`.
4. Closes with `\n--- end excerpt ---\n`.

The whole block feeds into the same `GARDEN_ROLE=gardener journal-entry.sh error` invocation, so the excerpt is committed and pushed with the entry itself. The `$capture` file is still present at this point (it is removed two lines later at line 296).

**Why this fixes the gap:** The blob SHA in the old message referred to a loose object in the gardener's own `$GARDEN_STATE/gardener-N/journal` clone — never pushed to `origin`, never visible to the mentor's separate clone or to any cross-host reader. The inline excerpt is part of the entry body, carried in the commit tree, and therefore present in every clone that fetches `origin/journal2`.

**No follow-ups identified.** The existing SHA reference and inbox escalation are retained as durable backups for cases where the inline excerpt is truncated; the change is purely additive.
