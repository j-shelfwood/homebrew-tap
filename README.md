# Homebrew Tap for Yeet

## Installation

```bash
brew tap j-shelfwood/yeet
brew install yeet
```

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

## Documentation

- [Main Repository](https://github.com/j-shelfwood/yeet)
- [Configuration Guide](https://github.com/j-shelfwood/yeet/blob/main/CONFIGURATION.md)

## License

MIT
