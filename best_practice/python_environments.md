---
layout: page
published: true
title: Working with Python Environments
---

## Managing Python Versions

Most projects we work on require Python 3.8 or greater. A few projects may require an even later version. In either case it is necessary to be able to have multiple versions of Python installed and easily switch between them. Both can be accomplished using [pyenv](https://github.com/pyenv/pyenv).

### Installing pyenv

Use one of the [recommended installation methods](https://github.com/pyenv/pyenv#installation). If you are using Windows use the [pyenv-win fork](https://github.com/pyenv-win/pyenv-win/blob/master/docs/installation.md).

To verify that the installation was successful run the following and ensure that it prints out a version number:

```shell
pyenv --version
```

### Installing Python Versions

Running the `pyenv versions` command will list the versions of Python that pyenv knows about. If you just installed pyenv the output should say that either no Python version are installed:

```shell
$ pyenv versions
Warning: no Python detected on the system
```

Or that a system version (not managed by pyenv) is installed and active (denoted by the asterisk):

```shell
$ pyenv versions
* system (set by [...]/.pyenv/version)
```

Use the `pyenv install` command to install new versions of Python that will be managed by pyenv. For example to install a Python 3.8 version[^1]:

```shell
pyenv install 3.8.15
```

This can be repeated for any other versions you would like to install. The `pyenv install --list` command will show all the versions available for installation.

Once you have a few Python versions installed by pyenv, verify they are listed in the output of `pyenv versions`:

```shell
pyenv versions
* system (set by [...]/.pyenv/version)
  3.8.15
  3.9.15
  3.10.8
```

### Selecting a Python Version

pyenv allows setting a Python version at three levels: global, local, and shell[^2]. When getting set up for the first time, the most important version to set is the global version. Depending on the projects you work on, you may never use local or shell versions at all. 

To set the global Python version use the `pyenv global <version>` command. For example:

```shell
pyenv global 3.8.15
```

Verify that this version is now the default Python version by running:

```shell
$ python --version
Python 3.8.15
```

The selected version can also be verified with the `pyenv versions`. The asterisk indicates the currently selected Python version:

```shell
$ pyenv versions
  system
* 3.8.15 (set by [...]/.pyenv/version)
  3.9.15
  3.10.8
```

## Managing Virtual Environments

Dependencies for different projects need to managed independently in what Python calls virtual environments. Generally each project will have one virtual environment and we use [Poetry](https://python-poetry.org/docs/) to manage those environments. 

### Installing Poetry

First you should have at least one Python 3.7+ version installed and set as the global version through pyenv. Then follow [Poetry's recommended installation methods](https://python-poetry.org/docs/#installation).

To verify that the installation was successful run the following and ensure that it prints out a version number:

```shell
poetry --version
```

### Configuring Poetry

By default Poetry creates virtual environments in one central location. However, we find it more convenient to have the virtual environment created within the project directory itself (specifically in a directory called `.venv`). This behavior can be enabled by running:

```shell
poetry config virtualenvs.in-project true
```

By default Poetry has its own mechanism for locating (but **not** installing) different Python versions[^3]. This can cause some confusion when used alongside pyenv. Instead of having Poetry attempt to find the right Python version when creating a virtual environment, we want to use pyenv to activate an appropriate version and then use that version to create the virtual environment[^4]. To allow that to work set the following option:

```shell
poetry config virtualenvs.prefer-active-python true
```

### Creating Virtual Environments

If you start working on an existing project that already uses Poetry (i.e. it has a `pyproject.toml` and `poetry.lock` file in the root of the project), first ensure that you have a compatible Python version. You can find out which Python versions are acceptable for the project by looking at the `python` entry in the `tool.poetry.dependencies` section of the `pyproject.toml` file. If necessary install and/or activate a compatible Python version using pyenv as described above. 

Next create the virtual environment and install the projects dependencies into it by running:

```shell
poetry install
```

To start a new project that uses Poetry use either the `poetry new` or `poetry init` command. `poetry new` generates a simple project directory structure, including a `pyproject.toml` file, based on a name you provide. Using the `--src` option to create a `src` directory is recommended:

```shell
poetry new --src my-project
cd my-project
poetry install
```

`poetry init` will interactively prompt you to build a custom `pyproject.toml` file. It does not create any other files.

```shell
mkdir my-project
cd my-project
poetry init
poetry install
```

### Adding New Dependencies

Use `poetry add` to add a new dependency to a project.

```shell
poetry add requests
```

This will install the requests package into the project's virtual environment, add it to the `pyproject.toml` file, and update the `poetry.lock` file with information about the exact version installed.

### Updating Dependencies

The `poetry add` command can also be used to upgrade a package to a particular version (or range of versions):

```shell
poetry add requests@^2.25.0
```

Or automatically upgrade to the latest version:

```shell
poetry add requests@latest
```

To update a dependency to the latest version that still respects what is specified in `pyproject.toml` use the `poetry update` command:

```shell
poetry update requests
```

### Running Commands

Use the `poetry run` command to run commands in the project's virtual environment. For example to run an arbitrary Python module:

```shell
poetry run python src/main.py
```

Or if your project (or one of its dependencies) provides a CLI (e.g. pytest):

```shell
poetry run pytest
```

For interactive sessions it may be more convenient to activate the virtual environment in which case `poetry run` will not be necessary. This can be accomplished by running:

```shell
poetry shell
python src/main.py  # this will use the virtual environment's Python version
exit                # deactivate the virtual environment
```

## Further Reading

* [Documentation on all pyenv subcommands](https://github.com/pyenv/pyenv/blob/master/COMMANDS.md#command-reference)
* [Documentation on all poetry subcommands](https://python-poetry.org/docs/cli/)

## Footnotes 

[^1]: Use `pyenv latest --known <prefix>` to list latest version that matches `<prefix>`. For example: `pyenv latest --known 3.8`.
[^2]: This guide mainly focuses on setting the global Python version. See the pyenv documentation for more information about setting [local](https://github.com/pyenv/pyenv/blob/master/COMMANDS.md#pyenv-local) and [shell](https://github.com/pyenv/pyenv/blob/master/COMMANDS.md#pyenv-shell) versions.
[^3]: For more information see the `poetry env` [documentation](https://python-poetry.org/docs/managing-environments/), but it **not** recommended to use this feature in conjunction with pyenv.
[^4]: If an incompatible Python version was active when you attempt to create a virtual environment via `poetry install` you will see a message like: `The currently activated Python version 3.8.15 is not supported by the project (^3.9.0).` Or, when attempting to run the Python executable: `Current Python version (3.8.15) is not allowed by the project (^3.9.0).` In this case, instead of using the `poetry env` command just delete the virtual environment (`rm -rf .venv`), ensure a compatible Python version is activated via pyenv (`pyenv global 3.9.15`), and recreate the virtual environment (`poetry install`)
