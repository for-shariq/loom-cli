# loom-cli

`loom-cli` is a command-line tool for installing and managing curated AI agent skills in any repository.

[![Python 3.11+](https://img.shields.io/badge/python-3.11+-blue.svg)](https://www.python.org/downloads/)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This README covers only how to install and use the CLI.

## What loom-cli Does

With `loom-cli`, you can:

- list available skills
- install one or more skills into the current repository
- remove installed skills
- upgrade installed skills
- scaffold a custom skill
- validate installed skills

## Requirements

- Python 3.11 or later
- [`uv`](https://docs.astral.sh/uv/) installed
- A local repository you want to work in

## Install

Install `loom-cli` directly from the GitHub repository using `uv`:

````powershell
uv tool install loom-cli --from git+https://github.com/for-shariq/loom-cli.git@v0.1.0
````

### Verify installation

````powershell
loom-cli --help
````

If the command is not recognized after installation, restart the terminal and try again.

### Upgrading loom-cli

To upgrade to a newer release tag, reinstall with the new tag and `--force`:

````powershell
uv tool install loom-cli --from git+https://github.com/for-shariq/loom-cli.git@<new-tag> --force
````

## Quick Start

Open a terminal in the repository where you want to use loom-cli.

### 1. List available skills

````powershell
loom-cli list
````

### 2. Install a skill into the current repository

````powershell
loom-cli install <skill-name>
````

Example:

````powershell
loom-cli install testing
````

## Usage

Run all commands from the root of the repository you want to update.

### List skills

Show all skills available in the catalog.

````powershell
loom-cli list
````

Help:

````powershell
loom-cli list --help
````

### Install skills

Install one or more catalog skills into the current repository.

````powershell
loom-cli install <skill-name>
````

Install multiple skills:

````powershell
loom-cli install <skill-one> <skill-two>
````

Install all available skills:

````powershell
loom-cli install --all
````

Install for a specific target:

````powershell
loom-cli install <skill-name> --target copilot
````

Force overwrite existing installed skills:

````powershell
loom-cli install <skill-name> --force
````

Install everything at once (all skills, all targets, overwriting existing ones):

````powershell
loom-cli install --all --target all --force
````

Help:

````powershell
loom-cli install --help
````

Supported install targets:

- `copilot`
- `claude`
- `cursor`
- `all`
- comma-separated target values

### Remove skills

Remove one or more installed skills.

````powershell
loom-cli remove <skill-name>
````

Remove multiple skills:

````powershell
loom-cli remove <skill-one> <skill-two>
````

Remove from a specific target:

````powershell
loom-cli remove <skill-name> --target all
````

Help:

````powershell
loom-cli remove --help
````

### Upgrade installed skills

Upgrade installed skills to the latest catalog version.

````powershell
loom-cli upgrade
````

Upgrade a specific target:

````powershell
loom-cli upgrade --target all
````

Help:

````powershell
loom-cli upgrade --help
````

### Add a custom skill

Scaffold a new custom skill in the repository.

````powershell
loom-cli add <skill-name>
````

Example:

````powershell
loom-cli add my-custom-skill
````

Specify a target:

````powershell
loom-cli add my-custom-skill --target copilot
````

Help:

````powershell
loom-cli add --help
````

### Validate installed skills

Validate installed skills against the supported spec.

````powershell
loom-cli doctor
````

Help:

````powershell
loom-cli doctor --help
````

### Show version

````powershell
loom-cli version
````

Help:

````powershell
loom-cli version --help
````

## CLI Help

### Top-level help

````powershell
loom-cli --help
````

### Command help

````powershell
loom-cli list --help
loom-cli install --help
loom-cli remove --help
loom-cli upgrade --help
loom-cli add --help
loom-cli doctor --help
loom-cli version --help
````

## Common Examples

List skills:

````powershell
loom-cli list
````

Install a skill:

````powershell
loom-cli install testing
````

Install multiple skills:

````powershell
loom-cli install testing docs ci
````

Install all skills:

````powershell
loom-cli install --all
````

Install all skills for all targets, overwriting existing ones:

````powershell
loom-cli install --all --target all --force
````

Remove a skill:

````powershell
loom-cli remove testing
````

Upgrade installed skills:

````powershell
loom-cli upgrade
````

Validate installed skills:

````powershell
loom-cli doctor
````

## Notes

- Run loom-cli inside the repository you want to update.
- Use `loom-cli --help` or `<command> --help` to see the latest supported options.
- The `install` command installs catalog skills into a repository.
- The `add` command scaffolds a new custom skill.

## Docs

- [Token Observability Skill Guide](docs/skills/token-obserabilty.md)

## License

loom-cli is open source, released under the [MIT License](LICENSE). Any use, distribution, or derivative work must credit loom-cli and reference its repository URL: https://github.com/for-shariq/loom-cli
