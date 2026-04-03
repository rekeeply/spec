---
title: "Коллекции"
weight: 20
---

# Коллекции

## Контракт

- `Collection` — ручная группировка записей в scope библиотеки.
- Collection НЕ хранит условия поиска.
- Одна запись контента МОЖЕТ входить в несколько коллекций.

## Поля Collection

- `id` (`system`) - неизменяемый идентификатор коллекции.
- `library_id` (`system`) - библиотека-владелец.
- `name` (`user_editable`) - название коллекции.
- `description` (`user_editable`, optional) - описание коллекции.
- `color` (`user_editable`, optional) - визуальный цветовой маркер.
- `icon` (`user_editable`, optional) - визуальный икон-маркер.
- `parent_collection_id` (`user_editable`, optional) - родительская коллекция для иерархии.
- `created_at` (`system`) - момент создания.
- `updated_at` (`system`) - момент обновления.

## Операции

- `create-collection`
- `rename-collection`
- `delete-collection`
- `add-to-collection`
- `remove-from-collection`
- `reorder-collections`

## Правила иерархии

- Родительская коллекция МОЖЕТ иметь несколько дочерних.
- Одна коллекция МОЖЕТ иметь не более одного родителя.
- Циклы в иерархии коллекций запрещены.
