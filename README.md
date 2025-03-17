# Minimal Nix and Direnv Setup

This repository demonstrates a minimal setup for isolated development environments using [Nix](https://nixos.org/) and [direnv](https://direnv.net/).

## Overview

The repository contains a simple setup with:
- `flake.nix` - Contains both the Nix configuration and package list
- `.envrc` - Simple direnv configuration to use the flake

## Usage

### Prerequisites

- Install [Nix](https://nixos.org/download.html)
- Install [direnv](https://direnv.net/docs/installation.html)
- Make sure direnv is hooked into your shell

### Getting Started

1. Clone this repository
2. Run `direnv allow` to enable the environment

The environment will automatically activate whenever you enter the directory.

### Customizing

- To add or remove packages, edit the `packages` list in `flake.nix`
- You can find available packages by searching on [https://search.nixos.org/packages](https://search.nixos.org/packages)

## Benefits

- Isolated development environments
- Reproducible setups across machines
- No global installation of development tools required
- Automatic environment activation with direnv
