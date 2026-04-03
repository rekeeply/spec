---
title: "Collections"
weight: 20
---

# Collections

## Contract

- `Collection` is a manual library-scoped grouping of content entries.
- Collection does NOT store search conditions.
- One content entry MAY belong to multiple collections.

## Collection Fields

- `id` (`system`) - immutable collection identifier.
- `library_id` (`system`) - owning library scope.
- `name` (`user_editable`) - collection name.
- `description` (`user_editable`, optional) - collection description.
- `color` (`user_editable`, optional) - visual color marker.
- `icon` (`user_editable`, optional) - visual icon marker.
- `parent_collection_id` (`user_editable`, optional) - parent collection for hierarchy.
- `created_at` (`system`) - creation timestamp.
- `updated_at` (`system`) - update timestamp.

## Operations

- `create-collection`
- `rename-collection`
- `delete-collection`
- `add-to-collection`
- `remove-from-collection`
- `reorder-collections`

## Hierarchy Rules

- Parent collection MAY have multiple child collections.
- One collection MAY have at most one parent.
- Collection hierarchy cycles are forbidden.
