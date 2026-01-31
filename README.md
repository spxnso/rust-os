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

Install QEMU and ensure `qemu-system-x86_64` is on your `PATH`.

## Usage

### Clone

```bash
git clone https://github.com/spxnso/rust-os.git
cd rust-os
```

### Build + run (recommended)

```bash
./scripts/run.sh
```

### Build only

```bash
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
