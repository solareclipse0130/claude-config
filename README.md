# claude-config

我的 Claude Code 全局配置。

## 内容

- `CLAUDE.md` — 全局指令（沟通语言、代码风格、调试约定）。
- `install.sh` — 将 `CLAUDE.md` 软链到 `~/.claude/CLAUDE.md`。

## 安装

```bash
./install.sh
```

若 `~/.claude/CLAUDE.md` 已存在且不是软链，会先备份为 `CLAUDE.md.backup.<timestamp>`。
