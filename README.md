# Awesome Claude Code 한국어 🇰🇷

[English summary →](README.en.md)

**Claude Code를 실전에서 잘 쓰기 위한 한국어 자료 · 복사해서 쓰는 설정 예제 모음**

영어 자료는 넘쳐나는데 한국어 자료는 블로그 글로 흩어져 있어서 한곳에 모았습니다.
링크와 함께 바로 복사해 쓸 수 있는 **Skill · Hook · 설정 예제**를 [`examples/`](examples/)에 담았습니다.
예제마다 **어디까지 확인했는지**를 솔직히 적어 두었고, 직접 실행해서 확인한 것에만 ✅를 붙입니다.

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
> 처음 쓰는 사람을 위한 10분 가이드입니다. 설치 방법은 자주 바뀌므로 **설치만큼은 [공식 빠른 시작](https://code.claude.com/docs/ko/quickstart)을 따르세요.**

**1. 설치하고 로그인 (3분)** — 공식 빠른 시작대로 설치한 뒤 터미널에서 `claude`를 실행하면 로그인 안내가 나옵니다.

**2. 프로젝트 폴더에서 시작 (1분)**
```bash
cd my-project
claude
```
처음엔 "이 프로젝트 구조를 설명해줘"처럼 **읽기만 하는 질문**으로 시작하세요. 코드를 바꾸기 전에 Claude가 프로젝트를 제대로 이해했는지 확인할 수 있습니다.

**3. `/init`으로 CLAUDE.md 만들기 (2분)** — Claude가 코드를 보고 `CLAUDE.md` 초안을 만듭니다. 실행 명령과 "하면 안 되는 것"만 남기고 나머지는 지우세요. → [프로젝트용 템플릿](examples/settings/project-claude-md/)

**4. 권한 다루기 (2분)** — Claude가 파일 수정·명령 실행 전에 허용 여부를 묻습니다. 같은 허용을 반복하게 되면 settings에 허용 목록을 만드세요. → [권한 예제](examples/settings/permissions-allowlist/) · 되돌릴 수 없는 명령은 [Hook으로 차단](examples/hooks/block-dangerous-commands/)

**5. 세션 관리 명령 (1분)**
| 명령 | 언제 |
|---|---|
| `/clear` | 전혀 다른 작업으로 넘어갈 때 |
| `/compact` | 같은 작업을 이어가는데 대화가 길어졌을 때 |
| `/context` · `/cost` | 컨텍스트가 얼마나 찼는지, 얼마나 썼는지 볼 때 |
| `/mcp` | 연결한 MCP 서버 상태 확인 |
| `/agents` | 서브에이전트 만들고 관리 |

**6. 다음 단계** — 반복하는 작업은 [Skill](examples/skills/)로, 자동으로 일어나야 하는 것은 [Hook](examples/hooks/)으로, 외부 도구 연결은 [MCP](#mcp-서버)로 확장합니다.

> 위 슬래시 명령의 정확한 동작은 버전에 따라 달라질 수 있습니다. 헷갈리면 Claude Code 안에서 `/help`를 보세요.

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
- [Claude Code CLAUDE.md 가이드 (wikidocs)](https://wikidocs.net/333431) 🇰🇷
- [요즘IT: Claude Code 관련 글 1](https://yozm.wishket.com/magazine/detail/3387/) 🇰🇷 · [글 2](https://yozm.wishket.com/magazine/detail/3339/) 🇰🇷

## Skills
- [Claude Code Skills](https://velog.io/@spdhsrnvl123/Claude-Code-Skills) 🇰🇷 — velog 핸즈온
- [클로드코드 스킬 개념부터 팀공유까지](https://brunch.co.kr/@aideveloper/267) 🇰🇷
- [04-4. Skills 작성으로 작업 표준화](https://wikidocs.net/441361) 🇰🇷
- [Skills 시스템](https://claude-code-playbook.pages.dev/docs/level-4/custom-skills) 🇰🇷
- [Hooks와 Skills 시스템](https://wikidocs.net/332773) 🇰🇷
- [CLAUDE.md 완전 정복 - Skills 완전 가이드](https://brunch.co.kr/@aideveloper/279) 🇰🇷
- [Claude Code 슬래시 커맨드 완벽 정리](https://wikidocs.net/blog/@openwiki/21424/) 🇰🇷 — 내장 명령어와 커스텀 커맨드
- [6장. 슬래시 커맨드와 커스텀 명령](https://wikidocs.net/332769) 🇰🇷
- [슬래시 명령 (Slash Commands) 알아보기](https://www.digitalmarketer.co.kr/class/claude-code-for-everyone/slash-commands-explained) 🇰🇷

## Hooks
- [Hooks와 Skills 시스템](https://wikidocs.net/332773) 🇰🇷 — 위험한 작업 차단, 저장 후 자동 포맷 같은 용도
- [Claude Code Hooks 자동화 설정 가이드: 포맷팅·명령어 차단·알림](https://wikidocs.net/blog/@openwiki/21541/) 🇰🇷 — 훅이 내 권한으로 셸 명령을 실행한다는 경고 포함
- [Claude Code hooks in practice](https://www.digitalmarketer.co.kr/class/claude-code-in-practice/claude-code-hooks-in-practice) 🇰🇷
- [05-3. 훅(Hook) 활용하기](https://wikidocs.net/343841) 🇰🇷
- [04-5. Hooks로 자동 검증](https://wikidocs.net/441362) 🇰🇷
- [12-4. 훅, 설정 범위, 확장 기능 조합](https://wikidocs.net/329921) 🇰🇷
- [Hooks 공식 문서 (한국어)](https://docs.anthropic.com/ko/docs/claude-code/hooks) 🇰🇷 — 공식

## MCP 서버
- [Claude Code 공식 한국어 튜토리얼](https://docs.anthropic.com/ko/docs/agents-and-tools/claude-code/tutorials) 🇰🇷 — `claude mcp add` 등록과 보안 주의사항
- [Claude Code MCP 서버 필수 4종 가이드 — Playwright부터 Firecrawl까지](https://ice-ice-bear.github.io/ko/posts/2026-04-01-claude-code-mcp-4/) 🇰🇷
- [Best MCP servers for Claude Code (techsy, 한국어판)](https://techsy.io/ko/blog/best-mcp-servers-claude-code)
- [Claude code With MCP - Playwright](https://velog.io/@yardyard/Claude-code-With-MCP-Playwright) 🇰🇷 — velog
- [Context7 MCP](https://velog.io/@xorms/Context7-MCP) 🇰🇷 — velog, `claude mcp list`로 연결 확인
- [18-4. Claude Code에 연결하고 검증하기](https://wikidocs.net/332442) 🇰🇷
- 연결 전 확인: [microsoft/playwright-mcp](https://github.com/microsoft/playwright-mcp), [upstash/context7](https://github.com/upstash/context7) — 설치 명령과 패키지명은 각 공식 저장소의 현재 안내를 따르세요

## 서브에이전트 · 플러그인
- [12-3. 서브에이전트](https://wikidocs.net/329914) 🇰🇷 — `.claude/agents/`에 첫 서브에이전트 만들기
- [Claude Code 빠르게 마스터 하기](https://wikidocs.net/book/19664) 🇰🇷 — Skills · 서브에이전트 · Hooks 개념 구분
- [Claude Code - 문서가 알려주지 않는 설정 가능한 모든 것](https://news.hada.io/topic?id=30030) 🇰🇷 — GeekNews
- [Claude Code 서브에이전트 만들기와 활용법](https://wikidocs.net/blog/@openwiki/21549/) 🇰🇷
- [클로드 코드 서브 에이전트: AI에게 일을 시키는 AI](https://daleseo.com/claude-code-sub-agents/) 🇰🇷
- [04-2. 역할별 Subagent 설계 — Planner·Dev·Reviewer](https://wikidocs.net/441359) 🇰🇷
- [서브에이전트 (Subagents) 알아보기](https://www.digitalmarketer.co.kr/class/claude-code-for-everyone/what-are-subagents) 🇰🇷
- [Claude Code 플러그인 마켓플레이스 분석](https://ice-ice-bear.github.io/ko/posts/2026-03-20-claude-code-marketplaces/) 🇰🇷 — 설치 전 소스 확인을 권하는 글
- [roboco-io/plugins](https://github.com/roboco-io/plugins) 🇰🇷 · [shinhyukahn/cck](https://github.com/shinhyukahn/cck) 🇰🇷 — 한국 개발자의 플러그인 (설치 전 소스 확인)

## 워크플로 · 실전 사례
- [30가지 이상의 Claude Code 활용 팁 모음 (ykdojo/claude-code-tips)](https://discuss.pytorch.kr/t/30-claude-code-feat-ykdojo-claude-code-tips/8368) 🇰🇷 — PyTorch 한국 커뮤니티
- [Claude Code 실사용 후기](https://news.hada.io/topic?id=22053) 🇰🇷 — GeekNews
- [요즘IT: Claude Code 활용기](https://yozm.wishket.com/magazine/detail/3442/) 🇰🇷
- [Claude Code를 제대로 쓰는 법: 설정, 스킬, 서브에이전트, 플러그인까지](https://wikidocs.net/blog/@jaehong/15062/) 🇰🇷
- [Claude Code로 좋은 결과 얻기](https://news.hada.io/topic?id=22425) 🇰🇷 — GeekNews
- [02-5. Claude Code로 완성하는 터미널 에이전트 워크플로우](https://wikidocs.net/443809) 🇰🇷
- [클로드코드로 에이전트 빌드해서 사례글 작성해보기](https://www.gpters.org/llm-service/post/build-agent-claude-code-uq1td5LsrkaaLCs) 🇰🇷 — GPTers
- [Claude Code 실전 마스터클래스 #1 — 슬래시 명령어·훅·서브에이전트로 워크플로우 자동화](https://jangwook.net/ko/blog/ko/claude-code-masterclass-series-1-prompt-to-agent/) 🇰🇷
- [Claude Code 세션 관리 5가지 방법](https://www.gpters.org/nocode/post/claude-code-5-ways-ZqxvS51AuoS3O3D) 🇰🇷 — GPTers
- **비용 · 컨텍스트 관리**
  - [12-1. 비용 구조와 토큰 절약 전략](https://wikidocs.net/329901) 🇰🇷
  - [Part 6: 컴팩션과 컨텍스트 윈도우 관리](https://wikidocs.net/342641) 🇰🇷
  - [Claude Code 토큰 절약 가이드](https://ice-ice-bear.github.io/ko/posts/2026-03-03-claude-code-token-optimization/) 🇰🇷 — "80% 절감"은 글쓴이의 사례이며 사용 패턴에 따라 다릅니다
  - [021. /help, /clear, /compact, /cost](https://wikidocs.net/347425) 🇰🇷

## 도구
- [mck0124/skill-gauge](https://github.com/mck0124/skill-gauge) ✅ 🧪 — Skill · 프롬프트를 YAML 테스트로 N회 반복 실행해 통과율 · 점수 분산 · 회귀를 측정하는 CLI

## 검증된 예제
[`examples/`](examples/)의 예제는 다음을 목표로 합니다. **지금은 Hook 3개와 설정 3개를 Claude Code 안에서 확인했고, Skill 4개는 한 번씩 실행만 해 본 단계입니다(전/후 측정 전). 각 예제 README에 실제 상태를 적어 두었습니다.**
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
