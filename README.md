# dotfiles
zshrc, vimrc, bashrc, sublime text settings, vscode settings

## ZSH Setup:

Follow README.md instructions on github for each of these extensions
- First, install oh-my-zsh https://github.com/ohmyzsh/ohmyzsh.git
- Then install zsh-autosuggestions, zsh-syntax-highlighting, zsh-completions
  - git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:=~/.oh-my-zsh/custom}/plugins/zsh-completions
  - git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions
  - git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting

- Append to plugins in .zshrc
  -  plugins=(git zsh-autosuggestions zsh-syntax-highlighting zsh-completions)

## VIM setup:

https://github.com/amix/vimrc

