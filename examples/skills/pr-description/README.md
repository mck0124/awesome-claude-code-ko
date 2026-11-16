# pr-description

## 무엇을 하나
브랜치 변경사항으로 PR 제목과 설명(배경 / 변경 내용 / 테스트 / 리뷰 포인트)을 작성합니다. 실행하지 않은 테스트는 체크하지 않습니다.

## 언제 쓰나
PR 설명 쓰기가 귀찮아서 대충 쓰게 될 때.

## 설치
**플러그인으로 설치 (권장)** — Claude Code 안에서:
```
/plugin marketplace add mck0124/awesome-claude-code-ko
/plugin install ko-skills@awesome-claude-code-ko
```
Claude Code 2.1.275 이상이면 `/plugin install ko-skills --marketplace mck0124/awesome-claude-code-ko` 한 줄로도 됩니다.

Skill 4개가 함께 설치되고 `/ko-skills:pr-description`로 부를 수 있습니다.

**이 Skill만 직접 복사해서 설치**
```bash
cp -r pr-description ~/.claude/skills/
```

## 전/후 ✅
**Claude Code에서 1회 실행 확인 (2026-11-16, Claude Code 2.1.318)**
`~/.claude/skills/`에 설치하고, 작은 테스트용 git 저장소에서 `claude -p`로 한 번 실행했습니다.

"PR 설명 써줘" → Skill이 자동으로 불렸고, 배경/변경 내용/테스트/리뷰 포인트 템플릿대로 작성했습니다. 돌리지 않은 테스트는 체크하지 않았고, `gh pr create`는 실행하지 않고 승인을 물었습니다.

**측정 방법 (2026-11-16)** — [skill-gauge](https://github.com/mck0124/skill-gauge)로 케이스당 5회씩 실행했습니다. 모델은 Claude Sonnet 5.5, 도구는 끄고 diff·문서를 입력에 직접 붙였습니다. "Skill 있음"은 `SKILL.md`를 시스템 프롬프트로, "Skill 없음"은 `You are a helpful coding assistant.` 한 줄을 시스템 프롬프트로 썼습니다. 채점은 정규식·문자열 검사만 썼습니다(LLM 채점 없음). 케이스와 원본 결과는 [`eval/`](eval/)에 있습니다.

| 케이스 | Skill 없음 | Skill 있음 |
|---|---|---|
| no-tests-run (테스트 언급 없음) | 0/5 | 5/5 |
| tests-run ("pytest 8개 통과"라고 알려 줌) | 0/5 | 5/5 |
| **합계** | **0%** | **100%** |

통과 조건은 템플릿의 네 제목(배경 / 변경 내용 / 테스트 / 리뷰 포인트)과 테스트 체크박스 규칙입니다. Skill 없이 0%인 것은 대부분 **제목 이름이 템플릿과 달라서**이며, 설명의 질이 나빴다는 뜻이 아닙니다. "돌리지 않은 테스트를 체크하지 않는다"는 규칙은 Skill 없이도 지켰습니다(5/5). 이 Skill의 효과는 팀이 정한 템플릿을 매번 똑같이 따르게 하는 것입니다.

> 케이스가 적고(케이스당 5회) 도구 없이 잰 결과라, Claude Code 안에서 git 명령을 직접 실행할 때의 동작(승인 전 실행 금지 등)은 이 수치에 들어 있지 않습니다. 그 부분은 위 1회 실행으로만 확인했습니다.

## 주의할 점
- 결과는 매번 조금씩 다를 수 있습니다. `SKILL.md`의 규칙을 자기 팀 기준에 맞게 고쳐 쓰세요.
