# 🛠️ scripts/

> CLI helpers and project automation tools — linted, formatted, and battle-tested ⚙️🔥

---

## 📁 What's Inside

- **`create-lxc.sh`** — Automates LXC container creation using `pct`, configurable via environment variables.
- **`install-git-hooks.sh`** — Installs project-specific Git hooks from `.githooks/` for automatic lint checks.
- **`.githooks/pre-commit`** — Pre-commit hook that runs shell, YAML, and Markdown linters.

---

## 🚀 Quick Setup

Install Git hooks with:

```bash
bash scripts/install-git-hooks.sh
```

This enables automatic checks before every commit:

- ✅ `shellcheck` for shell linting
- ✅ `shfmt` for consistent formatting
- ✅ `yamllint` for YAML validation
- ✅ `markdownlint` for clean Markdown

---

## 🧪 Manual Linting

```bash
# Shell
shellcheck scripts/*.sh
shfmt -i 2 -ci -d scripts/

# YAML
yamllint .

# Markdown
markdownlint "**/*.md"
```

---

## ⚙️ Install Dependencies

```bash
# ShellCheck
sudo apt install shellcheck

# shfmt
curl -sSLo shfmt https://github.com/mvdan/sh/releases/latest/download/shfmt_\$(uname -s)_\$(uname -m)
chmod +x shfmt
sudo mv shfmt /usr/local/bin/

# YAML Linter
pip install yamllint

# Markdown Linter
npm install -g markdownlint-cli
```

---

## 🙌 Contributing

Make commits clean, run lint checks often, and don’t forget to quote your variables 😉
