# commit-message

## 무엇을 하나
스테이지된 변경사항으로 Conventional Commits 형식의 커밋 메시지를 제안합니다. 승인 없이는 커밋하지 않고 push도 하지 않습니다.

## 언제 쓰나
커밋 메시지를 매번 고민하거나, 팀 컨벤션을 자꾸 어길 때.

## 설치
```bash
cp -r commit-message ~/.claude/skills/
```

## 전/후 ✅
**Claude Code에서 1회 실행 확인 (2026-11-16, Claude Code 2.1.318)**
`~/.claude/skills/`에 설치하고, 작은 테스트용 git 저장소에서 `claude -p`로 한 번 실행했습니다.

"커밋 메시지 써줘" → Skill이 자동으로 불렸고, `git diff --staged`와 `git log -5`를 본 뒤 `feat(cart): add free shipping check` 형식으로 제안했습니다. 제목·본문 언어를 기존 로그(영어)에 맞췄고, 커밋하지 않고 승인을 물었습니다.

**측정 방법 (2026-11-16)** — [skill-gauge](https://github.com/mck0124/skill-gauge)로 케이스당 5회씩 실행했습니다. 모델은 Claude Sonnet 5.5, 도구는 끄고 diff·문서를 입력에 직접 붙였습니다. "Skill 있음"은 `SKILL.md`를 시스템 프롬프트로, "Skill 없음"은 `You are a helpful coding assistant.` 한 줄을 시스템 프롬프트로 썼습니다. 채점은 정규식·문자열 검사만 썼습니다(LLM 채점 없음). 케이스와 원본 결과는 [`eval/`](eval/)에 있습니다.

| 케이스 | 확인한 규칙 | Skill 없음 | Skill 있음 |
|---|---|---|---|
| feat-scope | `feat(scope): 요약` 50자 이내·마침표 없음 | 5/5 | 5/5 |
| korean-log | 최근 로그가 한국어면 한국어 요약 | 5/5 | 5/5 |
| mixed-change | 목적이 다른 변경은 나눠 커밋하자고 제안 | 5/5 | 5/5 |
| **합계** | | **100%** | **100%** |

**이 측정에서는 차이가 없었습니다.** 입력에 Conventional Commits 형식의 `git log`가 들어 있으면 Sonnet 5.5는 Skill 없이도 같은 형식을 따랐습니다. 이 Skill의 값은 형식보다 "승인 없이 커밋하지 않는다, push하지 않는다"는 동작 규칙과, 로그가 없는 새 저장소에서 형식을 고정해 주는 데 있을 수 있지만, 그 부분은 아직 재지 않았습니다.

> 케이스가 적고(케이스당 5회) 도구 없이 잰 결과라, Claude Code 안에서 git 명령을 직접 실행할 때의 동작(승인 전 실행 금지 등)은 이 수치에 들어 있지 않습니다. 그 부분은 위 1회 실행으로만 확인했습니다.

## 주의할 점
- 결과는 매번 조금씩 다를 수 있습니다. `SKILL.md`의 규칙을 자기 팀 기준에 맞게 고쳐 쓰세요.
