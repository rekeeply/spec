---
title: "quote"
weight: 15
---

# quote

Fields:

- `quote_text` (`long_text`) - captured quote text or idea statement.
- `quoted_author` (`text`) - person/source author of the quote.
- `source_title` (`text`) - title of the source work.
- `source_locator` (`text`) - source pointer (page, timestamp, chapter, URL fragment).
- `language` (`text`) - quote language.
- `original_text` (`long_text`) - original-language quote if translation is used.
- `context_note` (`long_text`) - context/interpretation note.
- `quote_date` (`date`) - date of saying/publication when known.

Subtype notes:

- `quote/text` usually uses `source_locator` and `quoted_author`.
- `quote/dialogue` usually uses `source_title` and context notes.
- `quote/idea` usually uses `context_note` with concise source linkage.
