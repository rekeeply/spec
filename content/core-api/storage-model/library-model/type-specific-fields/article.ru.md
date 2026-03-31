---
title: "article"
weight: 11
---

# article

Обязательные:

- `author` (`text`) - основной автор статьи.
- `published_year` (`integer`) - год публикации.

Опциональные:

- `journal_or_source` (`text`) - источник публикации (журнал/сайт/платформа).
- `publication_date` (`date`) - точная дата публикации.
- `doi` (`text`) - DOI идентификатор.
- `volume` (`text` или `integer`) - номер/обозначение тома.
- `issue` (`text` или `integer`) - номер/обозначение выпуска.
- `pages` (`text`) - диапазон страниц (например, `97-111`).
- `language` (`text`) - язык статьи.
- `original_title` (`text`) - название на языке оригинала.
- `co_authors` (`text` или `long_text`) - дополнительные авторы/соавторы.
- `peer_reviewed` (`boolean`) - маркер рецензируемой публикации.
- `publisher` (`text`) - издатель/организация.
- `publication_place` (`text`) - место публикации.

Примечания по подтипам:

- `article/scientific` обычно использует поля публикационной метаинформации (`doi`, `journal_or_source`, `volume`, `issue`, `pages`, `peer_reviewed`).
- `article/web` обычно использует поля веб-источника (`publication_date`, `journal_or_source`); `doi` остается опциональным.
