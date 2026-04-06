---
title: "Core API"
weight: 20
---

# Core API

Platform-agnostic specification of core runtime behavior.

## Section Boundary

- This section defines the core contract: domain model, invariants, state boundaries, and required behavior.
- This section does NOT define client UX flows, command syntax, or presentation behavior.
- Clients (CLI and others) MUST consume this contract and MUST NOT redefine core domain entities.
- Practical end-user usage is documented in client sections.
- Library transfer baseline is defined in [Library Transfer Format](../library-transfer-format/).
- Settings baseline is defined in [Settings Model](../settings-model/).
