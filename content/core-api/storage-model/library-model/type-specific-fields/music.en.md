---
title: "music"
weight: 18
---

# music

Fields:

- `artist` (`text`) - primary artist/composer.
- `original_title` (`text`) - original track/release title.
- `album_title` (`text`) - parent album title.
- `release_year` (`integer`) - release year.
- `duration_seconds` (`duration`) - track/runtime duration.
- `genre` (`text` or `multi_enum`) - music genre.
- `label` (`text`) - record label.
- `isrc` (`text`) - ISRC identifier.
- `platform` (`text`) - listening platform/service.
- `track_number` (`integer`) - track order in album/EP.
- `disc_number` (`integer`) - disc number for multi-disc releases.

Subtype notes:

- `music/track` usually uses `duration_seconds`, `album_title`, `track_number`.
- `music/melody` usually uses concise metadata with optional source linkage.
- `music/album` and `music/ep` usually use `release_year`, `label`, and high-level notes.
- `music/playlist` usually uses platform/source and curation notes.
