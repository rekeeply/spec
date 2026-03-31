---
title: "Library Model"
weight: 10
BookCollapseSection: true
---

# Library Model

## Contract

- Core implementations MUST include `Library` as a first-class domain entity.
- One library MUST belong to exactly one account.
- One active session MUST operate on exactly one `active_library_id`.
- `Library` MUST support both study-oriented and storage-oriented content.

## Content Entry Model

- Library entries MUST include a content type (`content_type`).
- The baseline content type set MAY include standard types (`book`, `article`, `video`, `movie`) and MUST allow custom types.
- Progress tracking MUST be optional and MUST NOT be required for all content entries.

## Common Entry States and Flags

- Each library entry MUST have `status` from the set: `inbox | todo | in_progress | skimmed | done | dropped`.
- `inbox` SHOULD be the default initial status for newly created entries.
- Each library entry MAY have `priority` from the set: `low | medium | high`.
- Each library entry MAY have independent flags `favorite` and `archived`.
- `status`, `priority`, `favorite`, and `archived` MUST be type-independent attributes.

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

## Related Sections

- [Content Typing](content-typing/)
- [Content Fields](content-fields/)
- [Field Types](field-types/)
- [Type-Specific Fields](type-specific-fields/)

## Non-Goals

- No client/device UI settings in core library schema.
- No account-level security policy fields in library schema.
