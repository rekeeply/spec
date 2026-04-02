---
title: "Schema Actions"
weight: 17
---

# Schema Actions

## Scope

- These actions define lifecycle operations for library-scoped schema entities: custom types, custom subtypes, and custom fields.
- Schema entities use internal stable `key` values that are unique within one library scope.

## Type Actions

- `create-type`
  - Creates a custom content type in current library.
  - Internal `key` MUST be unique within library.

- `edit-type`
  - Updates editable type properties.
  - Internal `key` MUST remain immutable.

- `archive-type` / `unarchive-type`
  - Disables/enables type for active usage in new entries.
  - Existing entries using this type remain valid.

- `delete-type`
  - Hard delete is allowed only if no entries/subtypes/field schemas depend on type.
  - Otherwise operation MUST be rejected or require explicit migration.

## Subtype Actions

- `create-subtype`
  - Creates subtype under selected type.
  - Internal `key` MUST be unique within parent type scope.

- `edit-subtype`
  - Updates editable subtype properties.
  - Internal `key` MUST remain immutable.

- `archive-subtype` / `unarchive-subtype`
  - Disables/enables subtype for active usage in new entries.
  - Existing entries using this subtype remain valid.

- `delete-subtype`
  - Hard delete is allowed only if no entries/field schemas depend on subtype.
  - Otherwise operation MUST be rejected or require explicit migration.

## Field Schema Actions

- `create-field`
  - Creates custom field schema bound to type or subtype scope.
  - Field `field_type` MUST be selected from allowed field types list.

- `edit-field`
  - Updates editable field schema attributes (`name`, `required`, defaults, validation, visibility/order).
  - Internal `key` MUST remain immutable.

- `archive-field` / `unarchive-field`
  - Disables/enables field for active usage in forms.
  - Existing stored values remain valid.

- `delete-field`
  - Hard delete is allowed only if explicit data-drop is confirmed or all dependent values are migrated.
  - Operation MUST preserve referential and data integrity.

## Migration Rule

- Any schema change that can invalidate existing stored values MUST run as explicit migration operation.
- Migration operation MUST report affected entries and final status.

## Library Boundary Rule

- Schema actions are library-scoped.
- Cross-library schema mutations are forbidden.
