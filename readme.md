# os

## Compile bootsector

```bash
nasm -f bin boot_sect.asm -o boot_sect.bin
```

## Run boot

```bash
qemu-system-x86_64 boot_sect.bin --nographic
