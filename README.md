# ReCoreOS
30DayMakeOS: Support Apple Silicon (I guess) 

### dependency

```bash
# emulator
brew install qemu
# replace nask
brew install nasm
# mtools to create .img
brew install mtools
# replace cc1
brew tap nativeos/i386-elf-toolchain
brew install i386-elf-binutils i386-elf-gcc
```

### install 32bit gcc tools on Apple Silicon

- try? check/uncheck the rosetta checkbox of terminal if you run into issues

- clone x86_64 brew to /usr/local

  ```bash
  arch -x86_64 zsh
  cd /usr/local && mkdir homebrew
  curl -L https://github.com/Homebrew/brew/tarball/master | tar xz --strip 1 -C homebrew
  ```

- use x86_64 brew to install

  ```bash
  arch -x86_64 /usr/local/homebrew/bin/brew install <sometool>
  ```

- maybe u need to checkout master to or brew update

  ```bash
  git -C $(/usr/local/homebrew/bin/brew --repository homebrew/core) checkout master
  arch -x86_64 /usr/local/homebrew/bin/brew update
  ```

