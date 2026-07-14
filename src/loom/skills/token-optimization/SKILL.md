---
name: token-optimization
description: >-
  Applies token-efficiency patterns to prompts, agents, and RAG pipelines
  including prompt caching, progressive disclosure, model routing, tool
  filtering, and context compression. Use when writing prompts, designing
  multi-step agent workflows, or reviewing LLM code for cost.
license: MIT
metadata:
  author: Shariq Khan
  version: "1.0.0"
---

# Token Optimization

## Core rules
1. **Cache stable prefixes.** Move system prompt + tool defs to the top; use provider caching.
2. **Route by complexity.** Cheap model (Haiku, GPT-nano) for classification/titles; premium only when reasoning is required.
3. **Progressive disclosure.** Don't inject a schema, doc, or example until this turn needs it.
4. **Filter tools.** Prune tools list to those relevant to the current turn before sending.
5. **Compress history.** Summarize conversation after N turns; drop redundant tool outputs.
6. **Return structured errors.** Actionable error messages prevent retry loops.
7. **Measure first.** Instrument token counts per node; optimize the top 3 spenders.

## When to load references
- Adding caching → `references/prompt-caching-cheatsheet.md`
- Skill/tool design → `references/skillreducer-heuristics.md`
- Auditing a repo → run `scripts/token_audit.py`

## Definition of done
- Cached-token ratio ≥60% on steady-state traffic
- No unused tool schemas in requests
- Per-turn token usage tracked in observability