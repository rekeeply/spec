---
title: "Tags"
weight: 15
---

# Tags

## Position in Model

- `Tag` is a dedicated library-scoped entity and is NOT a `field_type`.
- Content entries are linked to tags via many-to-many association.

## Tag Entity

- `id` (`system`) - immutable tag identifier.
- `library_id` (`system`) - owning library scope.
- `key` (`system` or managed) - stable internal key.
- `label` (`user_editable`) - user-visible tag name.
- `color` (`user_editable`, optional) - visual color marker.
- `icon` (`user_editable`, optional) - visual icon marker.
- `created_at` (`system`) - creation timestamp.
- `updated_at` (`system`) - update timestamp.

## Content Association

- Content-tag relation MUST support multiple tags per content entry.
- Tag assignment is edited in a dedicated `Tags` block inside content card UI.
- Tag assignment UI SHOULD support selecting existing tags and creating new tags inline.

## Editing Rules

- Renaming a tag updates `label` without requiring content rewrites.
- Removing a tag MUST remove links from content entries but MUST NOT remove content.
- Merging tags MAY be supported and SHOULD preserve content links.

## Import/Export and Sync

- Tag taxonomy MUST travel with library export/import.
- Tag data and tag-content links MUST be synchronized in sync-enabled mode.
