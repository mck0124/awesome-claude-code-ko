#!/usr/bin/env bash
# Stop hook. Claude가 응답을 끝내면 알림을 띄운다. 긴 작업을 맡겨 두고 다른 일을 할 때 유용.
# macOS: osascript / Linux: notify-send(있을 때) / 그 외: 터미널 벨
msg="Claude Code 작업이 끝났어요"
if command -v osascript >/dev/null 2>&1; then
  osascript -e "display notification \"$msg\" with title \"Claude Code\" sound name \"Glass\"" >/dev/null 2>&1
elif command -v notify-send >/dev/null 2>&1; then
  notify-send "Claude Code" "$msg"
else
  printf '\a'
fi
exit 0
