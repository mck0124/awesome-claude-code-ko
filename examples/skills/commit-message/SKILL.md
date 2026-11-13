---
name: commit-message
description: 스테이지된 변경사항을 보고 Conventional Commits 형식의 커밋 메시지를 제안한다. 커밋 메시지를 쓰거나 "커밋해줘"라고 할 때 사용.
---

# 커밋 메시지 작성

1. `git diff --staged`로 변경 내용을 확인한다. 스테이지된 게 없으면 `git status`를 보고 사용자에게 무엇을 스테이지할지 묻는다.
2. 아래 형식으로 메시지를 만든다.

```
<type>(<scope>): <한 줄 요약, 50자 이내, 마침표 없음>

<왜 바꿨는지 1~3줄 (무엇을 했는지는 diff가 말해 준다)>
```

- type: feat, fix, refactor, docs, test, chore, perf, ci 중 하나
- scope는 바뀐 디렉터리나 모듈 이름 (여러 곳이면 생략)
- 요약은 명령형으로 쓰고, 제목과 본문 언어는 최근 `git log -5`와 맞춘다
- 한 커밋에 서로 다른 목적의 변경이 섞여 있으면 **나눠서 커밋하자고 제안**한다

3. 메시지를 보여 주고 사용자가 승인하면 `git commit`을 실행한다. 승인 없이 커밋하지 않는다. push는 하지 않는다.
