---
title: "Library Lifecycle"
weight: 22
---

# Library Lifecycle

## Library Attributes

- `id` - unique immutable identifier.
- `name` - editable library name.
- `icon` - editable visual marker.

## Lifecycle Operations

- `create-library`
  - Creates new library with `id`, `name`, and `icon`.

- `rename-library`
  - Updates `name` only.
  - `id` remains immutable.

- `update-library-icon`
  - Updates `icon` only.

- `archive-library` / `unarchive-library`
  - Archived library MUST NOT be selected as active until restored.

- `delete-library`
  - Hard delete requires explicit confirmation.
  - Before delete, system SHOULD show related data volume summary.
  - If deleted library is active:
    - switch active library to fallback when available;
    - otherwise clear active library until next selection/creation.

## Invariants

- Lifecycle operations are account-scoped.
- Cross-account lifecycle operations are forbidden.
- Library `id` is stable and never reused in same account scope.
