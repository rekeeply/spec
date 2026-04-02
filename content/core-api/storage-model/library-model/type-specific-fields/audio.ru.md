---
title: "audio"
weight: 19
---

# audio

Поля:

- `speaker_or_author` (`text`) - основной спикер/автор/ведущий.
- `original_title` (`text`) - название на языке оригинала.
- `release_year` (`integer`) - год релиза/публикации.
- `duration_seconds` (`duration`) - длительность аудио.
- `language` (`text`) - язык речи.
- `publisher_or_show` (`text`) - издатель/шоу/сеть.
- `episode_label` (`text`) - обозначение эпизода/главы.
- `narrator` (`text`) - диктор/озвучивающий.
- `platform` (`text`) - платформа распространения/прослушивания.
- `isbn_or_external_id` (`text`) - внешний идентификатор при необходимости.

Примечания по подтипам:

- `audio/audiobook` обычно использует `narrator`, `publisher_or_show`, `isbn_or_external_id`.
- `audio/podcast_episode` обычно использует `episode_label`, `publisher_or_show`, `platform`.
- `audio/podcast_show` обычно использует метаинформацию уровня шоу/платформы.
- `audio/lecture_audio` и `audio/interview_audio` обычно используют `speaker_or_author`, `duration_seconds`, `language`.
- `audio/voice_note` обычно использует минимальную метаинформацию и контекстные заметки.
