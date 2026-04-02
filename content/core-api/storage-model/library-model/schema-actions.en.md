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
  - Direct `field_type` change MUST NOT be applied in `edit-field`.

- `archive-field` / `unarchive-field`
  - Disables/enables field for active usage in forms.
  - Existing stored values remain valid.

- `delete-field`
  - Hard delete is allowed only if explicit data-drop is confirmed or all dependent values are migrated.
  - Operation MUST preserve referential and data integrity.

## Migration Rule

- Any `field_type` change MUST run as explicit migration operation.
- Migration flow is always required for `field_type` changes, even when no values are currently stored.
- Migration flow SHOULD create/assign target field type, run conversion, and apply result after explicit confirmation.
- Migration pre-check MUST report affected entries.
- Migration operation MUST report affected entries and final status.

## Field Type Transition Baseline

- Field type transitions are classified as `safe`, `conditional`, or `forbidden`.

Safe transitions:

- `text -> long_text`
- `integer -> decimal`
- `date -> datetime`
- `ref -> ref_list`

Conditional transitions:

- `long_text -> text`
- `decimal -> integer`
- `datetime -> date`
- `text -> integer | decimal | date | datetime | duration | url | email | phone`
- `text <-> enum | multi_enum`
- `ref_list -> ref`
- `json -> any`
- `any -> json`

Forbidden transitions:

- `ref | ref_list -> numeric | date | boolean`
- `enum | multi_enum -> ref | ref_list`
- `file_ref -> numeric | date | boolean`

Conditional transition policy:

- Migration MUST provide explicit policy choice for conditional transitions.
- Baseline policy options: `fail_on_error` or `set_null_on_error`.

## Library Boundary Rule

- Schema actions are library-scoped.
- Cross-library schema mutations are forbidden.
