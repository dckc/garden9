In `scripts/jobs/common.sh`, function `ensure_clone` (around line 541), the two unconditional `git -C "$dir" config user.name` / `user.email` writes run on every timer tick even when the identity is already set. When git cannot create `.git/config.lock` (transient filesystem hiccup), it exits 4; `set -euo pipefail` in the caller (`gardener-scaler.sh`) propagates that as the script's exit, causing the repeated service failure seen here (exit code 4, error: "failed to write new configuration file .../gardener-scaler/journal/.git/config.lock").

Fix: before the two `git config` writes, read the current values; skip the write when they already match. Example:

```bash
local want_name want_email cur_name cur_email
want_name="$(bot_name)"; want_email="$(bot_email)"
cur_name="$(git -C "$dir" config user.name 2>/dev/null || true)"
cur_email="$(git -C "$dir" config user.email 2>/dev/null || true)"
if [ "$cur_name" != "$want_name" ] || [ "$cur_email" != "$want_email" ]; then
  git -C "$dir" config user.name  "$want_name"
  git -C "$dir" config user.email "$want_email"
fi
```

This eliminates the needless `.git/config.lock` creation on every tick, making the write idempotent and removing the recurring exit-4 failure path. The `ensure_clone` comment ("the config write is serialized … so concurrent producers don't … collide on `.git/config`") still holds: the guard read uses `2>/dev/null || true` so it is non-fatal, and the write path remains inside the clone_lock critical section.
