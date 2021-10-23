### dependency

```bash
brew install qemu
brew install nasm
```

### run .img by qemu

```bash
qemu-system-i386 -hdd xxx.img
```

### use nasm instead of nas

```bash
nasm helloos.nas -o helloos2.img
```

