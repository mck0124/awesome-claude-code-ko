# Awesome Claude Code 한국어 🇰🇷

**Claude Code를 실전에서 잘 쓰기 위한 한국어 자료 · 검증된 설정 예제 모음**

영어 자료는 넘쳐나는데 한국어로 "직접 써보고 검증한" 자료는 드물어서 만들었습니다.
링크만 모으지 않고, **실제로 돌려보고 효과를 확인한 Skill · Hook · 설정**을 [`examples/`](examples/)에 함께 담습니다.

⭐ 도움이 됐다면 Star, 좋은 자료를 알고 있다면 [추천해 주세요](../../issues/new?template=suggest.yml).

> **표시** ✅ 메인테이너가 직접 읽거나 써보고 확인함 (아직 표시 없는 링크는 수집만 한 상태) · 🇰🇷 한국어 자료 · 🧪 측정 결과 있음

## 목차
- [시작하기](#시작하기)
- [공식 자료](#공식-자료)
- [한국어 가이드 · 강의](#한국어-가이드--강의)
- [CLAUDE.md 작성법](#claudemd-작성법)
- [Skills](#skills)
- [Hooks](#hooks)
- [MCP 서버](#mcp-서버)
- [서브에이전트 · 플러그인](#서브에이전트--플러그인)
- [워크플로 · 실전 사례](#워크플로--실전-사례)
- [도구](#도구)
- [검증된 예제 (examples/)](#검증된-예제)
- [영어 자료 모음](#영어-자료-모음)

## 시작하기
<!-- 설치 → 첫 세션 → CLAUDE.md → 권한 설정까지 10분 가이드 (작성 예정) -->
_작성 중 — 처음 쓰는 사람을 위한 10분 가이드가 곧 들어갑니다._

## 공식 자료
- [anthropics/claude-code](https://github.com/anthropics/claude-code) — 공식 저장소 (이슈 · 변경 이력)
- [빠른 시작 (한국어)](https://code.claude.com/docs/ko/quickstart) 🇰🇷

## 한국어 가이드 · 강의
- [fivetaku/cc101](https://github.com/fivetaku/cc101) 🇰🇷
- [Claude Code 완벽 가이드](https://wikidocs.net/368493) 🇰🇷 — 위키독스
- [클로드 코드: 터미널 기반 코딩 에이전트](https://daleseo.com/claude-code/) 🇰🇷 — 설치와 IDE 연동
- [Claude Code (CLI 코딩 에이전트) 이해하기](https://www.digitalmarketer.co.kr/class/claude-code-for-everyone/what-is-claude-code) 🇰🇷 — 비개발자용 입문

## CLAUDE.md 작성법
- [CLAUDE.md 작성 가이드: 프로젝트 규칙을 AI에게 알려주는 법](https://daleseo.com/claude-code-claude-md/) 🇰🇷 — 규칙 작성과 충돌 정리
- [CLAUDE.md 완전 정복](https://brunch.co.kr/@aideveloper/273) 🇰🇷
- [CLAUDE.md 파일 사용: 코드베이스에 맞게 Claude Code 맞춤화하기](https://claude.com/ko/resources/articles/using-claude-md-files) 🇰🇷 — 공식

## Skills
- [Skills 시스템](https://claude-code-playbook.pages.dev/docs/level-4/custom-skills) 🇰🇷
- [Hooks와 Skills 시스템](https://wikidocs.net/332773) 🇰🇷

## Hooks
- [Hooks와 Skills 시스템](https://wikidocs.net/332773) 🇰🇷 — 위험한 작업 차단, 저장 후 자동 포맷 같은 용도

## MCP 서버
- [Claude Code 공식 한국어 튜토리얼](https://docs.anthropic.com/ko/docs/agents-and-tools/claude-code/tutorials) 🇰🇷 — `claude mcp add` 등록과 보안 주의사항

## 서브에이전트 · 플러그인
- [Claude Code 빠르게 마스터 하기](https://wikidocs.net/book/19664) 🇰🇷 — Skills · 서브에이전트 · Hooks 개념 구분
- [Claude Code - 문서가 알려주지 않는 설정 가능한 모든 것](https://news.hada.io/topic/30030.md) 🇰🇷 — GeekNews

## 워크플로 · 실전 사례
- [Claude Code로 좋은 결과 얻기](https://news.hada.io/topic?id=22425) 🇰🇷 — GeekNews
- [02-5. Claude Code로 완성하는 터미널 에이전트 워크플로우](https://wikidocs.net/443809) 🇰🇷
- [클로드코드로 에이전트 빌드해서 사례글 작성해보기](https://www.gpters.org/llm-service/post/build-agent-claude-code-uq1td5LsrkaaLCs) 🇰🇷 — GPTers

## 도구
- [mck0124/skill-gauge](https://github.com/mck0124/skill-gauge) ✅ 🧪 — Skill · 프롬프트를 YAML 테스트로 N회 반복 실행해 통과율 · 점수 분산 · 회귀를 측정하는 CLI

## 검증된 예제
[`examples/`](examples/)의 모든 예제는 다음을 지킵니다.
1. 메인테이너가 직접 실행해 봄
2. 무엇이 좋아졌는지 **전/후**를 적음 (가능하면 [skill-gauge](https://github.com/mck0124/skill-gauge)로 측정한 수치)
3. 그대로 복사해서 쓸 수 있음

## 영어 자료 모음
- [hesreallyhim/awesome-claude-code](https://github.com/hesreallyhim/awesome-claude-code) — 가장 큰 영어 awesome 목록
- [VoltAgent/awesome-claude-code-subagents](https://github.com/VoltAgent/awesome-claude-code-subagents) — 서브에이전트 모음

## 기여하기
[CONTRIBUTING.md](CONTRIBUTING.md)를 참고해 주세요. 한국어 블로그 글, 영상, 직접 만든 Skill 모두 환영합니다.

## 라이선스
[CC0 1.0](LICENSE) — 출처 표시 없이 자유롭게 쓰셔도 됩니다.
