# libopencm3-dev-image

A containerized **ARM Cortex-M bare-metal / RTOS development environment** based on Ubuntu 24.04. It ships the cross toolchain, debugger, and common utilities needed to build and flash `libopencm3` projects out of the box — suitable for local containerized workflows or remote development with VS Code / Neovim.

- Base image: `ubuntu:24.04`
- License: GPL-3.0 (see `LICENSE`)
- Author: melon

## Features

- **Cross-compilation**: `gcc-arm-none-eabi`, `binutils-arm-none-eabi`, `libnewlib-arm-none-eabi`
- **Debugging / flashing**: `gdb-multiarch`, `openocd` (ST-Link / J-Link / CMSIS-DAP, etc.)
- **Build systems**: `make`, `cmake`, `ninja-build`, `pkg-config`, `bear` (generates `compile_commands.json`)
- **Editor / LSP**: `clangd`, `clang-format`
- **Everyday tools**: `git`, `curl`, `python3`, `ripgrep`, `fd` (`fdfind` is symlinked to `fd`)
- Working directory is `/workspace`; the container drops into `bash` by default

## Quick Start

### 1. Build the image

Works with Podman or Docker:

```bash
# Podman (recommended, rootless)
podman build -t libopencm3-dev -f Containerfile .

# Docker
docker build -t libopencm3-dev -f Containerfile .
