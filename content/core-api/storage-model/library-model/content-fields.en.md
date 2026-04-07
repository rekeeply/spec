---
title: "Content Fields"
weight: 12
---

# Content Fields

## Field Classes

- `system` fields are managed by core and MUST NOT be manually edited by users.
- `user_editable` fields are visible and editable by users.
- `computed` fields are derived by core and SHOULD be treated as read-only.

## Common Field Baseline

### `system`

- `id` - immutable entry identifier.
- `library_id` - owning library identifier.
- `created_at` - creation timestamp.
- `updated_at` - last update timestamp.
- `status_changed_at` - timestamp of last status change.

### `user_editable`

- `content_type` - required type key.
- `content_subtype` - optional subtype key.
- `title` - entry title.
- `status` - `inbox | todo | in_progress | skimmed | done | dropped`.
- `priority` - `low | medium | high`.
- `rating` - optional integer rating in range `1..10`.
- `recommendation` - optional recommendation marker: `recommended | neutral | not_recommended`.
- `favorite` - independent favorite flag.
- `archived` - independent archive flag.
- `parent_content_id` - optional parent relation.
- `source_url` - optional source link.
- `summary` - optional short description.

### `computed`

- `search_text` - normalized text index for fast search.
- `last_activity_at` - derived last activity timestamp.
- `is_completed` - derived completion flag from status.

## Attachment Model

- Content entries MAY have multiple linked attachments.
- Attachment links are modeled as related entities, not as one-off fixed fields.
- Attachment baseline fields: `id`, `content_id`, `uri`, `name` (optional), `mime` (optional), `size` (optional), `created_at`.
- Attachment export/import baseline dataset file: `attachments.ndjson`.

## Rules

- Clients MUST enforce non-editability for `system` and `computed` fields.
- Core MUST maintain consistency of all `computed` fields.
- On creation, `status` SHOULD be auto-set to `inbox`.
- On creation, `priority` SHOULD be empty by default unless explicitly provided.
- Status changes SHOULD update `status_changed_at` and SHOULD NOT update `updated_at`.
- Favorite flag changes SHOULD NOT update `updated_at`.
- Archived flag changes SHOULD NOT update `updated_at`.
- If `rating` is provided, value MUST be in range `1..10`.
- User-editable fields other than `content_type` and `status` are optional at creation time and may be filled later.
- Type-specific fields are non-mandatory by baseline and become required only when user-defined schema marks them required.
- Implementations MAY add extra fields in any class as implementation-defined extensions.

## Related Sections

- [Field Types](field-types/)
- [Type-Specific Fields](type-specific-fields/)
