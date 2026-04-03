---
title: "Content Typing"
weight: 11
---

# Content Typing

## Baseline Rules

- `content_type` is mandatory; entries MUST NOT be created without a type.
- `content_subtype` is optional.
- Manual entry creation MUST start with selecting `content_type`.
- After type selection, subtype and other fields may be filled later.

## Default and Recommended Set

- The following type/subtype set is available by default and is recommended based on practical personal usage patterns.

### `book`

Purpose: long-form written works and references.

Fields: see [Type-Specific Fields](type-specific-fields/).

- `fiction` - fictional books.
- `non_fiction` - non-fictional books.
- `reference` - lookup/reference-oriented books.

### `article`

Purpose: shorter written materials from web or publication sources.

- `web` - general web articles.
- `scientific` - research/scientific papers and publication-like entries.
- `blog` - blog-style posts and personal publications.
- `tutorial` - step-by-step instructional articles.

### `game`

Purpose: interactive play-oriented content.

- `board` - physical board or tabletop games.
- `video_game` - computer/console game entries.
- `web_game` - browser or online web-play game entries.

### `screen`

Purpose: film/series-style visual content.

- `movie` - single feature or short film entries.
- `series` - multi-episode series entries.
- `animation` - non-anime animated screen content.
- `anime` - anime-specific screen content.
- `episode` - episode-level entry (optionally linked via `parent_content_id`).

Note: `serial` is intentionally not used as a separate subtype to avoid taxonomy overload.

### `video`

Purpose: non-screen-series video materials (clips, lectures, tutorials, streams).

- `clip` - short-form or standalone clips.
- `lecture` - lecture-format videos.
- `tutorial` - practical how-to video materials.
- `interview` - interview-format videos.
- `stream_recording` - recorded streams or VOD entries.
- `lets_play` - gameplay/let's play videos.
- `entertainment` - entertainment-focused videos outside other subtype buckets.

### `quote`

Purpose: captured excerpts, sayings, and distilled ideas.

- `text` - direct textual quote.
- `dialogue` - quote from a dialog or conversation.
- `idea` - summarized idea derived from a source.

### `person`

Purpose: people entities relevant to consumed or tracked content.

- `author` - person mainly tracked as an author.
- `speaker` - person mainly tracked for talks/speeches.
- `researcher` - person tracked in research/science context.
- `creator` - general creator profile.

### `resource`

Purpose: external sources, tools, communities, and reference assets.

- `repository` - source-code repository (e.g., Git hosting).
- `channel` - media channel (e.g., Telegram/YouTube).
- `site` - general website resource.
- `tool` - software/tooling resource.
- `dataset` - data collection or dataset resource.
- `newsletter` - recurring newsletter resource.
- `community` - community/forum/group resource.
- `document` - standalone document resource.

### `music`

Purpose: music-specific listening entities.

- `track` - single music track.
- `melody` - short melody/theme entry.
- `album` - album-level release.
- `ep` - EP release.
- `playlist` - curated playlist entry.

### `audio`

Purpose: spoken or non-music audio content.

- `audiobook` - audiobook entry.
- `podcast_episode` - single podcast episode.
- `podcast_show` - podcast show/feed-level entry.
- `lecture_audio` - audio lecture material.
- `interview_audio` - audio interview material.
- `voice_note` - personal or imported voice note.

### `misc`

Purpose: fallback type for entries that do not fit existing default types.

- no default subtypes.

## Customization

- Users MUST be able to create custom types and custom subtypes.
- Users MUST be able to rename and adjust custom type/subtype sets.
- For both default and custom type/subtype sets, users MUST be able to customize field sets.
- Field definitions and field data types are specified in a separate section.
- Type/subtype taxonomy and field schemas MUST be included in library export/import scope.
