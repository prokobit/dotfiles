```bash init.sh
#! /bin/bash
dnf install vim zsh
sh -s $(which zsh)
zsh <(curl -s https://raw.githubusercontent.com/zap-zsh/zap/master/install.zsh) --branch release-v1
curl -sS https://starship.rs/install.sh | sh
sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply prokobit
```
