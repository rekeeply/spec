---
title: "Library Transfer Format"
weight: 26
---

# Library Transfer Format

## Baseline

- Library export/import MUST use the `*.rkl` file extension.
- Baseline library export scope includes library-scoped data only.
- `Raw` data is excluded from baseline library export/import scope.
- Transfer package MUST include manifest metadata, format version, and integrity data.

## Taxonomy Transfer Rule

- Taxonomy MUST travel with library during export/import.
- Taxonomy scope includes: content types, content subtypes, field schema definitions, tags, and tag-content links.
- Import MUST restore taxonomy before or together with content datasets so content references remain valid.

## Scope Note

- Detailed internal package structure is intentionally deferred to a separate step.
