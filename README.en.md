# Awesome Claude Code (Korean) 🇰🇷

**Korean-language resources for Claude Code, plus ready-to-copy Skills, Hooks and settings.**

English is well covered ([hesreallyhim/awesome-claude-code](https://github.com/hesreallyhim/awesome-claude-code) has 50k+ stars). Korean is not: most guides are scattered blog posts. This list collects them in one place and adds working examples you can copy.

> 🇬🇧 **English readers:** the curated links are Korean, but everything in [`examples/`](examples/) is a copy-paste config with a short English-friendly structure (what it does / install / caveats). The code and JSON are language-neutral.

## What's inside
| | |
|---|---|
| 📚 **60+ links, mostly Korean** | Official docs, wikidocs books, GeekNews threads, blog guides, grouped by topic (CLAUDE.md, Skills, Hooks, MCP, subagents, cost/context) |
| 🧰 **10 examples** | 4 Skills (commit message, code review, doc polish, PR description) · 3 Hooks (block dangerous commands, auto-format, notify on stop) · 3 settings (permissions allowlist, project/personal `CLAUDE.md`) |
| 🚀 **10-minute start guide** | Install → first session → `/init` → permissions → `/clear` vs `/compact` |

## Install as a plugin
This repo is also a Claude Code plugin marketplace. Inside Claude Code:
```
/plugin marketplace add mck0124/awesome-claude-code-ko
/plugin install ko-skills@awesome-claude-code-ko
```
Plugins: `ko-skills` (4 skills), `block-dangerous-commands`, `auto-format`, `notify-on-stop`. Install only what you need.

## Honest status
Each example says how far it was actually checked (as of 2026-11-16):

- **Hooks (3):** installed and confirmed working inside Claude Code on macOS.
- **Settings (3):** confirmed inside Claude Code with a headless run in a scratch project.
- **Skills (4):** run once inside Claude Code, then measured with [skill-gauge](https://github.com/mck0124/skill-gauge): with vs. without the skill, 5 runs per case, Claude Sonnet 5.5, regex checks only. Three skills went from 0–30% to 100% on their format rules; `commit-message` showed no difference (100% both ways), and its README says so. Suites and raw results are in each skill's `eval/` folder.

The pass rates measure whether the output follows the skill's rules every time, not overall quality. All resource links were read by the maintainer before being listed.

## Contributing
Suggest a resource or send an example: see [CONTRIBUTING.md](CONTRIBUTING.md). English issues and PRs are welcome.


[한국어 README →](README.md)
