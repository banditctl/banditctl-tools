#!/usr/bin/env bash
set -e

echo "🔍 Running ShellCheck..."
shellcheck scripts/*.sh && echo "✅ Shell scripts are clean!"

echo "🔍 Running shfmt check..."
shfmt -i 2 -ci -d scripts/ && echo "✅ Shell formatting looks good!"

echo "🔍 Running YAML lint..."
yamllint . && echo "✅ YAML files look great!"

echo "🔍 Running Markdown lint..."
markdownlint "**/*.md" && echo "✅ Markdown is squeaky clean!"

echo -e "\n🎉 All checks passed! You’re linted, formatted, and fabulous."

if command -v figlet >/dev/null && command -v lolcat >/dev/null; then
  echo -e "\n$(figlet All Clean! | lolcat)"
else
  echo -e "\n🎉 All checks passed! You’re linted, formatted, and fabulous."
fi
