---
title: "Storage Model"
weight: 25
---

# Storage Model

Core storage model consists of two primary domains: [Library](library-model) and [Raw](raw-model).

Canonical terms are fixed in the [Glossary](/appendices/glossary/).

Session and sync rules are defined in [Account Model](/core-api/account-model/) and [Execution Model](/core-api/execution-model/).

- `Library` is the structured storage domain for active, organized work.
- `Raw` is the unstructured storage domain for quick capture and deferred processing.

## Access Entry Point

```
User (after `unlock`)
  |
  +--> Library
  |
  +--> Raw
```

## Domain Boundary

- `Library` stores structured, actively organized content.
- `Raw` stores unstructured quick captures for deferred processing.
- Promotion from `Raw` to `Library` is an explicit operation.
