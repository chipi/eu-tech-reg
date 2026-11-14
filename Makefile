# eu-tech-reg — Makefile
#
# Layered tiers, as in the operator's other projects (robotics-lab, flotilla, eval-harness):
#   - docs-lint / docs-build → atomic
#   - ci-fast                → what every push must pass (fast feedback)
#   - ci                     → what every merge must pass (full gate)
#   - docs-*                 → Zensical site (preview + strict build) and markdownlint
#
# Docs only for now; code targets (record schema check, MCP server tests) join ci-fast and ci
# when that code exists.
#
# Convention (global AGENTS.md #17): end unattended runs with an exit signal:
#   make <target>; echo "MAKE_EXIT=$?"

SHELL          := /usr/bin/env bash
.SHELLFLAGS    := -eu -o pipefail -c
.DEFAULT_GOAL  := help

# ---- Tunables ----------------------------------------------------------------

PYTHON         ?= python3
VENV_DIR       ?= .venv
VENV_BIN       := $(VENV_DIR)/bin
PIP            := $(VENV_BIN)/pip
ZENSICAL       := $(VENV_BIN)/zensical

DOCS_REQS      := requirements-docs.txt
DOCS_PORT      ?= 8766
DOCS_BIND      ?= 127.0.0.1

# ---- Meta --------------------------------------------------------------------

.PHONY: help
help: ## Show this help (default target)
	@awk 'BEGIN {FS = ":.*##"; printf "Targets:\n"} \
		/^[a-zA-Z0-9_.-]+:.*##/ {printf "  \033[36m%-22s\033[0m %s\n", $$1, $$2}' \
		$(MAKEFILE_LIST)

# ---- Composite tiers ---------------------------------------------------------

.PHONY: ci-fast
ci-fast: docs-lint ## What every push must pass (fast feedback)
	@echo "ci-fast PASS"

.PHONY: ci
ci: ci-fast docs-build ## What every merge must pass (full gate)
	@echo "ci PASS"

# ---- Docs --------------------------------------------------------------------

$(VENV_DIR):
	$(PYTHON) -m venv $(VENV_DIR)
	$(PIP) install --quiet --upgrade pip

.PHONY: docs-install
docs-install: $(VENV_DIR) ## Install/refresh docs dependencies into .venv
	$(PIP) install --quiet -r $(DOCS_REQS)
	@echo "docs deps installed in $(VENV_DIR)"

.PHONY: docs-serve
docs-serve: docs-install ## Run local docs site at http://$(DOCS_BIND):$(DOCS_PORT)
	$(ZENSICAL) serve --dev-addr $(DOCS_BIND):$(DOCS_PORT)

.PHONY: docs-build
docs-build: docs-install ## Build static site into ./site (strict — fails on broken links and anchors)
	$(ZENSICAL) build --strict --clean
	@echo "docs built → ./site"

# markdownlint-cli, pinned like robotics-lab and flotilla; a local install of the same version is used when present.
MARKDOWNLINT ?= $(shell markdownlint --version 2>/dev/null | grep -qx 0.50.0 && echo markdownlint || echo npx --yes markdownlint-cli@0.50.0)

.PHONY: docs-lint
docs-lint: ## Lint every Markdown file (.markdownlint.json)
	@env -u NODE_OPTIONS $(MARKDOWNLINT) . && echo "docs-lint PASS" || { echo "docs-lint FAIL (make docs-lint-fix fixes most)"; exit 1; }

.PHONY: docs-lint-fix
docs-lint-fix: ## Apply markdownlint's own fixes; long lines are left to fix by hand
	@env -u NODE_OPTIONS $(MARKDOWNLINT) --fix . || true
	@$(MAKE) --no-print-directory docs-lint

.PHONY: docs-validate
docs-validate: docs-lint docs-build ## Markdown lint plus the strict build
	@echo "docs validate OK"

# ---- GitHub Pages ------------------------------------------------------------
#
# Pages is published by .github/workflows/docs.yml (source "GitHub Actions"), on every push to
# main that touches docs. These targets are for the one-time setup and a manual redeploy; both
# change the public site, so run them only on the operator's go.

GH_REPO        ?= chipi/eu-tech-reg

.PHONY: docs-pages-status
docs-pages-status: ## Show whether GitHub Pages is enabled and where it publishes (read-only)
	@out=$$(gh api repos/$(GH_REPO)/pages --jq '"pages: \(.build_type) → \(.html_url) (\(.status // "no build yet"))"' 2>/dev/null) \
	  && echo "$$out" || echo "pages: not enabled (make docs-pages-enable)"

.PHONY: docs-pages-enable
docs-pages-enable: ## One-time: enable GitHub Pages with source "GitHub Actions"
	@gh api repos/$(GH_REPO)/pages >/dev/null 2>&1 \
	  && echo "pages already enabled" \
	  || { gh api -X POST repos/$(GH_REPO)/pages -f build_type=workflow >/dev/null && echo "pages enabled (source: GitHub Actions)"; }
	@$(MAKE) --no-print-directory docs-pages-status

.PHONY: docs-deploy
docs-deploy: docs-validate ## Build locally (strict), then run the docs workflow on main to publish
	gh workflow run docs.yml --repo $(GH_REPO) --ref main
	@echo "docs workflow dispatched; watch: gh run list --repo $(GH_REPO) --workflow docs.yml --limit 1"

.PHONY: docs-clean
docs-clean: ## Remove built site
	rm -rf site/
	@echo "site/ removed"

.PHONY: clean
clean: docs-clean ## Remove all build artifacts (keeps the venv)
	@echo "clean PASS"
