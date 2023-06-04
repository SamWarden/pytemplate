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
test *args:
    just _py pytest {{args}}

_py *args:
    poetry run {{args}}
