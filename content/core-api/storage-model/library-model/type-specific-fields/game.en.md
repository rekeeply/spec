---
title: "game"
weight: 12
---

# game

Fields:

- `platform` (`text`) - primary runtime platform/environment (e.g., PC, PlayStation, Xbox, Nintendo, board).
- `release_year` (`integer`) - initial release year.
- `developer` (`text`) - game developer/studio.
- `publisher` (`text`) - game publisher.
- `distribution_source` (`text` or `enum`) - source/store where game is available or owned (e.g., Steam, Epic Games Store, PS Store, Xbox Store, Nintendo eShop).
- `genre` (`text` or `multi_enum`) - genre classification (e.g., RPG, strategy, puzzle).
- `mode` (`enum` or `multi_enum`) - gameplay mode (single-player, multiplayer, co-op).
- `playtime_hours` (`decimal`) - estimated or tracked playtime in hours.
- `players_count` (`text` or `integer`) - supported/typical number of players.
- `edition` (`text`) - game edition/version label.
- `region` (`text`) - regional version/availability scope.
