# Homebrew Tap for Yeet

## Installation

```bash
brew install j-shelfwood/yeet/yeet
```

> **Note:** Use the fully qualified name `j-shelfwood/yeet/yeet` to avoid conflict with the [yeet package in homebrew-core](https://formulae.brew.sh/formula/yeet) (a JavaScript build tool by TecharoHQ).

## What is Yeet?

Yeet is a blazingly fast CLI tool that packages your codebase for AI consumption in seconds.

- **Smart truncation** - Token-aware content management
- **Git-aware** - Automatically respects .gitignore
- **Zero-config** - Works out of the box with sensible defaults
- **Configurable** - Hierarchical .yeetconfig support (TOML)

## Quick Start

```bash
# Package current directory
yeet

# Package specific files/directories
yeet src/ README.md

# Include git history
yeet --history-mode summary

# Just uncommitted changes
yeet --diff

# JSON output for tooling
yeet --json
```

## Platform Support

Currently, prebuilt binaries are available for:
- **macOS Apple Silicon (ARM64)**

Intel Mac and Linux users can [build from source](https://github.com/j-shelfwood/yeet#building-from-source).

## Documentation

- [Main Repository](https://github.com/j-shelfwood/yeet)
- [Configuration Guide](https://github.com/j-shelfwood/yeet/blob/main/CONFIGURATION.md)

## License

MIT
