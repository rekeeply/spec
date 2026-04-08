---
title: "Versioning Policy"
weight: 92
---

# Versioning Policy

## Scope

- This policy defines versioning rules for specification, core API, and project repositories.

## Version Domains

- `Spec Version` - version of this specification.
- `Core API Version` - version of runtime contract between clients and core.
- `Project Version` - version of each concrete repository/package (`core`, `cli`, other clients).

## Scheme

- All version domains MUST use Semantic Versioning: `MAJOR.MINOR.PATCH`.

## SemVer Rules

- `MAJOR`: breaking contract change.
- `MINOR`: backward-compatible feature addition.
- `PATCH`: backward-compatible fix/editorial correction.

## Compatibility Baseline

- Clients MUST declare supported `Core API Version` range.
- Core runtime MUST expose current `Core API Version`.
- On startup/handshake, client-core compatibility MUST be validated before normal operations.
- Incompatible versions MUST fail with explicit compatibility error.

## Release Mapping

- `Spec Version` MAY evolve independently of project package versions.
- Breaking changes in spec core contract SHOULD increment both `Spec Version` and `Core API Version` major versions.
- Project package versions SHOULD map to internal release cadence but MUST not bypass API compatibility checks.

## RKL Format Versioning

- `*.rkl` format version is independent and MUST be declared in `manifest`.
- Import MUST validate declared `rkl` version before processing datasets.
