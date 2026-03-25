---
title: "Execution Model"
weight: 21
---

# Execution Model

## Execution Modes

- `embedded` (default): core runs in the same process as a client application for minimum latency.
- `service`: core runs as a separate local process and is accessed by clients via local IPC.
- `remote`: client connects to a remote core backend over a secure network channel.

## Common Rules

- same core domain logic;
- authentication is mandatory;
- one active session is bound to one account;
- library-scoped operations work with only one active library;
- clients use the core contract, not direct DB file access.

## Session Lifecycle

- `init`: initial local vault setup and first library creation;
- `unlock`: user authentication and opening a working session;
- `active`: command execution in active session context (library-scoped or account-scoped);
- `switch-library`: explicit active library switch inside a session;
- `auto-lock`: automatic lock on inactivity timeout;
- `manual lock/logout`: explicit lock or session termination.

## Sync Model (High-Level)

- local DB is the default source of user operations;
- synchronization is asynchronous and does not block user actions;
- synchronization supports both library-scoped data and account-scoped data;
- in offline mode, core continues to operate and sync is deferred;
- conflicts are resolved by a deterministic policy (defined in a separate section);
- sync data transfer must use a secure channel.
