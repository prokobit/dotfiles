#! /bin/bash
dnf copr enable atim/lazygit -y
dnf install vim nvim zsh eza bat fzf lazygit tmux libheif-freeworld https://github.com/derailed/k9s/releases/download/v0.40.10/k9s_linux_amd64.rpm
sh -s $(which zsh)
zsh <(curl -s https://raw.githubusercontent.com/zap-zsh/zap/master/install.zsh) --branch release-v1
curl -sS https://starship.rs/install.sh | sh

sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply git@github.com:prokobit/dotfiles.git

mkdir -p "$(bat --config-dir)/themes"
wget -P "$(bat --config-dir)/themes" https://github.com/catppuccin/bat/raw/main/themes/Catppuccin%20Mocha.tmTheme
bat cache --build
curl https://mise.run | sh
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

mkdir -p "$HOME/workspace"
#cd workspace $$ git clone git@github.com:sharkdp/vivid.git
#cd vivid cargo install vivid
