#!/usr/bin/env bash
# Repository security and hygiene checks.
# Copyright (c) 2026 Mohamed Dawood. MIT License; see LICENSE.
set -uo pipefail
cd "$(dirname "$0")/.."
status=0
fail() { echo "FAIL: $1"; status=1; }

if git grep -nEI '(^|[^0-9.])(10\.[0-9]{1,3}|192\.168|172\.(1[6-9]|2[0-9]|3[01]))\.[0-9]{1,3}\.[0-9]{1,3}([^0-9.]|$)' -- . ':!tools/check_repo.sh' >/dev/null; then
  fail "private IP address committed"
fi

if git ls-files '*.sql' | grep -q .; then
  fail "legacy .sql OS-command files remain"
fi

while IFS= read -r f; do
  grep -qlU $'\r' "$f" && fail "CRLF line endings: $f"
done < <(git ls-files '*.sh' '*.md')

[ "$status" -eq 0 ] && echo "All checks passed."
exit "$status"
