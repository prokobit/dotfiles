#! /bin/bash
dnf install vim nvim zsh eza bat fzf tmux pipx uv libheif-freeworld

sh -s $(which zsh)
zsh <(curl -s https://raw.githubusercontent.com/zap-zsh/zap/master/install.zsh) --branch release-v1

curl https://mise.run | sh
mise install

chezmoi init git@github.com:prokobit/dotfiles.git

mkdir -p "$(bat --config-dir)/themes"
wget -P "$(bat --config-dir)/themes" https://github.com/catppuccin/bat/raw/main/themes/Catppuccin%20Mocha.tmTheme
bat cache --build

