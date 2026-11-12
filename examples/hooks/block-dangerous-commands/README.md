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

> ⚠️ 위 표는 스크립트에 JSON을 직접 넣어 확인한 결과입니다. Claude Code 안에서 실제로 막히는지는 **아직 메인테이너가 확인하지 않았습니다** (확인하면 이 줄을 지우고 ✅ 표시).

## 주의할 점
- 정규식 기반이라 `bash -c "..."`로 감싸거나 변수로 쪼갠 명령은 못 잡습니다. **보안 경계가 아니라 실수 방지용**입니다.
- 차단 규칙은 `block-dangerous.sh`의 `grep` 줄을 고쳐서 추가하세요.
