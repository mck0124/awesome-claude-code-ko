# 수정 직후 자동 포맷 Hook

## 무엇을 하나
Claude가 파일을 쓰거나 고칠 때마다 확장자에 맞는 포맷터(prettier / ruff 또는 black / gofmt / rustfmt)를 자동 실행합니다. 포맷터가 없으면 아무것도 하지 않습니다.

## 언제 쓰나
Claude가 만든 코드의 들여쓰기·따옴표 스타일이 프로젝트와 달라서 diff가 지저분해질 때.

## 설치
```bash
mkdir -p ~/.claude/hooks && cp format.sh ~/.claude/hooks/ && chmod +x ~/.claude/hooks/format.sh
```
`settings.snippet.json`의 `hooks`를 `~/.claude/settings.json`에 합칩니다. 프로젝트 전용이면 `.claude/settings.json`에 넣으세요.

## 테스트 결과
가짜 `prettier`를 PATH에 두고 JSON을 직접 넣어 확인했습니다.
| 입력 | 결과 |
|---|---|
| `.ts` 파일 | 포맷터 호출됨 |
| `.txt` 파일 | 호출 안 됨 |
| 파일 경로 없음 / 포맷터 미설치 | 조용히 통과 (exit 0) |

## Claude Code 안에서 확인 ✅ (2026-11-16)
전역 설정에 설치하고 ruff 를 깐 뒤, Claude가 Write 도구로 일부러 엉망으로 쓴 `.py` 파일(`def  f( a,b ):`, 작은따옴표)을 만들자 곧바로 `def f(a, b):`, 큰따옴표로 포맷됐습니다. Claude Code는 "훅이 파일을 고쳤다"는 안내를 Claude에게 전달했습니다.

Claude Code 안에서 확인한 것은 ruff(`.py`)뿐입니다. prettier·gofmt·rustfmt 경로는 확인하지 않았습니다.

## 주의할 점
- 파일이 바뀌므로 Claude가 다음 수정 때 "파일이 예상과 다르다"고 한 번 다시 읽을 수 있습니다.
- `*.md`까지 prettier를 돌리면 문서 줄바꿈이 바뀝니다. 싫으면 `format.sh`의 `*.md`를 지우세요.
