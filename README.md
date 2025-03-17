# Minimal Nix and Direnv Setup

This repository demonstrates a minimal setup for isolated development environments using [Nix](https://nixos.org/) and [direnv](https://direnv.net/).

## Overview

The repository contains two variants of the same setup:

1. **Single-file variant** (root directory)
   - `flake.nix` - Contains both the Nix configuration and package list
   - `.envrc` - Simple direnv configuration to use the flake

2. **Two-file variant** (`twofiles/` directory)
   - `flake.nix` - Contains the Nix configuration
   - `packages.nix` - Separate file for the package list
   - `.envrc` - Simple direnv configuration to use the flake

## Usage

### Prerequisites

- Install [Nix](https://nixos.org/download.html)
- Install [direnv](https://direnv.net/docs/installation.html)
- Make sure direnv is hooked into your shell

### Getting Started

1. Clone this repository
2. Navigate to either the root directory or the `twofiles/` directory
3. Run `direnv allow` to enable the environment

The environment will automatically activate whenever you enter the directory.

### Customizing

- To add or remove packages in the single-file variant, edit the `packages` list in `flake.nix`
- To add or remove packages in the two-file variant, edit `packages.nix`
- You can find available packages by searching on [https://search.nixos.org/packages](https://search.nixos.org/packages)

## Benefits

- Isolated development environments
- Reproducible setups across machines
- No global installation of development tools required
- Automatic environment activation with direnv
