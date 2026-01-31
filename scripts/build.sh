#!/bin/bash

set -e 

echo "Checking rust toolchain..."

rustup override set nightly

rustup component add llvm-tools-preview
cargo install bootimage --force

echo "Building bootable image..."

cargo bootimage --package bios

echo "Build complete!"