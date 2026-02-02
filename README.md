# rust-os

A minimal bare-metal operating system in Rust

> Made for learning and experimentation with OS development, bootloaders, and bare-metal Rust.

## Overview

This project contains:

- Kernel: A minimal Rust kernel

The goal is to provide a simple environment for experimenting with low-level OS concepts.

## Prerequisites

### Rust Toolchain

You'll need Rust nightly and a custom target for bare-metal

```bash
rustup override set nightly
```

### QEMU

Install QEMU for testing

#### Arch Linux

```bash
sudo pacman -S qemu-full
```

#### Debian/Ubuntu

```bash
sudo apt update
sudo apt install qemu-system-x86 qemu-utils ovmf
```

#### Fedora
```bash
sudo dnf install qemu-system-x86 qemu-img gcc
```

## Usage

### Clone

```bash
git clone https://github.com/spxnso/rust-os.git
cd rust-os
```

### Build + run (recommended)

```bash
chmod  +x ./scripts/run.sh
./scripts/run.sh
```

### Build only

```bash
chmod +x ./scripts/build.sh
./scripts/build.sh
```

The bootable image is generated at:

```bash
target/x86_64-unknown-none/debug/bootimage-bios.bin
```

## License

This project is licensed under the MIT License. See [LICENSE](./LICENSE) for details.

## Acknowledgements

- [Phil-opp: Writing an OS in Rust](https://os.phil-opp.com/)
- Rust community for excellent no_std and bare-metal resources
