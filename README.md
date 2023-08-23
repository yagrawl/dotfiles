# dotfiles

A collection of dotfiles for customizing Vim, Tmux, and Git on macOS.

## Introduction

![Terminal Screenshot](https://i.imgur.com/YQUIZL3.png)

As you might notice, it's not the prettiest thing (yet!). Achieving the perfect development environment is an ever-evolving journey, especially when dealing with highly customizable tools like Neovim and Tmux. This README primarily serves as a manual for my personal use and as a reference for those familiar with the Vim + Tmux setup. Please note that this setup guide is tailored for macOS.

## Components

This configuration brings together various components to craft an IDE-like experience within the terminal. Core elements include:

- Terminal: [iTerm2](https://iterm2.com/) - a replacement for macOS's default terminal
- Shell: [Zsh](https://zsh.sourceforge.io/)
- Session Management: [Tmux](https://github.com/tmux/tmux/wiki) - for creating multiple windows, split panes, and managing sessions
- Text Editor: [Neovim](https://neovim.io/) - a more advanced version of Vim

### Dependencies

Each component relies on specific dependencies. I utilize [Oh My Zsh!](https://ohmyz.sh/) for shell configuration, [tpm](https://github.com/tmux-plugins/tpm) to manage Tmux plugins, [packer](https://github.com/wbthomason/packer.nvim) for Neovim plugins, and additional plugins to enhance IDE features.

## Installation

Before diving into the setup, ensure that you have [Homebrew](https://brew.sh/) set up on your system.

Install iTerm2:
```
brew install --cask iterm2

```

Install zsh
```
brew install zsh
```

Zsh dependencies
```
# Install Oh My Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install Powerlevel10k for Oh My Zsh
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/.oh-my-zsh/themes/powerlevel10k
```

Install tmux and plugin manager
```
brew install tmux
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

Install neovim with packer
```
brew install neovim
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

## Setup

Clone this repository in the `~` directory. The setup script currently assumes that as the location:
```
cd ~ && git clone git@github.com:yagrawl/dotfiles.git && cd dotfiles
```

Run the setup script with `./setup.sh`. This will establish symbolic links between the repository and where applications anticipate the configuration files. For instance, the Tmux setup, stored in `~/dotfiles/.tmux.conf`, links to `~/.tmux.conf`.

**Note**: Although the included `.vimrc` is part of these dotfiles, feel free to skip the symlink creation since Neovim is preferred.

## Fonts

For fonts, find one you like at [Nerd Fonts](https://www.nerdfonts.com/font-downloads). I keep switching between [MesloLG](https://www.programmingfonts.org/#meslo) and [Inconsolata](https://www.programmingfonts.org/#inconsolata)
