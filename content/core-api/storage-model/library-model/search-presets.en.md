---
title: "Presets"
weight: 19
---

# Presets

## Contract

- `Preset` is a saved search definition in library scope.
- Preset stores search conditions only.
- Preset MUST NOT store sorting or displayed field layout.
- Preset MAY be nested using `parent_preset_id`.
- Preset MAY define `inherit_query` (`true|false`) for parent query inheritance.
- Preset MAY include visual metadata (`color`, `icon`).

## Operations

- `create-preset`
- `update-preset`
- `rename-preset`
- `delete-preset`
- `run-preset`

## Hierarchy Rules

- Preset hierarchy cycles are forbidden.
- If `inherit_query=true`, resulting query is combined with parent query using baseline `AND` composition.
- If `inherit_query=false`, parent relation is organizational only.
- On parent preset deletion, child presets SHOULD be moved to root level.

## User Control

- User can define and edit preset names.
- User can define preset order.
