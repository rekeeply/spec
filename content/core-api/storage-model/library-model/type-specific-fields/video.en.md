---
title: "video"
weight: 14
---

# video

Required:

- `creator_or_channel` (`text`) - primary creator, author, or channel.
- `release_year` (`integer`) - release/publication year.

Optional:

- `original_title` (`text`) - title in original language.
- `duration_minutes` (`integer`) - video duration in minutes.
- `platform` (`text`) - hosting platform (e.g., YouTube, Vimeo, Twitch).
- `series_name` (`text`) - series/show name if video belongs to a series.
- `episode_label` (`text`) - episode/part label.
- `language` (`text`) - spoken/content language.
- `subtitles` (`tag_list`) - subtitle languages/availability.
- `published_at` (`datetime`) - exact publication timestamp.
- `age_rating` (`text`) - age suitability marker.
- `view_count_snapshot` (`integer`) - optional captured view count.

Subtype notes:

- `video/lecture` and `video/tutorial` usually use `duration_minutes`, `series_name`, `episode_label`.
- `video/interview` usually uses `creator_or_channel`, `series_name`, `published_at`.
- `video/stream_recording` usually uses `published_at`, `duration_minutes`, `platform`.
- `video/lets_play` usually uses `series_name`, `episode_label`, `platform`.
