---
title: "book"
weight: 10
---

# book

Обязательные:

- `author` (`text`) - основной автор книги.
- `published_year` (`integer`) - год публикации используемого издания.

Опциональные:

- `original_title` (`text`) - название на языке оригинала.
- `co_authors` (`text` или `long_text`) - дополнительные авторы/соавторы.
- `language` (`text`) - язык конкретного издания/материала.
- `original_language` (`text`) - исходный язык произведения.
- `publisher` (`text`) - издательство.
- `publication_place` (`text`) - город/место издания.
- `edition` (`text`) - обозначение или номер издания.
- `isbn` (`text`) - идентификатор ISBN.
- `pages_total` (`integer`) - общее количество страниц.
- `translator` (`text`) - имя(имена) переводчика.
- `volume` (`text` или `integer`) - номер/обозначение тома для многотомных изданий.
- `series` (`text`) - название книжной серии.
- `reference_scope` (`text`) - уточнение scope для записей `book/reference`.
