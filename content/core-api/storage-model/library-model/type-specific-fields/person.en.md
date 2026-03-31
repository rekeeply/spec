---
title: "person"
weight: 16
---

# person

Required:

- `display_name` (`text`) - primary person name used in library views.

Optional:

- `full_name` (`text`) - full legal/full public name.
- `aliases` (`tag_list`) - alternative names/aliases.
- `born_year` (`integer`) - birth year.
- `died_year` (`integer`) - death year when applicable.
- `nationality` (`text`) - nationality/country identity marker.
- `roles` (`multi_enum`) - roles/professions.
- `known_for` (`long_text`) - short note about what person is known for.
- `official_site` (`url`) - official website/profile URL.
- `external_ids` (`json`) - external identifiers (e.g., ORCID, Wikidata, IMDb).

Subtype notes:

- `person/author` usually uses `roles`, `known_for`, and publication-oriented links.
- `person/speaker` usually uses media/profile links and topic notes.
- `person/researcher` usually uses `external_ids` and institution/research context in notes.
- `person/creator` usually uses platform/profile links.
