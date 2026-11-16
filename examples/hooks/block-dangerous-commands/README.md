# 위험한 명령 차단 Hook

## 무엇을 하나
Claude가 `rm -rf ~`, `git push --force`, `git reset --hard`, `DROP TABLE`, `curl | sh` 같은 명령을 실행하려 하면 **실행 전에 막고**, 이유를 Claude에게 알려 다른 방법을 찾게 합니다.

## 언제 쓰나
권한 프롬프트를 줄이려고 Bash를 넓게 허용해 둔 상태에서, 되돌릴 수 없는 명령만은 코드로 막고 싶을 때.

## 설치
```bash
mkdir -p ~/.claude/hooks
cp block-dangerous.sh ~/.claude/hooks/ && chmod +x ~/.claude/hooks/block-dangerous.sh
```
그다음 `settings.snippet.json`의 `hooks` 항목을 `~/.claude/settings.json`에 합칩니다.

## 테스트 결과 (스크립트 단독 실행, 입력 JSON을 직접 넣음)
| 명령 | 결과 |
|---|---|
| `ls -la` · `rm -rf node_modules` · `git push origin main` | 통과 (exit 0) |
| `rm -rf ~` · `git push --force …` · `git reset --hard …` · `curl … \| sh` · `DROP TABLE …` | 차단 (exit 2) |

## Claude Code 안에서 확인 ✅ (2026-11-16)
전역 `~/.claude/settings.json`에 설치한 뒤 Claude가 Bash로 `echo "git reset --hard"`를 실행하려 하자 실행 전에 막혔고, 차단 사유가 Claude에게 전달됐습니다. 설정을 저장한 뒤 세션을 다시 열지 않아도 바로 적용됐습니다.

Claude Code 안에서 확인한 것은 이 한 가지 규칙입니다. 나머지 규칙은 위 표처럼 스크립트 단독 실행으로만 확인했습니다.

## 주의할 점
- 명령 문자열 전체를 검사하므로 `echo "git reset --hard"`나 그 문구가 들어간 커밋 메시지처럼 실제로는 위험하지 않은 명령도 막힙니다.
- 정규식 기반이라 `bash -c "..."`로 감싸거나 변수로 쪼갠 명령은 못 잡습니다. **보안 경계가 아니라 실수 방지용**입니다.
- 차단 규칙은 `block-dangerous.sh`의 `grep` 줄을 고쳐서 추가하세요.
