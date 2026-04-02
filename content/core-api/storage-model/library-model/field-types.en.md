---
title: "Field Types"
weight: 13
---

# Field Types

## Scope

- This section defines allowed `field_type` values for user-defined fields.
- For all field types, `required` is configurable (`true | false`).
- Default values are configurable when supported by the field type.

## Allowed Field Types

- `text` - short text value.
  - Validation: `min_length` (optional), `max_length` (optional), `pattern` (optional), `trim_on_save` (optional).
  - Default: `default_value` (optional string).

- `long_text` - long multiline text value.
  - Validation: `min_length` (optional), `max_length` (optional), `trim_on_save` (optional).
  - Default: `default_value` (optional string).

- `boolean` - true/false value.
  - Validation: type validation only.
  - Default: configurable `default_value` (optional boolean).

- `integer` - whole number value.
  - Validation: `min_value` (optional), `max_value` (optional), `step` (optional, default `1`).
  - Default: `default_value` (optional integer).

- `decimal` - fractional number value.
  - Validation: `min_value` (optional), `max_value` (optional), `precision` (optional).
  - Default: `default_value` (optional decimal).

- `date` - calendar date without time.
  - Validation: valid date format.
  - Default: `default_value` (optional date), `default_now` (optional).

- `datetime` - date with time.
  - Validation: valid datetime format.
  - Default: `default_value` (optional datetime), `default_now` (optional).

- `duration` - time duration value.
  - Storage recommendation: normalized integer seconds.
  - Validation: value MUST be `>= 0`.
  - Default: `default_value` (optional duration).

- `url` - URL value.
  - Validation: valid URL format; allowed schemes may be constrained by implementation.
  - Default: `default_value` (optional URL).

- `email` - email value.
  - Validation: valid email format.
  - Default: `default_value` (optional email).

- `phone` - phone value.
  - Validation: valid phone format (implementation-defined strictness).
  - Default: `default_value` (optional phone).

- `enum` - single choice from options.
  - Validation: `options` are required and stored as `value_key + label`; stored value MUST exist in options.
  - Default: `default_value` (optional option `value_key`).

- `multi_enum` - multi choice from options.
  - Validation: `options` are required; all stored values MUST exist in options; `min_selected`/`max_selected` are optional.
  - Default: `default_value` (optional array of option `value_key`).

- `ref` - single reference to another content entry.
  - Validation: referenced entry MUST exist in the same library.
  - Default: `default_value` (optional reference id).

- `ref_list` - multiple references to other content entries.
  - Validation: all referenced entries MUST exist in the same library; unique items; `min_items`/`max_items` are optional.
  - Default: `default_value` (optional array of reference ids).

- `json` - advanced custom JSON object.
  - Validation: valid JSON; optional schema validation.
  - Default: `default_value` (optional JSON object).

- `file_ref` - reference to file location/identifier.
  - Validation: valid path/URI/reference format; availability checks are optional.
  - Default: `default_value` (optional file reference).
