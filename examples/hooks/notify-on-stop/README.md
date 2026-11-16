# 작업 끝나면 알림 Hook

## 무엇을 하나
Claude가 응답을 마치면 macOS 알림(소리 포함)을 띄웁니다. Linux에서는 `notify-send`, 없으면 터미널 벨.

## 언제 쓰나
리팩터링·테스트처럼 오래 걸리는 작업을 맡기고 다른 창에서 일할 때.

## 설치
**플러그인으로 설치 (권장)** — Claude Code 안에서:
```
/plugin marketplace add mck0124/awesome-claude-code-ko
/plugin install notify-on-stop@awesome-claude-code-ko
```
Claude Code 2.1.275 이상이면 `/plugin install notify-on-stop --marketplace mck0124/awesome-claude-code-ko` 한 줄로도 됩니다.

**직접 복사해서 설치**
```bash
mkdir -p ~/.claude/hooks && cp notify.sh ~/.claude/hooks/ && chmod +x ~/.claude/hooks/notify.sh
```
`settings.snippet.json`의 `hooks`를 `~/.claude/settings.json`에 합칩니다.

## Claude Code 안에서 확인 ✅ (2026-11-16)
macOS에서 전역 설정에 설치한 뒤, Claude의 응답이 끝나자 알림과 소리가 났습니다. 기존에 있던 다른 Stop 훅과 함께 등록해도 둘 다 동작했습니다.

Linux(`notify-send`)와 터미널 벨 경로는 확인하지 않았습니다.

## 주의할 점
- 매 응답마다 울립니다. 짧은 질문이 많으면 시끄러우니, 쓰지 않을 때는 settings에서 빼 두세요.
- macOS 시스템 설정 → 알림에서 터미널 앱의 알림이 허용되어 있어야 합니다.
