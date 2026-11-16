# code-review-ko

## 무엇을 하나
현재 브랜치의 변경사항을 한국어로 리뷰합니다. 🔴 버그 가능성 / 🟡 개선 제안 / 🟢 잘한 점으로 나누고, 지적마다 파일:줄을 붙입니다. 코드는 수정하지 않습니다.

## 언제 쓰나
PR을 올리기 전에 한 번 더 점검하고 싶을 때.

## 설치
**플러그인으로 설치 (권장)** — Claude Code 안에서:
```
/plugin marketplace add mck0124/awesome-claude-code-ko
/plugin install ko-skills@awesome-claude-code-ko
```
Claude Code 2.1.275 이상이면 `/plugin install ko-skills --marketplace mck0124/awesome-claude-code-ko` 한 줄로도 됩니다.

Skill 4개가 함께 설치되고 `/ko-skills:code-review-ko`로 부를 수 있습니다.

**이 Skill만 직접 복사해서 설치**
```bash
cp -r code-review-ko ~/.claude/skills/
```

## 전/후 ✅
**Claude Code에서 1회 실행 확인 (2026-11-16, Claude Code 2.1.318)**
`~/.claude/skills/`에 설치하고, 작은 테스트용 git 저장소에서 `claude -p`로 한 번 실행했습니다.

"PR 올리기 전에 리뷰해줘" → Skill이 자동으로 불렸고, 🔴🟡🟢 형식으로 보고했습니다. 테스트용으로 심어 둔 버그 2개(빈 목록 0 나눗셈, `percent` 단위 불일치)를 `cart.py:줄` 과 재현 입력까지 붙여 짚었고, 코드는 수정하지 않았습니다.

**측정 방법 (2026-11-16)** — [skill-gauge](https://github.com/mck0124/skill-gauge)로 케이스당 5회씩 실행했습니다. 모델은 Claude Sonnet 5.5, 도구는 끄고 diff·문서를 입력에 직접 붙였습니다. "Skill 있음"은 `SKILL.md`를 시스템 프롬프트로, "Skill 없음"은 `You are a helpful coding assistant.` 한 줄을 시스템 프롬프트로 썼습니다. 채점은 정규식·문자열 검사만 썼습니다(LLM 채점 없음). 케이스와 원본 결과는 [`eval/`](eval/)에 있습니다.

| 케이스 | Skill 없음 | Skill 있음 |
|---|---|---|
| zero-division (빈 목록에서 0 나눗셈) | 2/5 | 5/5 |
| off-by-one (`size + 1`) | 1/5 | 5/5 |
| **합계** | **30%** | **100%** |

통과 조건은 ① 🔴 표시 ② `파일:줄` 표기 ③ 심어 둔 버그 언급, 세 가지 모두입니다. **버그 자체는 Skill 없이도 10번 모두 찾았습니다(③ 10/10).** 차이는 형식에서 났습니다. Skill 없이는 `파일:줄` 표기가 5/10, 🔴 표시가 5/10였고 실행마다 형식이 달랐습니다. 즉 이 Skill은 "버그를 더 잘 찾게" 하는 것이 아니라 "매번 같은 형식으로, 줄 번호를 붙여" 보고하게 합니다.

> 케이스가 적고(케이스당 5회) 도구 없이 잰 결과라, Claude Code 안에서 git 명령을 직접 실행할 때의 동작(승인 전 실행 금지 등)은 이 수치에 들어 있지 않습니다. 그 부분은 위 1회 실행으로만 확인했습니다.

## 주의할 점
- 결과는 매번 조금씩 다를 수 있습니다. `SKILL.md`의 규칙을 자기 팀 기준에 맞게 고쳐 쓰세요.
