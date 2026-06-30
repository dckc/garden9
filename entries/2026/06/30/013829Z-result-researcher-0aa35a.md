---
ts: 2026-06-30T01:38:29Z
kind: result
role: researcher
project: jesc24
repo: agoric-labs/jesc24
---

Triage of all 10 open issues in agoric-labs/jesc24 as of 2026-06-29.

## Triage

### #2 — Toward robust safety of escrow - TODO list / plan

- **Status**: open
- **Kind**: meta
- **Priority**: high
- **Depends on**: all other open issues (it tracks them)
- **Suggested action**: Keep open as the master tracking issue; update checklist as sub-issues close.

### #3 — tech debt: coq 8.9.x from 2019

- **Status**: open
- **Kind**: tech-debt
- **Priority**: high
- **Depends on**: none
- **Suggested action**: Dispatch builder to attempt Coq version upgrade; the old version blocks modern tooling (vsRoq, current coq-peg).

### #4 — tech debt: OCPL HLA forked from Iris, heap-lang

- **Status**: open
- **Kind**: tech-debt
- **Priority**: medium
- **Depends on**: #3 (Coq upgrade would make upstream sync feasible)
- **Suggested action**: Good-first-issue for research agent to audit the HLA delta from upstream Iris heap-lang and flag any drift.

### #5 — idea: base parser on esmeta

- **Status**: open
- **Kind**: idea
- **Priority**: low
- **Depends on**: none
- **Suggested action**: Good-first-issue for research agent to assess esmeta's AST and grammar format as a Coq parser alternative.

### #7 — Parser code should be obvious transcription of upstream code

- **Status**: in-progress
- **Kind**: tech-debt
- **Priority**: medium
- **Depends on**: none
- **Suggested action**: Maintainer decision needed: dctinybrain PR #8 CI is green (build passes in 5m9s) but has a "Changes requested" review; resolve the open thread on `quasi_jessie.v` line 35 and merge.

### #8 — try ReCent-Prover (where is the code?)

- **Status**: open
- **Kind**: research
- **Priority**: low
- **Depends on**: none
- **Suggested action**: Good-first-issue for research agent to locate the ReCent-Prover repository and assess applicability.

### #9 — test against test262 pruned to intersection with JSON / Justin / Jessie

- **Status**: open
- **Kind**: feature
- **Priority**: medium
- **Depends on**: #7 (parser should be clean and merged first)
- **Suggested action**: Dispatch builder after #7 merges to implement test262 integration against the endojs/Jessie parse packages.

### #11 — turn on ci in agoric-labs

- **Status**: needs-decision
- **Kind**: tech-debt
- **Priority**: medium
- **Depends on**: none (but motivates having #7 merged upstream first)
- **Suggested action**: Maintainer decision on scope: upstream PR #15 has only Socket Security CI; the bot fork has a real Coq build CI — decide whether to add the Coq build step to agoric-labs and then dispatch builder to wire it up.

### #13 — adequate approximation of possible behaviors of untrusted code

- **Status**: open
- **Kind**: research
- **Priority**: high
- **Depends on**: #2 (it is the next explicit TODO in the plan after makeCounter separation-of-duties)
- **Suggested action**: Dispatch researcher then designer to define a DimSum-based universal contract for Cap code behavioral overapproximation; unblocks lowering `escrow2013.js` to the heap language.

### #16 — peg-coq provenance

- **Status**: open
- **Kind**: research
- **Priority**: low
- **Depends on**: none
- **Suggested action**: Good-first-issue for research agent to document where coq-peg was forked from and record the provenance in the repo.

## Recommended sequencing

The critical path toward the stated project goal — robust safety of escrow — runs through three clusters.
First, close out the active parser refactor: resolve the review thread on dctinybrain PR #8 (issue #7) and merge it, then decide and implement proper Coq build CI in agoric-labs (issue #11) so future work has a green gate.
Second, tackle the two foundational tech-debt items in parallel where possible: upgrade from Coq 8.9.x (issue #3) to unlock modern tooling, and use that upgraded environment to audit the OCPL HLA delta from Iris (issue #4).
Third, and highest-leverage for the project goal, dispatch researcher and designer work on issue #13 (DimSum-based universal contract for Cap code), which is the explicit next checkbox in the master plan (#2) and the theoretical work that enables robust safety of `escrow2013.js`.
After those three clusters, issue #9 (test262 conformance) adds parser confidence and is a natural next feature dispatch post-#7. Issues #5, #8, and #16 are low-priority exploratory or provenance items that can be taken up opportunistically.

Self-improvement: the researcher role's AGENT.md is scoped to pre-research for designer/builder dispatches; this triage engagement is closer to the investigator role's purpose. If triage tasks on project issue trackers recur, consider a `triage` sub-procedure in the investigator role or a standing researcher variant.
