#!/bin/sh
git config --unset core.hooksPath 2>/dev/null || true
pre-commit install
cp .git/hooks/pre-commit .githooks/pre-commit 2>/dev/null
git config core.hooksPath .githooks
echo "Git hooks activated! Direct pushes to dev/test/live blocked... Pre-commit checks enabled..."
