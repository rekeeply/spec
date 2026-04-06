---
title: "Settings Model"
weight: 27
---

# Settings Model

## Scope Groups

- `account-scoped`
- `library-scoped`

## Library-Scoped Settings

- `default_status_on_create` (`enum`)
- `default_priority_on_create` (`enum|null`, default `null`)
- `allow_parent_links` (`boolean`, default `true`)
- `archived_visible_by_default` (`boolean`)

## Account-Scoped Settings

- `default_library_id` (optional)
- `last_active_library_restore` (`boolean`, default `true`)
- `auto_lock_timeout_minutes` (`integer`, default `15`, `0` means disabled)
- `require_unlock_on_start` (`boolean`, default `true`)
- `sync_enabled` (`boolean`, default `false`)
- `sync_mode` (`enum: manual|auto`, default `manual`)
- `sync_interval_minutes` (`integer`, default `15`, used for `sync_mode=auto`)
- `export_compression_enabled` (`boolean`, default `true`)
- `backup_enabled` (`boolean`, default `false`)
- `backup_interval_hours` (`integer`, default `24`, used when backup is enabled)
- `backup_retention_count` (`integer`, default `10`)
- `timezone` (`text`, default system timezone)
- `locale` (`text`, default account locale or client/system fallback)

## Fallback Rules

- If `default_library_id` is invalid or removed, fallback is `last_active` when available, otherwise explicit library selection.
