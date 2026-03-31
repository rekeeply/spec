---
title: "screen"
weight: 13
---

# screen

Обязательные:

- `release_year` (`integer`) - год релиза.
- `format` (`text` или `enum`) - формат экранного контента (например, film/series/anime/animation).

Опциональные:

- `original_title` (`text`) - название на языке оригинала.
- `country` (`text`) - страна производства.
- `director` (`text`) - режиссер.
- `writers` (`text` или `long_text`) - сценаристы.
- `cast` (`long_text`) - основной актерский состав.
- `studio_or_network` (`text`) - студия/канал/платформа.
- `season_number` (`integer`) - номер сезона (особенно для `screen/episode`).
- `episode_number` (`integer`) - номер эпизода (для `screen/episode`).
- `duration_minutes` (`integer`) - длительность в минутах.
- `release_date` (`date`) - точная дата релиза.
- `age_rating` (`text`) - возрастной рейтинг.
- `imdb_id` (`text`) - идентификатор IMDb.
- `franchise` (`text`) - название франшизы/вселенной.

Примечания по подтипам:

- `screen/movie` обычно использует `duration_minutes`, `director`, `release_date`.
- `screen/series` обычно использует `studio_or_network`, `cast`, `release_date`.
- `screen/animation` и `screen/anime` обычно используют `studio_or_network`, `season_number` при необходимости.
- `screen/episode` обычно использует `season_number`, `episode_number`, `duration_minutes`, со связью через `parent_content_id`.
