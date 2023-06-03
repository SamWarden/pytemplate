py := poetry run
package_dir := src
tests_dir := tests
code_dir := $(package_dir) $(tests_dir)

.PHONY: help
help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

.PHONY: install
install: ## Install package with dependencies
	poetry install --with dev,test,lint

.PHONY: lint
lint: ## Lint code with flake8, pylint, mypy
	$(py) pre-commit flake8 pylint mypy

.PHONY: test
test: ## Run tests
	$(py) pytest $(tests_dir)
