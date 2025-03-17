# Minimal Nix + Direnv Setup

This repository demonstrates a minimal setup for isolated development environments using [Nix](https://nixos.org/) and [direnv](https://direnv.net/). Tested on Ubuntu but should work on other OSes too.

## Overview

The repository contains a simple setup with:
- [`flake.nix`](./flake.nix) - Contains both the Nix configuration and package list
- [`.envrc`](./.envrc) - Simple direnv configuration to use the flake

## Usage

### Set up

These are the steps you need to get this set up on a machine the first time.
Once you've done them once you only need to create `.envrc` and `flake.nix` in a project to create an isolated development environment.

- Install [Nix](https://nixos.org/download.html)
  - `sudo apt install nix-bin`
  - `sudo usermod -aG nix-users USERNAME`
- Install [direnv](https://direnv.net/docs/installation.html)
  - Ensure you have a `~/bin`.
  - `curl -sfL https://direnv.net/install.sh | bash`
  - Add direnv to `~/.bashrc`: `eval "$(direnv hook bash -)"`

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
