#!/bin/bash
# gardener-scaler.sh — reconcile this host's gardener pool to journal state.
#
# Usage: gardener-scaler.sh
#
# The journal's hosts/<host> file declares how many concurrent gardeners this
# host should run (its local concurrency limit). This timer-driven service —
# the sibling of repo-watcher, but for worker count rather than the watch set —
# syncs the journal and scales the local garden-gardener@N pool to match,
# starting missing instances and stopping extras. Absent or unparsable → leave
# the pool unchanged (a no-op WARN); only an explicit `gardeners: 0` scales to zero.

set -euo pipefail
HERE="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
# shellcheck source=common.sh
source "$HERE/common.sh"
GARDEN_TAG="gardener-scaler"

DIR="${GARDEN_SCALER_CLONE:-$GARDEN_STATE/gardener-scaler/journal}"
ensure_clone "$DIR"
sync_clone "$DIR"

host="$GARDEN_HOST"
f="$DIR/hosts/$host"
want=""
if [ -f "$f" ]; then
  v="$(sed -n 's/^gardeners:[[:space:]]*//p' "$f" | head -1)"
  [[ "$v" =~ ^[0-9]+$ ]] && want="$v"
fi

# "Cannot determine desired count" (absent hosts/<host>, or a malformed/missing
# gardeners: line) is a NO-OP, not a scale-to-0: tearing the whole local fleet
# down is exactly wrong when the desired-count signal is structurally missing.
# Leave the pool unchanged and warn; only an explicitly-read `gardeners: 0` is
# allowed to scale to zero. (Even an explicit scale-down no longer SIGTERMs an
# in-flight handler: install-units.sh scale gates `disable --now` on the busy
# marker, deferring a mid-job gardener to a later tick — but a structurally-absent
# signal must still not trigger that path at all.)
#
# A missing worker-count signal is a structurally steady state on an un-armed
# host, not a transient: warning every tick floods journalctl (~30+/hour). So log
# the WARN only on TRANSITION into the undeterminable state, tracked by a marker
# under $GARDEN_STATE. The marker exists exactly while we are silently no-op'ing;
# resolving the signal clears it so the next lapse warns once again.
undet_marker="$GARDEN_STATE/scaler/last-undeterminable-$host"
if [ -z "$want" ]; then
  if [ ! -e "$undet_marker" ]; then
    log "WARN host '$host' desired gardeners undeterminable (missing/unparsable hosts/$host); leaving pool unchanged (silencing until resolved)"
    mkdir -p "$(dirname "$undet_marker")" 2>/dev/null || true
    : > "$undet_marker" 2>/dev/null || true
  fi
  exit 0
fi
# Signal is determinable again: clear the marker (and note the recovery) so a
# future lapse transitions back into a single fresh WARN.
if [ -e "$undet_marker" ]; then
  log "host '$host' desired gardeners signal resolved; resuming"
  rm -f "$undet_marker" 2>/dev/null || true
fi
log "host '$host' desired gardeners: $want"

# delegate the actual enable/disable to the installer's scale path (which uses
# the same mockable unit_ctl), keeping one place that knows how to scale.
"$HERE/install-units.sh" scale "$want"
