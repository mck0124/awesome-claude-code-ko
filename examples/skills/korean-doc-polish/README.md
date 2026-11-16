# korean-doc-polish

## 무엇을 하나
한국어 README·기술 문서의 번역투와 긴 문장, 용어 불일치를 고칩니다. 변경 전/후 표를 먼저 보여 주고 승인 후에만 적용하며 코드 블록과 링크는 건드리지 않습니다.

## 언제 쓰나
영어 문서를 번역했거나 AI가 쓴 초안이 어색할 때.

## 설치
**플러그인으로 설치 (권장)** — Claude Code 안에서:
```
/plugin marketplace add mck0124/awesome-claude-code-ko
/plugin install ko-skills@awesome-claude-code-ko
```
Claude Code 2.1.275 이상이면 `/plugin install ko-skills --marketplace mck0124/awesome-claude-code-ko` 한 줄로도 됩니다.

Skill 4개가 함께 설치되고 `/ko-skills:korean-doc-polish`로 부를 수 있습니다.

**이 Skill만 직접 복사해서 설치**
```bash
cp -r korean-doc-polish ~/.claude/skills/
```

## 전/후 ✅
**Claude Code에서 1회 실행 확인 (2026-11-16, Claude Code 2.1.318)**
`~/.claude/skills/`에 설치하고, 작은 테스트용 git 저장소에서 `claude -p`로 한 번 실행했습니다.

"guide.md 문서 다듬어줘" → Skill이 자동으로 불렸고, 번역투 6곳을 변경 전/후 표로 보여 줬습니다. 에이전트/agent 혼용을 통일했고, 코드 블록은 그대로 두었으며, 파일은 수정하지 않고 승인을 물었습니다.

**측정 방법 (2026-11-16)** — [skill-gauge](https://github.com/mck0124/skill-gauge)로 케이스당 5회씩 실행했습니다. 모델은 Claude Sonnet 5.5, 도구는 끄고 diff·문서를 입력에 직접 붙였습니다. "Skill 있음"은 `SKILL.md`를 시스템 프롬프트로, "Skill 없음"은 `You are a helpful coding assistant.` 한 줄을 시스템 프롬프트로 썼습니다. 채점은 정규식·문자열 검사만 썼습니다(LLM 채점 없음). 케이스와 원본 결과는 [`eval/`](eval/)에 있습니다.

| 케이스 | Skill 없음 | Skill 있음 |
|---|---|---|
| translationese (번역투 문단) | 0/5 | 5/5 |
| uncertain-fact (근거 없는 "10배 빠르다" 포함) | 0/5 | 5/5 |
| **합계** | **0%** | **100%** |

통과 조건은 ① 변경 전/후 표 ② (translationese) "김민수가 만든"으로 교정 ③ (uncertain-fact) "확인 필요" 표기입니다. **번역투 교정 자체는 Skill 없이도 됐습니다(② 5/5).** Skill 없이는 변경 전/후 표가 한 번도 나오지 않았고(0/10), 근거 없는 문장을 "확인 필요"로 따로 모으지도 않았습니다(0/5). 이 Skill의 효과는 "무엇을 바꿨는지 먼저 보여 주고, 사실은 건드리지 않는" 절차입니다.

> 케이스가 적고(케이스당 5회) 도구 없이 잰 결과라, Claude Code 안에서 git 명령을 직접 실행할 때의 동작(승인 전 실행 금지 등)은 이 수치에 들어 있지 않습니다. 그 부분은 위 1회 실행으로만 확인했습니다.

## 주의할 점
- 결과는 매번 조금씩 다를 수 있습니다. `SKILL.md`의 규칙을 자기 팀 기준에 맞게 고쳐 쓰세요.
