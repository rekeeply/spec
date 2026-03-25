---
title: "Account Model"
weight: 23
---

# Account Model

## Contract

- Core implementations MUST include `Account` as a first-class domain entity.
- One account MUST own zero or more libraries; each library MUST belong to exactly one account.
- One active session MUST be bound to exactly one account.
- Library-scoped operations in one active session MUST operate on exactly one active library.

## Account Attributes

- `id` MUST exist and MUST be immutable.
- `status` MUST exist and represent lock boundary (`locked`/`unlocked` or equivalent).
- `security_policy_ref` MUST exist and MUST NOT contain plaintext secrets.
- `default_library_id` MAY exist; when present it MUST reference a library owned by the same account.
- Additional metadata MAY exist and is implementation-defined.

## Lifecycle

- `init` MUST create exactly one local account in a new vault.
- Repeated `init` on an initialized vault MUST be rejected unless an explicit reset/force flow is used.
- Runtime state machine MUST be equivalent to `uninitialized -> locked -> unlocked -> locked`.

## Session and Access Rules

- After `unlock`, session context MUST be bound to one `account_id`.
- Raw-scoped operations MAY run without selecting an active library.
- Cross-account operations in one active session MUST be rejected.
- Write operations on domain entities MUST be rejected while session is locked.
- Export/import operations MUST run in the active account context.

## Non-Goals

- No email/username/avatar requirements.
- No OAuth or social identity requirements.
- No client/device UI settings in core account schema.
