The disk is 100% full (728 MB free) because $GARDEN_STATE/inbox/ holds 159 stale
per-doer journal clones totaling 638 MB. inbox-read.sh (scripts/jobs/inbox-read.sh)
creates $GARDEN_STATE/inbox/<doer>/journal via ensure_clone but nothing ever removes
these local clone directories once the doer's inbox is fully processed. Likewise,
complete-job.sh and reaper.sh remove the inbox tree from the remote journal but leave
the local clone intact.

Fix: add a pruning pass — either at the end of inbox-read.sh (after a clean drain
with 0 unread left and no pending read/) or in a new keeper script — that removes
$GARDEN_STATE/inbox/<doer>/ when the local clone's inbox/<doer>/unread/ directory
no longer exists on origin/journal2. A safe shape is: after a successful drain loop,
re-check `git -C "$DIR" ls-tree -d "origin/$JOURNAL_BRANCH" "inbox/$doer/unread"`; if
the tree entry is absent, rm -rf "$GARDEN_STATE/inbox/$doer". Alternatively, a
periodic keeper (analogous to clone-keeper.sh) walks $GARDEN_STATE/inbox/*/journal,
fetches origin, and prunes directories whose inbox/<doer>/unread tree is gone.

Also needed immediately (operational, no code fix): free disk space by hand, e.g.
  rm -rf /home/dckc/.garden-state/inbox/deadmail-*/
  rm -rf /home/dckc/.garden-state/inbox/dctinybrain-jesc24-pr8-*/
(verify these doers' jobs are complete first). The gardener-scaler service will
continue to fail on every restart until enough disk is freed for git to write
config.lock.
