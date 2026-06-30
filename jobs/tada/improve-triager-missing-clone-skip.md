The work is already done. Commit `b5b340e45` ("triager: skip cleanly when bare clone is absent") landed 5 hours ago on `origin/main2` and makes exactly the required change — the `die` on line 32 was replaced with a warn-and-skip `exit 0`. The current line 32 reads:

```
[ -d "$BARE" ] || { log "no bare clone at $BARE; skipping until clone-keeper creates it"; exit 0; }
```

This satisfies the job's intent (message text differs slightly from the spec but is functionally equivalent and more informative, referencing `clone-keeper`).

**Completion report**

The job's required change was already implemented in commit `b5b340e45 triager: skip cleanly when bare clone is absent` (pushed to `origin/main2`, ~5 hours ago). No further code changes are needed.

- **What changed:** `scripts/jobs/triager.sh` line 32 was changed from `die "no bare clone at $BARE (clone the repo first)"` to `{ log "no bare clone at $BARE; skipping until clone-keeper creates it"; exit 0; }`.
- **Effect:** The three noisy triager instances (`dctinybrain-jesc24`, `agoric-labs-jesc24`, `dckc-jesc24`) will now idle silently (exit 0) when their bare clone is absent, stopping the cascade of FATAL log lines that overwhelmed mentor digests.
- **Follow-ups:** None. Once `clone-keeper` provisions the missing bare clones, the triagers will advance naturally from idle to active on the next timer fire.
