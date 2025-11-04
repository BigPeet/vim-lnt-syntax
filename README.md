# vim-lnt-syntax

A syntax plugin for PC-lint Plus configuration files (lnt)

## Features

* Detect filetype for ".lnt" files
* Add syntax highlighting

## Installation

To install, you can use Vim's built-in package management (see `:help packages`).
Assuming your Vim directory is `~/.vim`, simply follow these steps:

```bash
mkdir -p ~/.vim/pack/bigpeet/start
cd ~/.vim/pack/bigpeet/start
git clone https://github.com/BigPeet/vim-lnt-syntax
vim -u NONE -c "helptags vim-lnt-syntax/doc" -c q # installs the helptags
```

Alternatively, use your preferred 3rd-party plugin manager, e.g. [pathogen](https://github.com/tpope/vim-pathogen) or [Vundle](https://github.com/VundleVim/Vundle.vim).
