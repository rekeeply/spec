---
title: "Library Actions"
weight: 16
---

# Library Actions

## Scope

- These actions define baseline operations for library entries and library tags.

## Entry Actions

- `create`
  - Starts with selecting `content_type`.
  - Core auto-fills system fields (`id`, `library_id`, `created_at`, `updated_at`).
  - Core sets default `status=inbox` and default empty `priority`.

- `edit`
  - Updates user-editable fields.
  - Updates `updated_at`.

- `set-subtype`
  - Sets or clears `content_subtype`.
  - MUST NOT change `content_type`.
  - Updates `updated_at`.

- `set-status`
  - Sets `status` from allowed status set.
  - Free transition model (no hard state machine).
  - MUST update `status_changed_at`.
  - MUST NOT update `updated_at`.

- `set-priority`
  - Sets/changes/clears `priority`.
  - Updates `updated_at`.

- `set-rating`
  - Sets/changes/clears `rating`.
  - Rating value range is `1..10` when provided.
  - Updates `updated_at`.

- `toggle-favorite`
  - Sets `favorite=true/false`.
  - MUST NOT update `updated_at`.

- `archive` / `unarchive`
  - Sets `archived=true/false`.
  - MUST NOT update `updated_at`.

- `link-parent` / `unlink-parent`
  - Sets/clears `parent_content_id`.
  - Parent MUST exist in same library.
  - Self-link is forbidden.
  - Updates `updated_at`.

- `delete`
  - Before delete, system SHOULD show linked dependent objects.
  - User MAY cancel and resolve links manually.
  - If user confirms force-delete flow, dependent references are nullified.
  - Tag links are removed.
  - Entry is removed (hard delete).

## Tag Actions

- `assign-tags` / `unassign-tags`
  - Adds/removes content-tag links.
  - Duplicate links are forbidden.
  - Tags must belong to same library.
  - MUST NOT update content `updated_at`.

- `create-tag`
  - Creates library-scoped tag with unique internal `key`.
  - Exact duplicate `label` in one library is forbidden.

- `edit-tag`
  - Updates tag `label`/`color`/`icon`.
  - `key` remains immutable.
  - `label` conflict is forbidden.

- `delete-tag`
  - Hard delete.
  - Removes tag and all tag-content links.
  - MUST NOT remove content entries.

- `merge-tags`
  - Moves all links from source tag to target tag.
  - Duplicates are deduplicated.
  - Source tag is hard-deleted.
