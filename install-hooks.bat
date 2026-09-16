@echo off
git config --unset core.hooksPath 2>nul
pre-commit install
copy /Y /Q .git\hooks\pre-commit .githooks\pre-commit >nul
git config core.hooksPath .githooks
echo Git hooks activated! Direct pushes to dev/test/live blocked... Pre-commit checks enabled...
