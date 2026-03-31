---
title: "screen"
weight: 13
---

# screen

Required:

- `release_year` (`integer`) - release year.
- `format` (`text` or `enum`) - screen format context (e.g., film/series/anime/animation).

Optional:

- `original_title` (`text`) - title in original language.
- `country` (`text`) - production country.
- `director` (`text`) - director.
- `writers` (`text` or `long_text`) - writers/screenwriters.
- `cast` (`long_text`) - main cast.
- `studio_or_network` (`text`) - studio/network/platform.
- `season_number` (`integer`) - season number (especially for `screen/episode`).
- `episode_number` (`integer`) - episode number (for `screen/episode`).
- `duration_minutes` (`integer`) - runtime in minutes.
- `release_date` (`date`) - exact release date.
- `age_rating` (`text`) - age rating/classification.
- `imdb_id` (`text`) - IMDb identifier.
- `franchise` (`text`) - franchise/universe name.

Subtype notes:

- `screen/movie` usually uses `duration_minutes`, `director`, `release_date`.
- `screen/series` usually uses `studio_or_network`, `cast`, `release_date`.
- `screen/animation` and `screen/anime` usually use `studio_or_network`, `season_number` when applicable.
- `screen/episode` usually uses `season_number`, `episode_number`, `duration_minutes`, with parent linkage via `parent_content_id`.
