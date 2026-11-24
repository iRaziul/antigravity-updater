# antigravity-updater

Lightweight, zero-dependency Bash updater for Google Antigravity and Antigravity IDE on Linux.

It fetches official release archives directly from [antigravity.google/download](https://antigravity.google/download) and updates your installations in-place.

## Features

- **Zero extra dependencies**: Pure Bash using standard POSIX utilities (`curl`, `tar`, `grep`, `sed`).
- **Multi-architecture**: Automatically detects `x86_64` and `aarch64` / `arm64`.
- **Targeted updates**: Update both applications together or selectively (`--ide` / `--app`).
- **Non-disruptive**: Safely unlinks and replaces binaries while maintaining desktop and menu integrations.

## Quick Installation

Run the one-line installer:

```bash
curl -fsSL https://raw.githubusercontent.com/iRaziul/antigravity-updater/main/install.sh | bash
```

Alternatively, copy the `antigravity-update` script directly into your `~/.local/bin/` directory and ensure it has executable permissions (`chmod +x`).

## Usage

```bash
# Check and update both applications
antigravity-update

# Check versions without downloading
antigravity-update --check

# Update without confirmation prompt
antigravity-update -y

# Update only Antigravity IDE
antigravity-update --ide

# Update only Antigravity desktop application
antigravity-update --app

# Force reinstall or update
antigravity-update --force
```

## System Requirements

- Linux operating system (`x86_64` or `arm64`)
- Standard command-line tools: `bash`, `curl`, `tar`
- User write access to installation paths (or `sudo` if `/opt/antigravity-ide/Antigravity-IDE` is root-restricted)

## License

MIT License. See [LICENSE](LICENSE) for details.
