| 예제 | 설명 | 검증 |
|---|---|---|
| [commit-message](commit-message/) | 스테이지된 변경으로 Conventional Commits 메시지 제안 | ✅ 측정: 100% → 100% (차이 없음) |
| [code-review-ko](code-review-ko/) | 브랜치 변경사항 한국어 코드 리뷰 (🔴🟡🟢 형식) | ✅ 측정: 30% → 100% |
| [korean-doc-polish](korean-doc-polish/) | 한국어 기술 문서의 번역투 교정 (변경 전/후 표 먼저) | ✅ 측정: 0% → 100% |
| [pr-description](pr-description/) | PR 제목·설명 작성 | ✅ 측정: 0% → 100% |

## 설치
**플러그인으로 설치 (권장)** — Claude Code 안에서:
```
/plugin marketplace add mck0124/awesome-claude-code-ko
/plugin install ko-skills@awesome-claude-code-ko
```
Claude Code 2.1.275 이상이면 `/plugin install ko-skills --marketplace mck0124/awesome-claude-code-ko` 한 줄로도 됩니다.

**직접 복사해서 설치**
각 폴더를 통째로 `~/.claude/skills/`(전역) 또는 `.claude/skills/`(프로젝트)에 복사합니다.
```bash
cp -r commit-message ~/.claude/skills/
```
Claude Code를 다시 시작하면 `/commit-message`처럼 부르거나, 상황에 맞으면 자동으로 사용됩니다.

> 검증 열의 수치는 [skill-gauge](https://github.com/mck0124/skill-gauge)로 잰 "Skill 없음 → Skill 있음" 통과율입니다 (Sonnet 5.5, 케이스당 5회, 2026-11-16). 통과 조건이 각 Skill의 출력 형식 규칙이라, 수치는 "품질"보다 **"규칙을 매번 지키는가"** 를 뜻합니다. 자세한 조건과 한계는 각 README에 있습니다.
