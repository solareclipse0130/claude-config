# claude-config

我的 Claude Code 全局配置。

## 内容

- `CLAUDE.md` — 全局指令（沟通语言、代码风格、调试约定）。
- `agents/` — Claude Code Agent 技能（skill）文件，每个 `.md` 对应一个可调用的工作流。
- `install.sh` — 将上述文件软链到 `~/.claude/` 目录。

## 安装

```bash
./install.sh
```

若 `~/.claude/CLAUDE.md` 已存在且不是软链，会先备份为 `CLAUDE.md.backup.<timestamp>`。

## Agent Skills

| 名称 | 描述 |
|------|------|
| [book-download](agents/book-download.md) | 从 Z-Library 批量下载电子书（Firefox headless 绕 DiamWall，国内可用） |
