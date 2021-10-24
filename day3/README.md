### In harib00i, use i386-elf-gcc instead of cc1

```bash
brew tap nativeos/i386-elf-toolchain
brew install i386-elf-binutils 
brew install i386-elf-gcc
```



使用链接脚本 hrb.ld 编译 bootpack.c 以创建 bootpack.hrb

```bash
i386-elf-gcc -march=i486 -m32 -nostdlib -T hrb.ld bootpack.c -o bootpack.hrb
```

