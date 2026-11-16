| 예제 | 설명 | 검증 |
|---|---|---|
| [commit-message](commit-message/) | 스테이지된 변경으로 Conventional Commits 메시지 제안 | 🟡 1회 실행 확인 · 측정 전 |
| [code-review-ko](code-review-ko/) | 브랜치 변경사항 한국어 코드 리뷰 (🔴🟡🟢 형식) | 🟡 1회 실행 확인 · 측정 전 |
| [korean-doc-polish](korean-doc-polish/) | 한국어 기술 문서의 번역투 교정 (변경 전/후 표 먼저) | 🟡 1회 실행 확인 · 측정 전 |
| [pr-description](pr-description/) | PR 제목·설명 작성 | 🟡 1회 실행 확인 · 측정 전 |

## 설치
각 폴더를 통째로 `~/.claude/skills/`(전역) 또는 `.claude/skills/`(프로젝트)에 복사합니다.
```bash
cp -r commit-message ~/.claude/skills/
```
Claude Code를 다시 시작하면 `/commit-message`처럼 부르거나, 상황에 맞으면 자동으로 사용됩니다.

> ⚠️ 위 Skill들은 Claude Code 안에서 **한 번씩 실행해 자동 호출과 규칙 준수를 확인했습니다** (2026-11-16). [skill-gauge](https://github.com/mck0124/skill-gauge)로 잰 통과율은 아직 없습니다. 측정 후 각 README에 결과를 적을 예정입니다.
