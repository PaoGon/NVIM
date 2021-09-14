call plug#begin('~/.config/nvim/autoload/plugged')

"Gruvbox baby
Plug 'morhetz/gruvbox'

"LSP plugins
Plug 'neovim/nvim-lspconfig'
Plug 'glepnir/lspsaga.nvim'
Plug 'ray-x/lsp_signature.nvim'
Plug 'mfussenegger/nvim-jdtls'
Plug 'onsails/lspkind-nvim'

Plug 'hrsh7th/nvim-cmp' " Autocompletion plugin
Plug 'hrsh7th/cmp-nvim-lsp' " LSP source for nvim-cmp
Plug 'hrsh7th/cmp-buffer' "buffer completion source
Plug 'saadparwaiz1/cmp_luasnip' " Snippets source for nvim-cmp
Plug 'hrsh7th/cmp-nvim-lua'
Plug 'hrsh7th/cmp-path' 
Plug 'f3fora/cmp-spell'
Plug 'hrsh7th/cmp-calc'
Plug 'L3MON4D3/LuaSnip' " Snippets plugin

"telescope plugins
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'kyazdani42/nvim-web-devicons'

"GIT Functionality
Plug 'lewis6991/gitsigns.nvim'

"neovim powerline plugins
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

"I only use this for syntax highliting xD
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  

" for auto pairs and for easier commenting
Plug 'jiangmiao/auto-pairs'
Plug 'preservim/nerdcommenter'

call plug#end()
