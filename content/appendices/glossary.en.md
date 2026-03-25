---
title: "Glossary"
weight: 91
---

# Glossary

Fixed canonical terms used across the specification.

- `Account` — top-level user domain context in core.
- `Session` — authenticated runtime context bound to one `account_id`.
- `Library` — structured storage domain for organized work.
- `Raw` — account-scoped unstructured capture domain.
- `active_library_id` — selected library for library-scoped operations.
- `library-scoped` — operation/data requiring an active library context.
- `account-scoped` — operation/data requiring only account session context.
- `unlock` — session opening after credential validation.
- `sync` — asynchronous data synchronization between local and remote runtimes.
- `promote` — explicit transfer from `Raw` into `Library`.
