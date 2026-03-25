---
title: "Library Model"
weight: 10
---

# Library Model

## Contract

- Core implementations MUST include `Library` as a first-class domain entity.
- One library MUST belong to exactly one account.
- One active session MUST operate on exactly one `active_library_id`.

## Library Attributes

- `id` MUST exist and MUST be immutable.
- `account_id` MUST exist and MUST reference the owning account.
- `name` MUST exist.
- `status` MUST exist.
- Additional metadata MAY exist and is implementation-defined.

## Session Context Rules

- Domain operations MUST execute in the context of the active library.
- Setting `active_library_id` to a library outside the active account MUST be rejected.
- Operations targeting a non-existing library MUST be rejected.

## Lifecycle and State

- Implementations MUST support library creation.
- Implementations MUST support active library selection inside an unlocked session.
- Implementations MUST support status transitions equivalent to `active <-> archived`.
- Archived libraries MUST NOT be selected as active unless explicitly restored or re-activated.

## Invariants

- Library creation without a valid `account_id` MUST be rejected.
- Cross-library access in a single scoped operation MUST be rejected.
- Removing or archiving a library MUST preserve referential consistency.

## Non-Goals

- No client/device UI settings in core library schema.
- No account-level security policy fields in library schema.
