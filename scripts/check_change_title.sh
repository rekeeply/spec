#!/usr/bin/env bash

set -euo pipefail

if [[ $# -lt 1 ]]; then
  echo "Usage: $0 \"type(scope): summary\"" >&2
  exit 2
fi

TITLE="$1"

TYPE_RE='docs|ia|i18n|infra|meta|editorial'
SCOPE_RE='index|intro|core|clients|appendices|changelog|readme|nav|theme|hugo|ci'
VERB_RE='add|update|refine|remove'
PATTERN="^(${TYPE_RE})\\((${SCOPE_RE})\\): (${VERB_RE}) .+$"

if [[ ${#TITLE} -gt 72 ]]; then
  echo "ERROR: title too long (${#TITLE} > 72): $TITLE" >&2
  exit 1
fi

if ! [[ "$TITLE" =~ $PATTERN ]]; then
  cat >&2 <<EOF
ERROR: invalid title format: $TITLE

Expected:
  type(scope): summary

Types:
  docs, ia, i18n, infra, meta, editorial

Scopes:
  index, intro, core, clients, appendices, changelog,
  readme, nav, theme, hugo, ci

Summary must start with:
  add, update, refine, remove
EOF
  exit 1
fi

echo "Title format is valid."
