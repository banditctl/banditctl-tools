# ⚙️ Dev Setup Guide

Welcome, contributor! This guide will get you linting, formatting, and committing clean code like a pro in minutes.

---

## 🧪 Installed Tools

This project uses the following linters and formatters:

- **Shell:** [`shellcheck`](https://github.com/koalaman/shellcheck), [`shfmt`](https://github.com/mvdan/sh)
- **YAML:** [`yamllint`](https://github.com/adrienverge/yamllint)
- **Markdown:** [`markdownlint-cli`](https://github.com/DavidAnson/markdownlint-cli)

---

## 🚀 Quick Setup

Run this one-liner to enable pre-commit hooks:

```bash
bash scripts/install-git-hooks.sh
```

This ensures the following checks run automatically before every commit:

- ✅ `shellcheck`
- ✅ `shfmt`
- ✅ `yamllint`
- ✅ `markdownlint`

---

## 🛠 Install Dependencies

### Shell linters

```bash
sudo apt install shellcheck
curl -sSLo shfmt https://github.com/mvdan/sh/releases/latest/download/shfmt_\$(uname -s)_\$(uname -m)
chmod +x shfmt && sudo mv shfmt /usr/local/bin/
```

### YAML linter

```bash
sudo apt install yamllint
```

### Markdown linter (requires Node.js ≥ 20)

```bash
npm install -g markdownlint-cli
```

> 💡 Don’t have Node.js ≥ 20? Use [nvm](https://github.com/nvm-sh/nvm) to install and switch easily.

---

## 🎨 Fancy Terminal Output (Optional)

For rainbow output on success, install:

```bash
sudo apt install ruby-full
sudo gem install lolcat
sudo apt install figlet
```

Then run:

```bash
bash scripts/check-all.sh
```

You’ll get a visual “All Clean” banner if everything passes 😎

---

## 🧠 VS Code Recommended Extensions

Open the project in [VS Code](https://code.visualstudio.com/) to be prompted to install:

- ✅ Shell linting (\`timonwong.shellcheck\`, \`foxundermoon.shell-format\`)
- ✅ YAML & Markdown (\`redhat.vscode-yaml\`, \`davidanson.vscode-markdownlint\`)

This list lives in \`.vscode/extensions.json\`.

---

## 🛡 GitHub CI Workflow

Pull requests to \`main\` trigger a full lint check via [lint-check.yml](.github/workflows/lint-check.yml). A status badge appears in the top-level \`README.md\`.

---

## 🧪 Manual Check

Run a full lint sweep with:

```bash
bash scripts/check-all.sh
```

You’ll get ✅ confirmation or linter output for each file type.

---

Enjoy your clean commits and flashy terminal. Let your code sparkle ✨
