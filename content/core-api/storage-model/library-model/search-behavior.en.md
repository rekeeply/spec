---
title: "Search Behavior"
weight: 21
---

# Search Behavior

## Core Rule

- `Search` and `Preset` MUST use the same query engine and semantics.

## Search vs Preset

- `Search` is ephemeral by default and is not persisted unless explicitly saved.
- `Preset` is an explicitly persisted search definition.
- When current search is changed or library session is restarted, previous ephemeral search result is discarded.
- Only explicitly saved presets remain available across sessions.
