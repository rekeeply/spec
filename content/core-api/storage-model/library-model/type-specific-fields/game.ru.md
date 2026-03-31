---
title: "game"
weight: 12
---

# game

Обязательные:

- `platform` (`text`) - основная платформа/среда запуска (например, PC, PlayStation, Xbox, Nintendo, board).
- `release_year` (`integer`) - год первоначального релиза.

Опциональные:

- `developer` (`text`) - разработчик/студия.
- `publisher` (`text`) - издатель игры.
- `distribution_source` (`text` или `enum`) - источник/магазин, где игра доступна или приобретена (например, Steam, Epic Games Store, PS Store, Xbox Store, Nintendo eShop).
- `genre` (`text` или `multi_enum`) - жанровая классификация (например, RPG, strategy, puzzle).
- `mode` (`enum` или `multi_enum`) - режим игры (single-player, multiplayer, co-op).
- `playtime_hours` (`decimal`) - оценочная или фактическая длительность игры в часах.
- `players_count` (`text` или `integer`) - поддерживаемое/типичное количество игроков.
- `edition` (`text`) - обозначение издания/версии.
- `region` (`text`) - региональная версия/доступность.
