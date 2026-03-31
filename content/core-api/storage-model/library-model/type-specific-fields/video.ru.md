---
title: "video"
weight: 14
---

# video

Обязательные:

- `creator_or_channel` (`text`) - основной автор/креатор или канал.
- `release_year` (`integer`) - год релиза/публикации.

Опциональные:

- `original_title` (`text`) - название на языке оригинала.
- `duration_minutes` (`integer`) - длительность видео в минутах.
- `platform` (`text`) - платформа размещения (например, YouTube, Vimeo, Twitch).
- `series_name` (`text`) - название серии/шоу, если видео серийное.
- `episode_label` (`text`) - обозначение выпуска/части.
- `language` (`text`) - язык контента/озвучки.
- `subtitles` (`tag_list`) - языки/наличие субтитров.
- `published_at` (`datetime`) - точное время публикации.
- `age_rating` (`text`) - маркер возрастных ограничений.
- `view_count_snapshot` (`integer`) - сохраненный срез количества просмотров.

Примечания по подтипам:

- `video/lecture` и `video/tutorial` обычно используют `duration_minutes`, `series_name`, `episode_label`.
- `video/interview` обычно использует `creator_or_channel`, `series_name`, `published_at`.
- `video/stream_recording` обычно использует `published_at`, `duration_minutes`, `platform`.
- `video/lets_play` обычно использует `series_name`, `episode_label`, `platform`.
