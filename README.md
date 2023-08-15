# dotfiles

A collection of dotfiles for customizing vim, tmux, and git for MacOS.

## Shell

Install Oh-My-Zsh:
```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

Add powerlevel10k as a theme to Oh-My-Zsh:
```
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/powerlevel10k
```
