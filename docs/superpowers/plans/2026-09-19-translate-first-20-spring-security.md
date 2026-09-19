# Translate First 20 Spring Security Pages Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Translate the first 20 page files in `docs/modules/ROOT/nav.adoc` into Vietnamese under the mirrored `vi/modules/` paths.

**Architecture:** One isolated git worktree and branch per page prevents agents from editing the same checkout or git index. Each agent reads the complete English source, translates only its mirrored Vietnamese page, verifies AsciiDoc structure and protected technical tokens, then commits exactly that page. The coordinator cherry-picks the 20 page commits and updates `vi/PROGRESS.md` once the batch is verified.

**Tech Stack:** AsciiDoc, Antora, Git worktrees, Spring Security documentation.

## Global Constraints

- Follow `vi/CLAUDE.md` and `vi/GLOSSARY.md` exactly.
- English source is under `docs/modules/`; translated pages are under `vi/modules/`.
- Preserve anchors, IDs, xref/include targets, macros, resource references, code blocks, commands, config keys, identifiers, and sample values.
- Translate all prose, headings, labels, captions, alt text, table text, list text, admonition text, and explanatory comments without summarizing or adding content.
- Read the complete source file before editing its mirrored target.
- Do not edit `docs/`, navigation, glossary, `.upstream-version`, or another agent's target.
- Each agent commits only its assigned Vietnamese page.
- The coordinator updates `vi/PROGRESS.md` after all page commits are integrated.

## Page Assignment

Each task maps one English page to one Vietnamese page:

1. `docs/modules/ROOT/pages/index.adoc` -> `vi/modules/ROOT/pages/index.adoc`
2. `docs/modules/ROOT/pages/prerequisites.adoc` -> `vi/modules/ROOT/pages/prerequisites.adoc`
3. `docs/modules/ROOT/pages/community.adoc` -> `vi/modules/ROOT/pages/community.adoc`
4. `docs/modules/ROOT/pages/whats-new.adoc` -> `vi/modules/ROOT/pages/whats-new.adoc`
5. `docs/modules/ROOT/pages/migration-8/index.adoc` -> `vi/modules/ROOT/pages/migration-8/index.adoc`
6. `docs/modules/ROOT/pages/migration/index.adoc` -> `vi/modules/ROOT/pages/migration/index.adoc`
7. `docs/modules/ROOT/pages/migration/servlet/authorization.adoc` -> `vi/modules/ROOT/pages/migration/servlet/authorization.adoc`
8. `docs/modules/ROOT/pages/migration/servlet/oauth2.adoc` -> `vi/modules/ROOT/pages/migration/servlet/oauth2.adoc`
9. `docs/modules/ROOT/pages/migration/servlet/saml2.adoc` -> `vi/modules/ROOT/pages/migration/servlet/saml2.adoc`
10. `docs/modules/ROOT/pages/migration/reactive.adoc` -> `vi/modules/ROOT/pages/migration/reactive.adoc`
11. `docs/modules/ROOT/pages/getting-spring-security.adoc` -> `vi/modules/ROOT/pages/getting-spring-security.adoc`
12. `docs/modules/ROOT/pages/features/index.adoc` -> `vi/modules/ROOT/pages/features/index.adoc`
13. `docs/modules/ROOT/pages/features/authentication/index.adoc` -> `vi/modules/ROOT/pages/features/authentication/index.adoc`
14. `docs/modules/ROOT/pages/features/authentication/password-storage.adoc` -> `vi/modules/ROOT/pages/features/authentication/password-storage.adoc`
15. `docs/modules/ROOT/pages/features/authorization/index.adoc` -> `vi/modules/ROOT/pages/features/authorization/index.adoc`
16. `docs/modules/ROOT/pages/features/exploits/index.adoc` -> `vi/modules/ROOT/pages/features/exploits/index.adoc`
17. `docs/modules/ROOT/pages/features/exploits/csrf.adoc` -> `vi/modules/ROOT/pages/features/exploits/csrf.adoc`
18. `docs/modules/ROOT/pages/features/exploits/headers.adoc` -> `vi/modules/ROOT/pages/features/exploits/headers.adoc`
19. `docs/modules/ROOT/pages/features/exploits/http.adoc` -> `vi/modules/ROOT/pages/features/exploits/http.adoc`
20. `docs/modules/ROOT/pages/features/integrations/index.adoc` -> `vi/modules/ROOT/pages/features/integrations/index.adoc`

## Per-Page Execution

- [ ] Read the complete assigned English source and current Vietnamese target.
- [ ] Translate the entire page while preserving all protected AsciiDoc and technical content.
- [ ] Compare the source and target structure: anchors, xrefs, includes, conditionals, source blocks, tables, lists, and admonitions.
- [ ] Check that no English prose remains except glossary terms, API names, code, output, identifiers, and required technical values.
- [ ] Run `git diff --check -- <assigned-target>`.
- [ ] Commit only the assigned target with `git add <assigned-target> && git commit -m "docs(vi): translate <short-page-name>"`.

## Integration Verification

- [ ] Cherry-pick each agent commit into `main`, one commit per page.
- [ ] Confirm `git status --short` contains only the intended plan/process changes or is clean after committing them.
- [ ] Run `git diff --check` and inspect the combined diff for accidental target changes.
- [ ] Update `vi/PROGRESS.md` with the 20 completed paths, batch date, and the next page from navigation.
- [ ] Run the repository's available documentation structure/build checks; report any unavailable build separately from translation completion.
