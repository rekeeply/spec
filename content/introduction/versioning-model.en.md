---
title: "Versioning Model"
weight: 12
---

# Versioning Model

Rekeeply uses three independent version tracks:

- `spec vS.T` - specification version (contracts);
- `core vX.Y` - core runtime/API implementation version;
- `client vA.B` - client profile implementation version (for example, CLI).

Relationship:

- `spec` defines the contract (what must exist);
- `core` declares which `spec` versions it supports;
- `client` declares which `core` versions it is compatible with.

Version rule:

- major (`X`) - breaking changes;
- minor (`Y`) - backward-compatible changes.
