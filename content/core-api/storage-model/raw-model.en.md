---
title: "Raw Model"
weight: 11
---

# Raw Model

## Purpose

- `Raw` is a separate domain because some user data must be stored in unstructured form before later processing.
- `Raw` enables quick capture without mandatory classification or immediate placement into `Library`.

## Contract

- Core implementations MUST include `Raw` as an account-scoped storage domain for unstructured capture.
- `Raw` MUST support quick save without selecting an active library.
- `Raw` MUST support review and deferred processing of captured items.
- `Raw` items MUST be eligible for explicit later promotion into `Library`.

## Supported Payload Types

- `Raw` MUST support `text`, `link`, and `mixed` payload types.
- `Raw` MAY support `file_ref` as reference-only payload.
- `image`, `video`, and `audio` payload types are out of the mandatory baseline scope.

## Raw Item Storage Model

- Storage SHOULD use typed-columns-first design for hot read paths.
- Implementations MUST avoid JSON-only storage for list/filter hot paths.
- Each `RawItem` MUST include: `id`, `account_id`, `payload_type`, `status`, `created_at`, `updated_at`.
- Implementations SHOULD include fast list fields such as `title_preview` and source/type/status columns.

## Capture Inputs

- `Raw` MUST accept capture from manual input and clipboard/paste flows.
- `Raw` SHOULD accept external share/import flows when available in client/runtime.
- Capture MUST remain offline-capable and MUST NOT require network availability.

## Metadata Enrichment

- For `link` payloads, metadata enrichment MAY run asynchronously after capture.
- Metadata fetch failures MUST NOT block capture completion.
- When metadata is unavailable, implementations MUST provide deterministic fallback preview.

## Lifecycle and Operations

- Implementations MUST support item states equivalent to `new | triaged | promoted | archived`.
- Implementations MUST support listing and status transitions for triage.
- Implementations MUST support explicit `promote` from `Raw` to `Library`.

## Promote Flow Requirements

- `promote` MUST validate that `target_library_id` belongs to the same `account_id`.
- `promote` MUST be idempotent for the same `RawItem` and MUST NOT create duplicates on retry.
- `promote` MUST persist linkage to created library entity (`promoted_content_id` or equivalent origin link).

## Sync Scope

- `Raw` is account-scoped and MUST be synchronized across user devices when sync is enabled.
- `Raw` sync MUST be asynchronous and MUST NOT block local offline operations.
- Sync transfer MUST use a secure channel.

## Invariants

- Cross-account access to `Raw` items in one active session MUST be rejected.
- Write operations MUST be rejected while session is locked.
- Promotion to libraries outside active account boundary MUST be rejected.
