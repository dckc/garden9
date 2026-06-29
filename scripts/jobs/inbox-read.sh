#!/bin/bash
# inbox-read.sh — drain a job doer's inbox, CAS-moving unread → read.
#
# Usage: inbox-read.sh <doer>
#   Prints each unread message and atomically moves it to inbox/<doer>/read/
#   via a CAS push, mirroring the board's claim move. The doer is the sole
#   mover of its own inbox, so the move always eventually lands; a rejected
#   push (a sender added a new unread message meanwhile) just means re-sync and
#   move whatever is still unread. Exit status is the number of messages read
#   (capped at 250).

set -euo pipefail
HERE="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
# shellcheck source=common.sh
source "$HERE/common.sh"

# Print the leading comment block as usage (mirrors journal-entry.sh).
usage() { awk 'NR>1 && /^#/{sub(/^# ?/,"");print;next} NR>1{exit}' "$0"; }

# -h/--help is a query, not a drain: print usage and exit before consuming the
# positional, so `inbox-read.sh --help` cannot provision a stray journal clone
# for a doer literally named '--help'.
case "${1:-}" in -h|--help) usage; exit 0 ;; esac

doer="${1:?usage: inbox-read.sh <doer>}"
GARDEN_TAG="inbox-read/$doer"
DIR="${GARDEN_INBOX_CLONE:-$GARDEN_STATE/inbox/$doer/journal}"
ensure_clone "$DIR"

read_total=0
for attempt in $(seq 1 50); do
  sync_clone "$DIR"
  [ -d "$DIR/inbox/$doer/unread" ] || break
  mapfile -t msgs < <(list_jobs "$DIR" "inbox/$doer/unread")
  [ "${#msgs[@]}" -eq 0 ] && break

  mkdir -p "$DIR/inbox/$doer/read"
  for m in "${msgs[@]}"; do
    git -C "$DIR" mv "inbox/$doer/unread/$m" "inbox/$doer/read/$m"
  done
  if commit_and_push "$DIR" "inbox($doer) read ${#msgs[@]} msg(s) on $GARDEN_HOST"; then
    for m in "${msgs[@]}"; do
      printf '========== inbox %s/%s ==========\n' "$doer" "$m"
      cat "$DIR/inbox/$doer/read/$m"; printf '\n'
    done
    read_total=$(( read_total + ${#msgs[@]} ))
    # loop once more in case new mail arrived while we were moving
    continue
  fi
  log "inbox read for '$doer' lost a push race (attempt $attempt); re-syncing"
  backoff "$attempt"
done

[ "$read_total" -gt 0 ] && log "read $read_total message(s)"
[ "$read_total" -gt 250 ] && read_total=250
exit "$read_total"
