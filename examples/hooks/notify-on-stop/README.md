# 작업 끝나면 알림 Hook

## 무엇을 하나
Claude가 응답을 마치면 macOS 알림(소리 포함)을 띄웁니다. Linux에서는 `notify-send`, 없으면 터미널 벨.

## 언제 쓰나
리팩터링·테스트처럼 오래 걸리는 작업을 맡기고 다른 창에서 일할 때.

## 설치
```bash
mkdir -p ~/.claude/hooks && cp notify.sh ~/.claude/hooks/ && chmod +x ~/.claude/hooks/notify.sh
```
`settings.snippet.json`의 `hooks`를 `~/.claude/settings.json`에 합칩니다.

## 테스트 결과
문법 검사(`bash -n`)만 했습니다. 알림이 실제로 뜨는지는 **아직 메인테이너가 확인하지 않았습니다.**

## 주의할 점
- 매 응답마다 울립니다. 짧은 질문이 많으면 시끄러우니, 쓰지 않을 때는 settings에서 빼 두세요.
- macOS 시스템 설정 → 알림에서 터미널 앱의 알림이 허용되어 있어야 합니다.
