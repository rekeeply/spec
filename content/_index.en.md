---
title: "Rekeeply Specification"
type: docs
weight: 10
---

# Rekeeply Specification

Rekeeply is a personal content management system for digital garden workflows.
It provides one place for materials, progress tracking, notes, and fast retrieval.

## 1. Specification Sections

The specification consists of the following parts:

- [Introduction](introduction/)
- [Core API](core-api/)
- [Client Profiles](client-profiles/)
- [Appendices](appendices/)
- [Changelog](changelog/)

## 2. Introduction

The goal of Rekeeply is to turn chaotic "save for later" into a structured flow:
save -> progress -> capture -> retrieve fast.

The core is specified in a platform-agnostic way. Client-specific behavior
(including CLI) is defined under `Client Profiles`.

## 3. Architecture (Current Agreements)

Rekeeply defines APIs and runtime contracts for synchronizing user content
state between clients, local core runtime, and optional remote services.

The model supports:

- local-first operation (offline by default);
- optional synchronization over secure transport;
- a single active library per active session;
- multiple libraries per account;
- client extensibility without changing core logic.
