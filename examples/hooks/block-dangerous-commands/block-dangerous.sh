#!/usr/bin/env bash
# PreToolUse hook (matcher: Bash). stdin = JSON, exit 2 = 차단 + stderr를 Claude에게 전달
cmd=$(python3 -c 'import json,sys; print(json.load(sys.stdin).get("tool_input",{}).get("command",""))')

block() { echo "차단됨: $1 — 정말 필요하면 사용자가 직접 실행하세요." >&2; exit 2; }

echo "$cmd" | grep -Eq 'rm +(-[a-zA-Z]*r[a-zA-Z]*f|-[a-zA-Z]*f[a-zA-Z]*r) +(/|~|\$HOME)( |$)' && block "rm -rf 로 루트/홈 삭제"
echo "$cmd" | grep -Eq 'git +push.*(--force|-f)( |$)'   && block "git push --force"
echo "$cmd" | grep -Eq 'git +reset +--hard'              && block "git reset --hard"
echo "$cmd" | grep -Eiq 'drop +(table|database)'         && block "DROP TABLE/DATABASE"
echo "$cmd" | grep -Eq 'curl[^|]*\| *(ba)?sh'            && block "curl | sh"
exit 0
