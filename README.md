# loom-cli

`loom` is a command-line tool for installing and managing curated AI agent skills in any repository.

[![Python 3.11+](https://img.shields.io/badge/python-3.11+-blue.svg)](https://www.python.org/downloads/)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This README covers only how to install and use the CLI.

## What Loom Does

With `loom`, you can:

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

Install `loom` directly from the GitHub repository using `uv`:

````powershell
uv tool install loom --from git+https://github.com/for-shariq/loom-cli.git@v0.1.0
````

### Verify installation

````powershell
loom --help
````

If the command is not recognized after installation, restart the terminal and try again.

### Upgrading loom

To upgrade to a newer release tag, reinstall with the new tag and `--force`:

````powershell
uv tool install loom --from git+https://github.com/for-shariq/loom-cli.git@<new-tag> --force
````

## Quick Start

Open a terminal in the repository where you want to use Loom.

### 1. List available skills

````powershell
loom list
````

### 2. Install a skill into the current repository

````powershell
loom install <skill-name>
````

Example:

````powershell
loom install testing
````

## Usage

Run all commands from the root of the repository you want to update.

### List skills

Show all skills available in the catalog.

````powershell
loom list
````

Help:

````powershell
loom list --help
````

### Install skills

Install one or more catalog skills into the current repository.

````powershell
loom install <skill-name>
````

Install multiple skills:

````powershell
loom install <skill-one> <skill-two>
````

Install all available skills:

````powershell
loom install --all
````

Install for a specific target:

````powershell
loom install <skill-name> --target copilot
````

Force overwrite existing installed skills:

````powershell
loom install <skill-name> --force
````

Install everything at once (all skills, all targets, overwriting existing ones):

````powershell
loom install --all --target all --force
````

Help:

````powershell
loom install --help
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
loom remove <skill-name>
````

Remove multiple skills:

````powershell
loom remove <skill-one> <skill-two>
````

Remove from a specific target:

````powershell
loom remove <skill-name> --target all
````

Help:

````powershell
loom remove --help
````

### Upgrade installed skills

Upgrade installed skills to the latest catalog version.

````powershell
loom upgrade
````

Upgrade a specific target:

````powershell
loom upgrade --target all
````

Help:

````powershell
loom upgrade --help
````

### Add a custom skill

Scaffold a new custom skill in the repository.

````powershell
loom add <skill-name>
````

Example:

````powershell
loom add my-custom-skill
````

Specify a target:

````powershell
loom add my-custom-skill --target copilot
````

Help:

````powershell
loom add --help
````

### Validate installed skills

Validate installed skills against the supported spec.

````powershell
loom doctor
````

Help:

````powershell
loom doctor --help
````

### Show version

````powershell
loom version
````

Help:

````powershell
loom version --help
````

## CLI Help

### Top-level help

````powershell
loom --help
````

### Command help

````powershell
loom list --help
loom install --help
loom remove --help
loom upgrade --help
loom add --help
loom doctor --help
loom version --help
````

## Common Examples

List skills:

````powershell
loom list
````

Install a skill:

````powershell
loom install testing
````

Install multiple skills:

````powershell
loom install testing docs ci
````

Install all skills:

````powershell
loom install --all
````

Install all skills for all targets, overwriting existing ones:

````powershell
loom install --all --target all --force
````

Remove a skill:

````powershell
loom remove testing
````

Upgrade installed skills:

````powershell
loom upgrade
````

Validate installed skills:

````powershell
loom doctor
````

## Notes

- Run Loom inside the repository you want to update.
- Use `loom --help` or `<command> --help` to see the latest supported options.
- The `install` command installs catalog skills into a repository.
- The `add` command scaffolds a new custom skill.

## Docs

- [Token Observability Skill Guide](docs/skills/token-obserabilty.md)

## License

Loom is open source, released under the [MIT License](LICENSE). Any use, distribution, or derivative work must credit Loom and reference its repository URL: https://github.com/for-shariq/loom-cli
