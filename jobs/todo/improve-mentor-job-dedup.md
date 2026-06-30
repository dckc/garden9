In `scripts/jobs/handlers/mentor-claude.sh`, the loop that parses JOB blocks calls `post-job.sh "$base"` with no check for near-duplicate slugs. `post-job.sh` is idempotent only on exact-match, so LLM slug drift across ticks creates O(N) todo files for the same issue (current evidence: 8 `improve-clone-keeper-*` variants in `journal/jobs/todo/`).

Fix: after extracting `$base` from each JOB block, derive a slug prefix by taking the first three dash-segments (e.g., `improve-clone-keeper` from any `improve-clone-keeper-*`). Before calling `post-job.sh`, check whether any file matching `${prefix}-*.md` already exists under `jobs/todo/`, `jobs/doin/`, or `jobs/tada/` in the synced clone. If any match, log a skip and do not call `post-job.sh`. This is a deterministic grep/find with no LLM involvement and fits naturally in the existing parse loop in `mentor-claude.sh` (the `elif [ -n "$base" ]` / `ENDJOB` branch).

Also consolidate the 8 existing duplicate todo files into one canonical entry (e.g., `improve-clone-keeper-reclone.md`) and delete the other seven so the board is clean for the gardener that picks it up.

<!-- garden-reaped: 4 -->
