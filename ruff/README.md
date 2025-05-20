# ruff

Python code linter and formatter.

## Install global dependencies

```sh
brew install uv
```

## Install python dependencies

```sh
uv tool install ruff
```

## Copy files

```sh
mkdir -p ~/.config/ruff
cp ruff/ruff.toml ~/.config/ruff/
```

## CLI

```sh
# Check given file.
ruff check main.py

# Check entire directory.
ruff check .

# Check and display errors without fixing them.
ruff check --fix --diff .

# Check and fix errors.
ruff check --fix .

# Format code using, for example, black formatter.
ruff format .
```

## Project Sample

You can configure ruff inside a project with a `pyproject.toml` file.

```toml
[project]
name = "app-name"
version = "0.1.0"
description = "App description"
readme = "README.md"
requires-python = ">=3.12"
dependencies = []

[tool.ruff]
lint.extend-select = ["ALL"]
lint.ignore = ["T201"]
```
