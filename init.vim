 "██          ██   ██               ██            
"░░          ░░   ░██              ░░             
 "██ ███████  ██ ██████    ██    ██ ██ ██████████ 
"░██░░██░░░██░██░░░██░    ░██   ░██░██░░██░░██░░██
"░██ ░██  ░██░██  ░██     ░░██ ░██ ░██ ░██ ░██ ░██
"░██ ░██  ░██░██  ░██   ██ ░░████  ░██ ░██ ░██ ░██
"░██ ███  ░██░██  ░░██ ░██  ░░██   ░██ ███ ░██ ░██
"░░ ░░░   ░░ ░░    ░░  ░░    ░░    ░░ ░░░  ░░  ░░ 
"
source $HOME/.config/nvim/vim-plug/plugins.vim
source $HOME/.config/nvim/general/settings.vim
source $HOME/.config/nvim/keys/mappings.vim
source $HOME/.config/nvim/plug-config/treesitter.vim
source $HOME/.config/nvim/plug-config/lsp-config.vim
source $HOME/.config/nvim/plug-config/nvim-tree.vim
"source $HOME/.config/nvim/plug-config/lspsaga-conf.vim

luafile $HOME/.config/nvim/lua/plugs/tele-conf.lua
source $HOME/.config/nvim/plug-config/tele-config.vim
source $HOME/.config/nvim/themes/themes.vim
source $HOME/.config/nvim/plug-config/dashboard-nvim.vim

"lsp lua
luafile $HOME/.config/nvim/lua/lsp/lua-ls.lua
luafile $HOME/.config/nvim/lua/lsp/html-ls.lua
luafile $HOME/.config/nvim/lua/lsp/css-ls.lua
luafile $HOME/.config/nvim/lua/plugs/cmp-config.lua
luafile $HOME/.config/nvim/lua/plugs/saga-conf.lua
"luafile $HOME/.config/nvim/lua/lsp/ccls.lua
luafile $HOME/.config/nvim/lua/lsp/clangd-ls.lua
luafile $HOME/.config/nvim/lua/lsp/python-ls.lua
luafile $HOME/.config/nvim/lua/lsp/ts-lsp.lua
luafile $HOME/.config/nvim/lua/lsp/bash-lsp.lua
luafile $HOME/.config/nvim/lua/lsp/arduino-ls.lua
luafile $HOME/.config/nvim/lua/lsp/phpactor-ls.lua
luafile $HOME/.config/nvim/lua/lsp/dart-ls.lua


"utilities in lua
luafile $HOME/.config/nvim/lua/plugs/nvim-tree.lua
luafile $HOME/.config/nvim/lua/plugs/signature-config.lua
luafile $HOME/.config/nvim/lua/plugs/lualine-conf.lua
luafile $HOME/.config/nvim/lua/plugs/icons.lua
luafile $HOME/.config/nvim/lua/plugs/gitsigns.lua

luafile $HOME/.config/nvim/lua/plugs/luasnip.lua
"luafile $HOME/.config/nvim/lua/plugs/snipss.lua
luafile $HOME/.config/nvim/lua/plugs/py_snips.lua
"luafile $HOME/.config/nvim/lua/plugs/xml_snips.lua
"luafile $HOME/.config/nvim/lua/plugs/java_snips.lua

source $HOME/.config/nvim/plug-config/emmet-conf.vim
