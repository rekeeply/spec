---
title: "resource"
weight: 17
---

# resource

Required:

- `resource_name` (`text`) - primary resource title/name.
- `resource_kind` (`text` or `enum`) - resource kind descriptor inside subtype context.

Optional:

- `provider` (`text`) - provider/owner organization.
- `official_url` (`url`) - primary resource URL.
- `access_model` (`enum`) - access mode (free/paid/freemium/private).
- `license` (`text`) - license/usage model.
- `pricing_note` (`text`) - pricing model summary.
- `api_available` (`boolean`) - API availability marker.
- `repo_host` (`text`) - host platform for repositories (e.g., GitHub, GitLab).
- `language` (`text`) - primary language of content/interface.
- `last_checked_at` (`datetime`) - last verification/check timestamp.

Subtype notes:

- `resource/repository` usually uses `repo_host`, `official_url`, `license`.
- `resource/channel` usually uses `official_url`, `provider`, `language`.
- `resource/tool` usually uses `access_model`, `pricing_note`, `api_available`.
- `resource/document` usually uses `official_url` and access/license notes.
