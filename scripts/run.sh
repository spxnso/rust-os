#!/bin/bash

set -e

BOOTIMAGE="target/x86_64-unknown-none/debug/bootimage-bios.bin"

if [ ! -f "$BOOTIMAGE" ]; then
    echo "Bootimage not found, building..."
    chmod +x scripts/build.sh
    scripts/build.sh
fi

echo "Starting QEMU..."
qemu-system-x86_64 -drive format=raw,file="$BOOTIMAGE" -m 512M -cpu qemu64 -smp 2 -serial stdio