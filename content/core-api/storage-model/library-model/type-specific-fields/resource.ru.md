---
title: "resource"
weight: 17
---

# resource

Обязательные:

- `resource_name` (`text`) - основное название ресурса.
- `resource_kind` (`text` или `enum`) - уточняющий вид ресурса в контексте подтипа.

Опциональные:

- `provider` (`text`) - владелец/провайдер ресурса.
- `official_url` (`url`) - основная ссылка на ресурс.
- `access_model` (`enum`) - модель доступа (free/paid/freemium/private).
- `license` (`text`) - лицензия/условия использования.
- `pricing_note` (`text`) - краткое описание модели оплаты.
- `api_available` (`boolean`) - признак доступности API.
- `repo_host` (`text`) - хост-платформа репозитория (например, GitHub, GitLab).
- `language` (`text`) - основной язык контента/интерфейса.
- `last_checked_at` (`datetime`) - момент последней проверки ресурса.

Примечания по подтипам:

- `resource/repository` обычно использует `repo_host`, `official_url`, `license`.
- `resource/channel` обычно использует `official_url`, `provider`, `language`.
- `resource/tool` обычно использует `access_model`, `pricing_note`, `api_available`.
- `resource/document` обычно использует `official_url` и заметки по доступу/лицензии.
