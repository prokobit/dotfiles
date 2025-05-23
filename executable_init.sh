#! /bin/bash
dnf copr enable atim/lazygit -y
dnf install vim nvim zsh eza bat fzf lazygit tmux pipx uv libheif-freeworld

sh -s $(which zsh)
zsh <(curl -s https://raw.githubusercontent.com/zap-zsh/zap/master/install.zsh) --branch release-v1
curl -sS https://starship.rs/install.sh | sh

sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply git@github.com:prokobit/dotfiles.git
curl https://mise.run | sh
mise install

mkdir -p "$(bat --config-dir)/themes"
wget -P "$(bat --config-dir)/themes" https://github.com/catppuccin/bat/raw/main/themes/Catppuccin%20Mocha.tmTheme
bat cache --build

