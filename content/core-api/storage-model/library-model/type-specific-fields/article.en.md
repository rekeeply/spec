---
title: "article"
weight: 11
---

# article

Fields:

- `author` (`text`) - primary author of the article.
- `published_year` (`integer`) - publication year.
- `journal_or_source` (`text`) - publication source (journal/site/platform).
- `publication_date` (`date`) - exact publication date.
- `doi` (`text`) - DOI identifier.
- `volume` (`text` or `integer`) - volume number/label.
- `issue` (`text` or `integer`) - issue number/label.
- `pages` (`text`) - page range (e.g., `97-111`).
- `language` (`text`) - article language.
- `original_title` (`text`) - title in original language.
- `co_authors` (`text` or `long_text`) - additional authors/co-authors.
- `peer_reviewed` (`boolean`) - peer-reviewed marker.
- `publisher` (`text`) - publisher/organization.
- `publication_place` (`text`) - publication place.

Subtype notes:

- `article/scientific` usually uses publication metadata fields (`doi`, `journal_or_source`, `volume`, `issue`, `pages`, `peer_reviewed`).
- `article/web` usually uses web-source metadata fields (`publication_date`, `journal_or_source`); `doi` remains optional.
