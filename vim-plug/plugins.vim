call plug#begin('~/.config/nvim/autoload/plugged')

"Gruvbox baby
Plug 'morhetz/gruvbox'

"LSP plugins
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-compe'
Plug 'glepnir/lspsaga.nvim'
Plug 'ray-x/lsp_signature.nvim'

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

"I didnt even use this HAHAH
Plug 'jiangmiao/auto-pairs'
Plug 'preservim/nerdcommenter'

call plug#end()

