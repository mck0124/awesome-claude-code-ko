# commit-message

## 무엇을 하나
스테이지된 변경사항으로 Conventional Commits 형식의 커밋 메시지를 제안합니다. 승인 없이는 커밋하지 않고 push도 하지 않습니다.

## 언제 쓰나
커밋 메시지를 매번 고민하거나, 팀 컨벤션을 자꾸 어길 때.

## 설치
```bash
cp -r commit-message ~/.claude/skills/
```

## 전/후
**Claude Code에서 1회 실행 확인 (2026-11-16, Claude Code 2.1.318)**
`~/.claude/skills/`에 설치하고, 작은 테스트용 git 저장소에서 `claude -p`로 한 번 실행했습니다.

"커밋 메시지 써줘" → Skill이 자동으로 불렸고, `git diff --staged`와 `git log -5`를 본 뒤 `feat(cart): add free shipping check` 형식으로 제안했습니다. 제목·본문 언어를 기존 로그(영어)에 맞췄고, 커밋하지 않고 승인을 물었습니다.

> ⚠️ 1회 실행 결과입니다. "Skill 없이"와 비교한 전/후 수치는 **아직 측정하지 않았습니다.** skill-gauge로 N회 반복 실행한 통과율을 잰 뒤에 ✅ 표시를 붙입니다.

## 주의할 점
- 결과는 매번 조금씩 다를 수 있습니다. `SKILL.md`의 규칙을 자기 팀 기준에 맞게 고쳐 쓰세요.
