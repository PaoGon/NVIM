call plug#begin('~/.config/nvim/autoload/plugged')

"Gruvbox baby
Plug 'morhetz/gruvbox'
"Plug 'gruvbox-community/gruvbox'

"LSP plugins
Plug 'neovim/nvim-lspconfig'
"Plug 'glepnir/lspsaga.nvim'
Plug 'tami5/lspsaga.nvim' 
Plug 'ray-x/lsp_signature.nvim'
Plug 'onsails/lspkind-nvim'

"Plug 'HallerPatrick/py_lsp.nvim' "for python virtual env.

Plug 'hrsh7th/nvim-cmp' " Autocompletion plugin
Plug 'hrsh7th/cmp-nvim-lsp' " LSP source for nvim-cmp
Plug 'hrsh7th/cmp-buffer' "buffer completion source
Plug 'saadparwaiz1/cmp_luasnip' " Snippets source for nvim-cmp
Plug 'hrsh7th/cmp-nvim-lua'
Plug 'hrsh7th/cmp-path' 
Plug 'f3fora/cmp-spell'
Plug 'hrsh7th/cmp-calc'
"Plug 'L3MON4D3/LuaSnip' " Snippets plugin
Plug 'L3MON4D3/Luasnip', { 'branch': 'ls_snippets_preserve' }

" language servers
Plug 'mfussenegger/nvim-jdtls'

"neovim lualine
Plug 'hoob3rt/lualine.nvim'

"telescope plugins
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'nvim-telescope/telescope-fzy-native.nvim'

"GIT Functionality
Plug 'lewis6991/gitsigns.nvim'
Plug 'tpope/vim-fugitive'


"I only use this for syntax highliting xD
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  
Plug 'p00f/nvim-ts-rainbow'

" utilities
Plug 'mattn/emmet-vim'
Plug 'glepnir/dashboard-nvim'
Plug 'jiangmiao/auto-pairs'
Plug 'preservim/nerdcommenter'
Plug 'tjdevries/colorbuddy.nvim'
Plug 'kyazdani42/nvim-tree.lua'

call plug#end()
