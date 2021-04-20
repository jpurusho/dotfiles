# dotfiles
zshrc, vimrc, bashrc, sublime text settings, vscode settings

## Markdown Syntax
https://www.markdownguide.org/cheat-sheet/

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

## Mac OS Setup
https://sourabhbajaj.com/mac-setup/

## Adding SSH keys
https://docs.github.com/en/github/authenticating-to-github/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent#adding-your-ssh-key-to-the-ssh-agent

## Enable SSH Access to github
* Generate ssh keys:
  ssh-keygen -t ed25519 -C "email-id"
* Edit ~/.ssh/config (create if missing)
* Add the following entry:
  ```
  IdentityFile ~/.ssh/id_ed25519
  Host github.com
  Hostname ssh.github.com
  Port 443
  ```
* Verify access:
  ```
  ssh -T git@github.com
  ```
