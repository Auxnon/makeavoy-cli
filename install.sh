if [[ "$OSTYPE" == "linux-gnu"* ]]; then
        wget https://github.com/neovim/neovim/releases/download/nightly/nvim.appimage
        chmod u+x nvim.appimage
        mv nvim.appimage /usr/bin/nvim
        sudo apt install tmux
        git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
elif [[ "$OSTYPE" == "darwin"* ]]; then
else
git clone --depth 1 https://github.com/AstroNvim/AstroNvim ~/.config/nvim
cp nvim/user.lua ~/.config/nvim/lua/user/init.lua
cp tmux/tmux.conf ~/.tmux.conf
