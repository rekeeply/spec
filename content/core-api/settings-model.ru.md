---
title: "Модель настроек"
weight: 27
---

# Модель настроек

## Группы scope

- `account-scoped`
- `library-scoped`

## Настройки уровня библиотеки

- `default_status_on_create` (`enum`)
- `default_priority_on_create` (`enum|null`, default `null`)
- `allow_parent_links` (`boolean`, default `true`)
- `archived_visible_by_default` (`boolean`)

## Настройки уровня аккаунта

- `default_library_id` (optional)
- `last_active_library_restore` (`boolean`, default `true`)
- `auto_lock_timeout_minutes` (`integer`, default `15`, `0` означает отключение)
- `require_unlock_on_start` (`boolean`, default `true`)
- `sync_enabled` (`boolean`, default `false`)
- `sync_mode` (`enum: manual|auto`, default `manual`)
- `sync_interval_minutes` (`integer`, default `15`, используется при `sync_mode=auto`)
- `export_compression_enabled` (`boolean`, default `true`)
- `backup_enabled` (`boolean`, default `false`)
- `backup_interval_hours` (`integer`, default `24`, используется при включенном backup)
- `backup_retention_count` (`integer`, default `10`)
- `timezone` (`text`, default системная таймзона)
- `locale` (`text`, default locale аккаунта или fallback клиента/системы)

## Правила fallback

- Если `default_library_id` невалиден или удален, fallback: `last_active` при наличии, иначе явный выбор библиотеки.
