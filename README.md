# Gofra.vim
[Gofra](https://github.com/kirillzhosul/gofra) syntax highlight for **vim** and **neovim**.

This plugin is in development stage now.

## Installation
Following instructions just copies `syntax` and `ftdetect` folders from this repo to vim or neovim config folder.
You can do it manually. You might also want to delete the repository folder after installation.

### Linux && MacOS 

For vim:
```sh
git clone https://github.com/stepanzubkov/gofra.vim.git
cd gofra.vim
mkdir -v ~/.vim
cp -rv syntax ftdetect ~/.vim
```

For neovim:
```sh
git clone https://github.com/stepanzubkov/gofra.vim.git
cd gofra.vim
mkdir -vp ~/.config/nvim
cp -rv syntax ftdetect ~/.config/nvim
```

### Windows

For vim:
```cmd
git clone https://github.com/stepanzubkov/gofra.vim.git
cd gofra.vim
mkdir "%USERPROFILE%\vimfiles"
xcopy /E /I /Y syntax "%USERPROFILE%\vimfiles\syntax"
xcopy /E /I /Y ftdetect "%USERPROFILE%\vimfiles\ftdetect"
```

For neovim:
```cmd
git clone https://github.com/stepanzubkov/gofra.vim.git
cd gofra.vim
mkdir "%LOCALAPPDATA%\nvim"
xcopy /E /I /Y syntax "%LOCALAPPDATA%\nvim\syntax"
xcopy /E /I /Y ftdetect "%LOCALAPPDATA%\nvim\ftdetect"
```

## License
Copyright (C) 2025 Stepan Zubkov

Licensed under *Apache 2.0 License* (see `LICENSE` file)
