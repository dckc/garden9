Completion report:

**What was done:** Changed line 32 of `scripts/jobs/triager.sh` from a fatal `die` to a clean `exit 0` with an informative log message when the bare clone directory is absent. The change follows the established "skip cleanly when prerequisite is absent" pattern already applied to `regenerate-topics-counts`, `library-source-drift-scan`, and `library-link-scan`.

**What changed:** `scripts/jobs/triager.sh` — one line replacement; committed as `triager: skip cleanly when bare clone is absent` and pushed to `origin/main2` (SHA `b5b340e45`).

**Effect:** `garden-triager@dctinybrain-jesc24.service`, `garden-triager@agoric-labs-jesc24.service`, and `garden-triager@dckc-jesc24.service` will no longer be marked Failed every 2 minutes when their bare clones have not yet been created by `clone-keeper`. They will instead log a skip message and exit cleanly until the clone exists.

**Follow-ups:** None required. The note in the job about `clone-keeper` creating the bare clone eventually covers the recovery path; no additional coordination needed.
