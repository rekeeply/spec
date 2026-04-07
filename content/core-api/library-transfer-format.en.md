---
title: "Library Transfer Format"
weight: 26
---

# Library Transfer Format

## Baseline

- Library export/import MUST use the `*.rkl` file extension.
- `*.rkl` container MUST use `tar.zst`.
- Text datasets inside `*.rkl` MUST use UTF-8 encoding.
- Baseline library export scope includes library-scoped data only.
- `Raw` data is excluded from baseline library export/import scope.
- Transfer package MUST include manifest metadata, format version, and integrity data.

## Package Structure Baseline

- `manifest.json` (required)
- `library.json` (required)
- `taxonomy.json` (required)
- `content.ndjson` (required)
- `tags.json` (required)
- `tag_links.ndjson` (required)
- `attachments.ndjson` (required)
- `progress.ndjson` (optional)
- `notes.ndjson` (optional)

## Manifest Baseline

- `manifest.json` MUST include: `format`, `version`, `encoding`, `container`, `exported_at`, `library`, `datasets`, `integrity`.
- `format` MUST be `rkl`.
- `encoding` MUST be `utf-8`.
- `container` MUST be `tar.zst`.
- `library` MUST include `id` and `name`.
- `datasets` MUST include dataset path and checksum for each included dataset.
- `integrity` MUST include checksum algorithm and manifest checksum.

## Dataset Baselines

- `library.json` MUST include `id`, `name`, `icon`.
- `taxonomy.json` MUST include type/subtype taxonomy and field schema definitions.
- `content.ndjson` rows MUST include `id`, `type`, `status`, `created_at`, `updated_at`, `status_changed_at`.
- `tags.json` MUST include tag metadata.
- `tag_links.ndjson` rows MUST include `content_id`, `tag_id`.

## Taxonomy Transfer Rule

- Taxonomy MUST travel with library during export/import.
- Taxonomy scope includes: content types, content subtypes, field schema definitions, tags, and tag-content links.
- Import MUST restore taxonomy before or together with content datasets so content references remain valid.

## Dataset Note

- Library transfer SHOULD support attachment datasets (attachment metadata and content links).

## Attachment Dataset Baseline

- Attachment metadata dataset file name: `attachments.ndjson`.
- Each attachment row MUST include: `id`, `content_id`, `uri`.
- Optional attachment row fields: `name`, `mime`, `size`, `created_at`.
- `content_id` in `attachments.ndjson` MUST reference an existing content entry.

## Validation and Safety Rules

- Import MUST reject package if any required dataset is missing.
- Import MUST reject package if any dataset checksum validation fails.
- Import MUST reject path traversal entries (`../`, absolute paths, or equivalent unsafe archive paths).
- Import MUST validate schema and references before final commit.
- Import MUST be atomic: on critical validation error, no partial final state is committed.

## Import Order Baseline

- Validate package container and `manifest` integrity first.
- Restore library metadata (`library.json`).
- Restore taxonomy datasets before content datasets.
- Restore content datasets.
- Restore tags and tag-content links.
- Restore `attachments.ndjson` after content datasets.
- Run final referential validation and commit import atomically.
