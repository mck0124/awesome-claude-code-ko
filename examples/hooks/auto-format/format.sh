#!/usr/bin/env bash
# PostToolUse hook (matcher: Edit|Write|MultiEdit). Claude가 파일을 수정한 직후 포맷터를 돌린다.
# 포맷터가 설치되어 있지 않으면 조용히 넘어간다. 실패해도 작업을 막지 않는다(항상 exit 0).
f=$(python3 -c 'import json,sys; print(json.load(sys.stdin).get("tool_input",{}).get("file_path",""))')
[ -f "$f" ] || exit 0
run() { command -v "$1" >/dev/null 2>&1 && "$@" >/dev/null 2>&1; }
case "$f" in
  *.js|*.jsx|*.ts|*.tsx|*.json|*.css|*.md) run prettier --write "$f" ;;
  *.py) run ruff format "$f" || run black -q "$f" ;;
  *.go) run gofmt -w "$f" ;;
  *.rs) run rustfmt "$f" ;;
esac
exit 0
