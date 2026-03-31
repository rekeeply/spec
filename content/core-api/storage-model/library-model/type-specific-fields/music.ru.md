---
title: "music"
weight: 18
---

# music

Обязательные:

- `artist` (`text`) - основной артист/исполнитель/композитор.

Опциональные:

- `original_title` (`text`) - название на языке оригинала.
- `album_title` (`text`) - название родительского альбома.
- `release_year` (`integer`) - год релиза.
- `duration_seconds` (`duration`) - длительность трека/записи.
- `genre` (`text` или `multi_enum`) - музыкальный жанр.
- `label` (`text`) - музыкальный лейбл.
- `isrc` (`text`) - идентификатор ISRC.
- `platform` (`text`) - платформа/сервис прослушивания.
- `track_number` (`integer`) - номер трека в альбоме/EP.
- `disc_number` (`integer`) - номер диска для многодисковых релизов.

Примечания по подтипам:

- `music/track` обычно использует `duration_seconds`, `album_title`, `track_number`.
- `music/melody` обычно использует краткую метаинформацию и при необходимости ссылку на источник.
- `music/album` и `music/ep` обычно используют `release_year`, `label` и общие заметки по релизу.
- `music/playlist` обычно использует платформу/источник и заметки по кураторству.
