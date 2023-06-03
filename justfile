# Show help message
help:
    just -l

# Install package with dependencies
install:
	poetry install --with dev,test,lint

# Run pre-commit
lint:
	just _py pre-commit run --all-files

# Run tests
test:
    just _py pytest

_py *args:
    poetry run {{args}}
