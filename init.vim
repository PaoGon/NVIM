source $HOME/.config/nvim/vim-plug/plugins.vim
source $HOME/.config/nvim/general/settings.vim
source $HOME/.config/nvim/keys/mappings.vim
source $HOME/.config/nvim/plug-config/treesitter.vim
source $HOME/.config/nvim/plug-config/lsp-config.vim
source $HOME/.config/nvim/plug-config/tele-config.vim
source $HOME/.config/nvim/themes/themes.vim

"lsp lua
luafile $HOME/.config/nvim/lua/plugs/compe-config.lua
luafile $HOME/.config/nvim/lua/lsp/python-ls.lua
luafile $HOME/.config/nvim/lua/lsp/html-ls.lua
luafile $HOME/.config/nvim/lua/lsp/css-ls.lua
luafile $HOME/.config/nvim/lua/lsp/ts-lsp.lua
luafile $HOME/.config/nvim/lua/lsp/bash-lsp.lua

"utilities in lua
luafile $HOME/.config/nvim/lua/plugs/icons.lua
luafile $HOME/.config/nvim/lua/plugs/gitsigns.lua

source $HOME/.config/nvim/plug-config/lspsaga-conf.vim

augroup lsp
    au!
    au FileType java lua require'jdtls_config'.setup()
augroup end
