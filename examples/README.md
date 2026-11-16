# 검증된 예제

각 예제 폴더에는 아래 형식의 `README.md`가 있습니다.

```
## 무엇을 하나
## 언제 쓰나
## 설치 (복사할 경로)
## 전/후 — 무엇이 좋아졌나 (측정 방법과 수치)
## 주의할 점
```

| 분류 | 폴더 |
|---|---|
| Skills | [`skills/`](skills/) |
| Hooks | [`hooks/`](hooks/) |
| settings.json | [`settings/`](settings/) |

## 현재 예제
| 분류 | 예제 | 검증 상태 |
|---|---|---|
| Skill | [commit-message](skills/commit-message/) · [code-review-ko](skills/code-review-ko/) · [korean-doc-polish](skills/korean-doc-polish/) · [pr-description](skills/pr-description/) | ❌ 실행·측정 전 |
| Hook | [block-dangerous-commands](hooks/block-dangerous-commands/) | ✅ Claude Code에서 차단 확인 (2026-11-16) |
| Hook | [auto-format](hooks/auto-format/) | 스크립트 테스트 완료 (가짜 포맷터) |
| Hook | [notify-on-stop](hooks/notify-on-stop/) | 문법 검사만 |
| 설정 | [permissions-allowlist](settings/permissions-allowlist/) · [project-claude-md](settings/project-claude-md/) · [personal-claude-md](settings/personal-claude-md/) | ❌ 미확인 / 템플릿 |
