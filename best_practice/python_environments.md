---
layout: page
published: true
title: Working with Python Environments
---

## Managing Python Versions and Virtual Environments with uv

Most projects we work on require Python 3.9 or greater. Many require a later version. In either case it is necessary to be able to have multiple versions of Python installed and easily switch between them, as well as manage project-specific dependencies. We use [uv](https://github.com/astral-sh/uv) to handle both Python version management and virtual environments.

### Installing uv

Follow [uv's recommended installation methods](https://github.com/astral-sh/uv#installation). The quickest way is usually:

```shell
curl -LsSf https://astral.sh/uv/install.sh | sh
```

Or on macOS with Homebrew:

```shell
brew install uv
```

To verify that the installation was successful run the following and ensure that it prints out a version number:

```shell
uv --version
```

### Installing Python Versions

uv can install and manage Python versions directly. To see available Python versions:

```shell
uv python list --all-versions
```

To install a specific Python version:

```shell
uv python install 3.11
```

Or install the latest patch version of a minor release:

```shell
uv python install 3.11  # Installs latest 3.11.x
```

To see which Python versions are currently installed:

```shell
uv python list
```

### Selecting a Python Version for Your Project

When creating a new project, you can specify which Python version to use:

```shell
uv init --python 3.11 my-project
cd my-project
```

For existing projects, uv will use the Python version specified in the `pyproject.toml` file's `requires-python` field. You can also specify a Python version when syncing:

```shell
uv sync --python 3.11
```

Or pin a specific Python version for your project:

```shell
uv python pin 3.11
```

This creates a `.python-version` file in your project directory that uv will respect.

## Managing Virtual Environments

uv automatically creates and manages virtual environments for your projects. By default, it creates them in a `.venv` directory within your project folder.

### Creating Virtual Environments

For a new project:

```shell
uv init my-project
cd my-project
uv sync
```

You can also create a project with a specific structure:

```shell
uv init --package my-project  # Creates a package structure
uv init --app my-project      # Creates an application structure
```

For an existing project with a `pyproject.toml` file:

```shell
uv sync
```

This will:
- Create a virtual environment in `.venv`
- Install the Python version specified in `pyproject.toml`
- Install all project dependencies

### Adding Dependencies

Use `uv add` to add new dependencies to your project:

```shell
uv add requests
```

This updates your `pyproject.toml` and `uv.lock` files and installs the package.

For development dependencies:

```shell
uv add --dev pytest black mypy
```

For optional dependency groups:

```shell
uv add --group docs sphinx sphinx-rtd-theme
```

### Updating Dependencies

Update a specific package:

```shell
uv add requests@latest
```

Update to a specific version:

```shell
uv add requests==2.31.0
```

Update all packages to their latest compatible versions:

```shell
uv sync --upgrade
```

Update only specific packages:

```shell
uv sync --upgrade-package requests --upgrade-package urllib3
```

### Inspecting Dependencies

View the dependency tree:

```shell
uv tree
```

Show outdated packages:

```shell
uv pip list --outdated
```

### Running Commands

Run commands in the project's virtual environment:

```shell
uv run python src/main.py
uv run pytest
uv run black .
```

For interactive sessions, you can activate the virtual environment:

```shell
source .venv/bin/activate  # On Unix/macOS
# or
.venv\Scripts\activate     # On Windows

python src/main.py  # Uses the virtual environment's Python
deactivate          # Exit the virtual environment
```

## Advanced Features

### Running Tools Without Installation

Run Python tools without installing them globally:

```shell
uv tool run black .
uv tool run --from ruff ruff check
uv tool run --python 3.12 mypy src/
```

### Installing Global Tools

Install tools globally for command-line use:

```shell
uv tool install black
uv tool install ruff
```

### Working with Scripts

Run Python scripts with inline dependencies:

```shell
uv run --with pandas,matplotlib analysis.py
```

Create self-contained scripts with dependency declarations:

```python
# /// script
# requires-python = ">=3.11"
# dependencies = [
#     "requests",
#     "rich",
# ]
# ///

import requests
from rich import print

response = requests.get("https://api.github.com")
print(response.json())
```

Then run it with:

```shell
uv run script.py
```

### Working with Requirements Files

Export dependencies to a requirements file:

```shell
uv pip compile pyproject.toml -o requirements.txt
```

Install from a requirements file:

```shell
uv pip sync requirements.txt
```

## Migrating from Other Tools

### From pip/venv

If you have a `requirements.txt` file:

```shell
uv init
uv pip sync requirements.txt
uv add --dev <your-dev-packages>
```

### From Poetry

uv can read `pyproject.toml` files created by Poetry. Simply run:

```shell
uv sync
```

To fully migrate, you may want to:
1. Remove the `[tool.poetry]` sections from `pyproject.toml`
2. Delete `poetry.lock`
3. Run `uv sync` to generate `uv.lock`

## Further Reading

* [uv Documentation](https://docs.astral.sh/uv/)
* [uv Python Discovery](https://docs.astral.sh/uv/guides/python/)
* [uv Configuration](https://docs.astral.sh/uv/configuration/)
* [Migrating to uv](https://docs.astral.sh/uv/guides/migration/)
