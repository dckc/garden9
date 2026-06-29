#!/bin/bash
# message-user.sh — a gardener sends a message to the user (maintainer).
#
# Usage: message-user.sh <reply-to-doer> [<body-file>]   (body else stdin)
#
# Posts into the standing maintainer inbox, tagged reply_to=<reply-to-doer> so
# the maintainer — through the liaison — can answer back into that doer's own
# inbox while it keeps working. <reply-to-doer> is normally the gardener's
# current job basename.

set -euo pipefail
HERE="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Print the leading comment block as usage (mirrors journal-entry.sh).
usage() { awk 'NR>1 && /^#/{sub(/^# ?/,"");print;next} NR>1{exit}' "$0"; }

# -h/--help is a query, not a message: print usage and exit without sending.
# Before this guard, `message-user.sh --help` sent an empty message to the
# maintainer with reply_to=--help and from=gardener:--help, which dead-lettered
# (no live maintainer inbox) and was promoted into a spurious gardener job.
case "${1:-}" in -h|--help) usage; exit 0 ;; esac

doer="${1:?usage: message-user.sh <reply-to-doer> [body-file]}"
body="${2:-}"
export GARDEN_REPLY_TO="$doer"
export GARDEN_SENDER="${GARDEN_SENDER:-gardener:$doer}"
exec "$HERE/inbox-send.sh" maintainer ${body:+"$body"}
