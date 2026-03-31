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

### `user_editable`

- `content_type` - required type key.
- `content_subtype` - optional subtype key.
- `title` - entry title.
- `status` - `inbox | todo | in_progress | skimmed | done | dropped`.
- `priority` - `low | medium | high`.
- `favorite` - independent favorite flag.
- `archived` - independent archive flag.
- `parent_content_id` - optional parent relation.
- `source_url` - optional source link.
- `tags` - optional user tags.
- `summary` - optional short description.

### `computed`

- `search_text` - normalized text index for fast search.
- `last_activity_at` - derived last activity timestamp.
- `is_completed` - derived completion flag from status.

## Rules

- Clients MUST enforce non-editability for `system` and `computed` fields.
- Core MUST maintain consistency of all `computed` fields.
- Implementations MAY add extra fields in any class as implementation-defined extensions.

## Related Sections

- [Field Types](field-types/)
- [Type-Specific Fields](type-specific-fields/)
