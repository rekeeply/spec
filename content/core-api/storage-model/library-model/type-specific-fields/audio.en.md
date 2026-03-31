---
title: "audio"
weight: 19
---

# audio

Required:

- `speaker_or_author` (`text`) - primary speaker/author/host.

Optional:

- `original_title` (`text`) - title in original language.
- `release_year` (`integer`) - release/publication year.
- `duration_seconds` (`duration`) - audio duration.
- `language` (`text`) - spoken language.
- `publisher_or_show` (`text`) - publisher/show/network name.
- `episode_label` (`text`) - episode/chapter label.
- `narrator` (`text`) - narrator/voice performer.
- `platform` (`text`) - distribution/listening platform.
- `isbn_or_external_id` (`text`) - external identifier when applicable.

Subtype notes:

- `audio/audiobook` usually uses `narrator`, `publisher_or_show`, `isbn_or_external_id`.
- `audio/podcast_episode` usually uses `episode_label`, `publisher_or_show`, `platform`.
- `audio/podcast_show` usually uses show-level publisher/platform metadata.
- `audio/lecture_audio` and `audio/interview_audio` usually use `speaker_or_author`, `duration_seconds`, `language`.
- `audio/voice_note` usually uses minimal metadata and creation context notes.
