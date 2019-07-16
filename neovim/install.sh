# File              : install.sh
# Author            : Yue Peng <yuepaang@gmail.com>
# Date              : 2019-07-12 11:14:08
# Last Modified Date: 2019-07-12 11:14:08
# Last Modified By  : Yue Peng <yuepaang@gmail.com>

ln -s ~/dotfiles/neovim ~/.config/nvim

# exuberant-ctags
# sudo apt install exuberant-ctags

# npm language server
# npm i -g bash-language-server
# npm install -g dockerfile-language-server-nodejs
npm install -g typescript typescript-language-server
# npm install --global vscode-html-languageserver-bin
# npm install -g json-language-server
# npm install -g yaml-language-server

# Rust
rustup update
rustup component add rls rust-analysis rust-src

# swap ctrl and caps
setxkbmap -option ctrl:swapcaps
