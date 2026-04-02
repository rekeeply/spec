---
title: "quote"
weight: 15
---

# quote

Поля:

- `quote_text` (`long_text`) - зафиксированный текст цитаты или формулировка идеи.
- `quoted_author` (`text`) - автор/персона, которой принадлежит цитата.
- `source_title` (`text`) - название источника.
- `source_locator` (`text`) - указатель в источнике (страница, таймкод, глава, фрагмент URL).
- `language` (`text`) - язык цитаты.
- `original_text` (`long_text`) - текст на языке оригинала, если используется перевод.
- `context_note` (`long_text`) - пояснение контекста/интерпретации.
- `quote_date` (`date`) - дата высказывания/публикации, если известна.

Примечания по подтипам:

- `quote/text` обычно использует `source_locator` и `quoted_author`.
- `quote/dialogue` обычно использует `source_title` и контекстные примечания.
- `quote/idea` обычно использует `context_note` с краткой привязкой к источнику.
